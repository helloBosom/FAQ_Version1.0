package com.cissst.software.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import com.cissst.software.model.User;
import com.cissst.software.util.DBHelp;

/**
 * 数据库访问层--用户操作
 * @author lenovo
 * @date 2016.9.12
 */
public class UserDao {


	
	/**
	 * 验证用户的合法性
	 * @param user
	 * @return
	 */
	public boolean validateUser(User user){
		
		String sql ="select count(*) from tbl_administrator where "
				+ "nickname='"+user.getUserName()+"' and password='"+user.getUserPwd()+"'";
		Object object = DBHelp.executeSqlReturnValue(sql);
		if(object != null){
			int count =Integer.parseInt(object.toString());
			if(count > 0)
				return true;
		}
		return false;
	}
	
	
	/**
	 * 根据登录名查询登录用户的权限
	 * @param loginName
	 * @return
	 */
	public Map<String,List> findPowerByName(String loginName) {

		//创建权限编号集合
		List<String> functionNumber = new ArrayList<String>();
		//创建父级权限的集合
		List<String> parent = new ArrayList<String>();
		//创建子级权限集合
		List<String> children = null;
		//创建Map集合，key存放父级权限，value存放子级权限集合
		Map<String,List> power = new TreeMap();
		
		//获取权限集合
		String sql = "select functionid from tbl_user_role t,tbl_administrator r,"
				+ "tbl_role_function p where t.managerid = r.managerid "
				+ "and t.roleid = p.roleid and  r.nickname='"+loginName+"'";
       List<List> functions = DBHelp.queryRowsMultiTables(sql);
		
		//遍历权限集合，获得每条权限编号，添加到权限编号集合中
		if(functions !=null && functions.size() > 0){
			for(int i=0;i < functions.size();i++){
				List function = functions.get(i);
				for(int j=0;j < function.size();j++){
					String functionId = (String)function.get(j); 
					functionNumber.add(functionId);
				}	
	        }
         }
		
		//将父级权限添加到父级权限集合中
		for (String parentNumber : functionNumber){
		 sql = "select functionid from tbl_function_module"+
				   " where remarks is null and functionid='"+parentNumber+"'";
				String parentId = (String)DBHelp.executeSqlReturnValue(sql);
				if(parentId != null){
					parent.add(parentId);
				}
		}
		
		//创建子级权限的集合将子级权限添加到子类集合中
		if (parent != null && parent.size() > 0) {
			 for(String id : parent){
				children = new ArrayList<String>();
				for (String totalId : functionNumber) {
					sql = "select functionid from tbl_function_module where " + "remarks ='" + id
							+ "' and functionid = '" + totalId + "'";
					String childrenId = (String) DBHelp.executeSqlReturnValue(sql);
					if (childrenId != null) {
						children.add(childrenId);
					}
					power.put(id, children);
				}

			}
		}

		return power;
	}
	
	
}
