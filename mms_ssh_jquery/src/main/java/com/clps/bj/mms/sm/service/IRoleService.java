package com.clps.bj.mms.sm.service;

import java.util.List;

import com.clps.bj.mms.sm.entity.Role;
import com.clps.bj.mms.sm.vo.RoleVo;

/**
 *@description：role模块服务层接口
 *@className：IRoleService
 *@author bai
 *@version v1.0
 *@date 2018年1月22日 下午3:29:42
*/
public interface IRoleService {
	/**
	 * 在Role表中，通过该方法可以根据角色编号获取当前角色名称
	 * @param roleId int 用户编号
	 * @return String 角色名称
	 */
	public Role queryRoleName(int roleId);

	/**
	 * 在Role表中，输入必要参数，通过该方法可以新增新的角色，
	 * @param roleId 要插入的角色编号
	 * @param roleName 要插入的角色名称
	 * @return 是否插入成功  true 插入 成功  false 插入失败
	 */
	public Boolean addRole(Role role);
	/**
	 * 在Role表中，通过该方法可以物理删除角色
	 * @param roleId 要删除的角色编号
	 * @return 是否删除成功  true 删除成功  false 删除失败
	 */
	public boolean deleteRole(int roleId);
	/**
	 * 修改角色表中信息
	 * @param role  要修改的role对象
	 * @param roleId   对应的roleID
	 * @return  是否修改成功
	 */
	public boolean updateRole(Role role,int roleId);
	/**
	 * 查询所有的角色名称并分页
	 * @param currentPage 当前页
	 * @param pageSize 页长
	 * @return  查询结果List<Role>
	 */
	public List<Role> queryAllRoleName();
	/**
	 * 模糊查询角色名称
	 * @param rolename   输入的角色名称
	 * @return  查询结果List<Role>
	 */
	public List<Role> queryRoleByName(String rolename);
	/**
	 * 将查询结果放进vo
	 * @param rolename   输入的角色名称
	 * @return  查询结果List<Role>
	 */
	public List<RoleVo> putRoleToVo(List<Role> list);
}
