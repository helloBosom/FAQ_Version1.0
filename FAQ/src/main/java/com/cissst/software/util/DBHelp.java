package com.cissst.software.util;

import org.apache.commons.dbcp.BasicDataSource;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

/**
 * 连接数据库的工具类
 *
 * @author Administrator
 */
public class DBHelp {

    private static Properties props = new Properties();

    private static BasicDataSource basicDataSource = new BasicDataSource();

    static {
        // 类加载器
        ClassLoader loader = TestUtil.class.getClassLoader();
        InputStream ins = loader.getResourceAsStream("dbconfig.properties");
        try {
            props.load(ins);
        } catch (IOException e) {
            e.printStackTrace();
        }
        basicDataSource.setDriverClassName(props.getProperty("driver"));
        basicDataSource.setUrl(props.getProperty("url"));
        basicDataSource.setUsername(props.getProperty("username"));
        basicDataSource.setPassword(props.getProperty("pwd"));
        basicDataSource.setMaxActive(Integer.parseInt(props.getProperty("maxactive")));
        basicDataSource.setMaxWait(Integer.parseInt(props.getProperty("maxwait")));
    }

    /**
     * 获取数据库的连接对象
     *
     * @return
     */
    public static Connection getConnection() {
        Connection connection = null;
        try {
            connection = basicDataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

    @Test
    public void testMethod1() {
        String sql = "update tbl_user set userpwd='1001' where userid='1002'";
        boolean flag = executeSingleSql(sql);
        System.out.println(flag);
    }

    /**
     * 执行单个表的sql语句的操作
     *
     * @param sql: eg:insert into dept values (50,'soft','xian'); update dept
     *             set... delete from dept ...
     * @return
     */
    public static boolean executeSingleSql(String sql) {
        boolean flag = false;
        Connection conn = null;
        Statement st = null;
        try {
            conn = getConnection();
            conn.setAutoCommit(false);
            st = conn.createStatement();
            int count = st.executeUpdate(sql);
            if (count > 0)
                flag = true;
            conn.commit();
        } catch (SQLException e) {
            try {
                conn.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            e.printStackTrace();
        } finally {
            closeAll(null, st, conn);
        }
        return flag;
    }

    @Test
    public void testMethod2() {
        List<String> sqls = new ArrayList<String>();
        // 1.添加员工记录
        String sql = "insert into dept(deptno,dname,loc) values (50,'software','xian')";
        sqls.add(sql);
        // 2.添加部门记录
        sql = "insert into emp(empno,ename) values ('1002','admin')";
        sqls.add(sql);
        executeBatchSql(sqls.toArray());
        System.out.println("over");
    }

    /**
     * 批量执行sql语句
     *
     * @param sqls
     */
    public static void executeBatchSql(Object... sqls) {
        Connection connection = null;
        Statement statement = null;
        try {
            connection = getConnection();
            connection.setAutoCommit(false);
            statement = connection.createStatement();
            if (sqls != null && sqls.length > 0) {
                for (Object object : sqls) {
                    statement.addBatch(object.toString());
                }
                statement.executeBatch();
            }
            connection.commit();
        } catch (SQLException e) {
            try {
                connection.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            e.printStackTrace();
        } finally {
            closeAll(null, statement, connection);
        }
    }

    @Test
    public void testMethod3() {
        List parameters = new ArrayList();
        String sql = "insert into dept(deptno,dname,loc) values (?,?,?)";
        parameters.add(60);
        parameters.add("work");
        parameters.add("beijing");

        boolean flag = executeSingleSql(sql, parameters.toArray());
        System.out.println(flag);
    }

    /**
     * 用PreparedStatement实现对单表的添加，修改，删除操作
     *
     * @param sql:       eg:insert into dept(deptno,dname,loc) values (?,?,?)
     * @param parameters
     * @return
     */
    public static boolean executeSingleSql(String sql, Object... parameters) {
        boolean flag = false;
        Connection connection = null;
        PreparedStatement ps = null;

        try {
            connection = getConnection();
            ps = connection.prepareStatement(sql);
            // 设置占位符对应的实参值
            if (parameters != null && parameters.length > 0) {
                for (int i = 0; i < parameters.length; i++) {
                    ps.setObject(i + 1, parameters[i]);
                }
            }
            int count = ps.executeUpdate();
            if (count > 0)
                flag = true;

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            closeAll(null, ps, connection);
        }

        return flag;
    }

    /**
     * 用PreparedStatement实现批处理操作
     *
     * @param sql
     * @param parameters
     */
    public static void executeBatchSql(String sql, List<List> parameters) {
        Connection connection = null;
        PreparedStatement ps = null;

        try {
            connection = getConnection();
            connection.setAutoCommit(false);
            ps = connection.prepareStatement(sql);
            // 设置占位符对应的实参值
            if (parameters != null && parameters.size() > 0) {
                for (int i = 0; i < parameters.size(); i++) {
                    List parameter = parameters.get(i);
                    for (int j = 0; j < parameter.size(); j++) {
                        Object object = parameter.get(j);
                        ps.setObject(j + 1, object);
                    }
                    ps.addBatch();
                }
                ps.executeBatch();
            }
            connection.commit();
        } catch (SQLException e) {
            try {
                connection.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            e.printStackTrace();
        } finally {
            closeAll(null, ps, connection);
        }
    }

    /**
     * 返回单个值 sql:select count(*) from dept;
     *
     * @return
     */
    public static Object executeSqlReturnValue(String sql) {
        Object object = null;
        Connection connection = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            connection = getConnection();
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                object = rs.getObject(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeAll(rs, ps, connection);
        }
        return object;
    }

    @Test
    public void testMethod5() {
        String sql = "select empno,ename,d.deptno,d.dname from dept d,emp e " + " where d.deptno = e.deptno";
        List<List> rows = queryRowsMultiTables(sql);
        for (int i = 0; i < rows.size(); i++) {
            List row = rows.get(i);
            for (int j = 0; j < row.size(); j++) {
                Object obj = row.get(j);
                System.out.print(obj.toString() + "  ");
            }
            System.out.println();
        }
    }

    /**
     * 实现多表之间的联合查询
     *
     * @param sql eg:select empno,ename,d.deptno,d.dname from dept d,emp e where
     *            d.deptno = e.deptno
     * @return
     */
    public static List<List> queryRowsMultiTables(String sql) {
        List<List> resultRows = new ArrayList<List>();
        Connection connection = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            connection = getConnection();
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            ResultSetMetaData metaData = rs.getMetaData();
            List row = null;
            while (rs.next()) {
                row = new ArrayList();
                for (int i = 0; i < metaData.getColumnCount(); i++) {
                    row.add(rs.getObject(metaData.getColumnName(i + 1)));
                }
                resultRows.add(row);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeAll(rs, ps, connection);
        }

        return resultRows;
    }

    public static void closeAll(ResultSet rs, Statement st, Connection conn) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (st != null) {
            try {
                st.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        try {
            if (!conn.isClosed()) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
