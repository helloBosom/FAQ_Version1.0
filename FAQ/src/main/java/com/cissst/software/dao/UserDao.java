package com.cissst.software.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import com.cissst.software.model.User;
import com.cissst.software.util.DBHelp;

/**
 * ���ݿ���ʲ�--�û�����
 * @author lenovo
 * @date 2016.9.12
 */
public class UserDao {


	
	/**
	 * ��֤�û��ĺϷ���
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
	 * ���ݵ�¼����ѯ��¼�û���Ȩ��
	 * @param loginName
	 * @return
	 */
	public Map<String,List> findPowerByName(String loginName) {

		//����Ȩ�ޱ�ż���
		List<String> functionNumber = new ArrayList<String>();
		//��������Ȩ�޵ļ���
		List<String> parent = new ArrayList<String>();
		//�����Ӽ�Ȩ�޼���
		List<String> children = null;
		//����Map���ϣ�key��Ÿ���Ȩ�ޣ�value����Ӽ�Ȩ�޼���
		Map<String,List> power = new TreeMap();
		
		//��ȡȨ�޼���
		String sql = "select functionid from tbl_user_role t,tbl_administrator r,"
				+ "tbl_role_function p where t.managerid = r.managerid "
				+ "and t.roleid = p.roleid and  r.nickname='"+loginName+"'";
       List<List> functions = DBHelp.queryRowsMultiTables(sql);
		
		//����Ȩ�޼��ϣ����ÿ��Ȩ�ޱ�ţ���ӵ�Ȩ�ޱ�ż�����
		if(functions !=null && functions.size() > 0){
			for(int i=0;i < functions.size();i++){
				List function = functions.get(i);
				for(int j=0;j < function.size();j++){
					String functionId = (String)function.get(j); 
					functionNumber.add(functionId);
				}	
	        }
         }
		
		//������Ȩ����ӵ�����Ȩ�޼�����
		for (String parentNumber : functionNumber){
		 sql = "select functionid from tbl_function_module"+
				   " where remarks is null and functionid='"+parentNumber+"'";
				String parentId = (String)DBHelp.executeSqlReturnValue(sql);
				if(parentId != null){
					parent.add(parentId);
				}
		}
		
		//�����Ӽ�Ȩ�޵ļ��Ͻ��Ӽ�Ȩ����ӵ����༯����
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
