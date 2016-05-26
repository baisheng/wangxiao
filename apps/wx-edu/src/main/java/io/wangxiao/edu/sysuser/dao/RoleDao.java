package io.wangxiao.edu.sysuser.dao;

import java.util.List;

import io.wangxiao.edu.sysuser.entity.QueryRoleCondition;
import io.wangxiao.edu.sysuser.entity.SysRole;
import io.wangxiao.edu.sysuser.entity.UserRole;
import io.wangxiao.edu.sysuser.entity.RoleFunction;

/**
 * @description 角色管理
 */
public interface RoleDao {

    /**
     * 根据用户id查询所有role
     *
     * @param userId
     * @return List<Role>
     */
    List<SysRole> getRoleListByUserId(Long userId);

    /**
     * 获得所有roleList
     *
     * @return List<Role>
     */
    List<SysRole> getRoleList();

    /**
     * 根据id获得有role
     *
     * @param roleId 角色id
     * @return Role
     */
    SysRole getRoleById(Long roleId);

    /**
     * 根据roleId删除角色权限对应关系表
     *
     * @param roleId
     */
    void deleteRoleFunctionByRoleId(Long roleId);

    /**
     * 批量添加角色权限
     *
     * @param List<RoleFunction> list
     *                           角色list
     */
    void createRoleFunctionBatch(List<RoleFunction> list);

    /**
     * 删除角色
     *
     * @param roleId
     */
    void deleteRoleById(Long roleId);

    /**
     * 添加角色
     *
     * @param SysRole Role
     */
    void addRole(SysRole role);

    /**
     * 删除用户对应的角色
     *
     * @param userId
     * @param roleId
     */
    void deleteUserRoleRef(Long userId, Long roleId);

    /**
     * 根据roleID删除用户角色对应表
     *
     * @param roleId
     */
    void deleteUserRoleByRoleId(Long roleId);

    /**
     * 根据条件获得roleList
     *
     * @param queryRoleCondition
     * @return List<Role>
     */
    List<SysRole> getRoleListByCondition(QueryRoleCondition queryRoleCondition);

    /**
     * 用户添加角色对应关系
     *
     * @param userId
     * @param roleId
     */
    void addUserRoleRef(Long userId, Long roleId);

    /**
     * 修改角色名称
     *
     * @param roleName
     * @param roleId
     */
    void updateRoleName(String roleName, Long roleId);

    /**
     * 通过userId删除角色
     *
     * @param userId
     * @param roleId
     */
    void deleteUserRoleByUserId(Long userId);
    
    /**
     * 批量添加用户角色
     * @param userRolesList
     */
    void addbatchAddUserRole(List<UserRole> userRolesList);
}
