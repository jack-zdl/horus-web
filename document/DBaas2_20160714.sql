/*
Navicat MySQL Data Transfer

Source Server         : 192.168.3.121_3306
Source Server Version : 100021
Source Host           : 192.168.3.121:3306
Source Database       : DBaas2

Target Server Type    : MYSQL
Target Server Version : 100021
File Encoding         : 65001

Date: 2016-07-14 23:14:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_gf_application
-- ----------------------------
DROP TABLE IF EXISTS `t_gf_application`;
CREATE TABLE `t_gf_application` (
  `APP_CODE` varchar(32) DEFAULT NULL,
  `APP_NAME` varchar(255) DEFAULT NULL,
  `APP_COMMENT` varchar(255) DEFAULT NULL,
  `APP_STATUS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_gf_application
-- ----------------------------
INSERT INTO `t_gf_application` VALUES ('DEFAULT', '系统管理平台', '系统管理平台注释', '1');

-- ----------------------------
-- Table structure for t_gf_auth_right
-- ----------------------------
DROP TABLE IF EXISTS `t_gf_auth_right`;
CREATE TABLE `t_gf_auth_right` (
  `ID` varchar(32) DEFAULT NULL,
  `AUTH_ID` varchar(32) DEFAULT NULL,
  `USER_ID` varchar(32) DEFAULT NULL,
  `AUTH_TYPE` varchar(32) DEFAULT NULL,
  `APP_ID` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_gf_auth_right
-- ----------------------------
INSERT INTO `t_gf_auth_right` VALUES ('1', 'ADMIN', 'admin', 'role', 'default');
INSERT INTO `t_gf_auth_right` VALUES ('121', 'Tenant', '100001', 'role', 'default');
INSERT INTO `t_gf_auth_right` VALUES ('122', 'Monitor', '102001', 'role', 'default');
INSERT INTO `t_gf_auth_right` VALUES ('123', 'Operator', '101001', 'role', 'default');

-- ----------------------------
-- Table structure for t_gf_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_gf_dict`;
CREATE TABLE `t_gf_dict` (
  `DICT_TYPE_ID` varchar(64) DEFAULT NULL,
  `DICT_ID` varchar(64) DEFAULT NULL,
  `DICT_NAME` longtext,
  `STATUS` int(11) DEFAULT NULL,
  `SORT_NO` int(11) DEFAULT NULL,
  `PARENT_ID` varchar(64) DEFAULT NULL,
  `SEQNO` varchar(255) DEFAULT NULL,
  `APPID` varchar(32) DEFAULT NULL,
  `FILTER` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_gf_dict
-- ----------------------------
INSERT INTO `t_gf_dict` VALUES ('cluster_type', 'upsql', '数据集群', null, null, null, null, '', null);
INSERT INTO `t_gf_dict` VALUES ('cluster_type', 'proxy', '代理集群', null, null, null, null, '', null);
INSERT INTO `t_gf_dict` VALUES ('performance_list', '2/6442450944', '2核6G', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('performance_list', '6/25769803776', '6核24G', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('performance_list', '2/4294967296', '2核4G', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('dbaas_framework', 'master:1', '单节点', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('dbaas_framework', 'master:1#standby:1', '主备', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('dbaas_framework', 'master:1#standby:1#slave:', '主备多从', null, null, null, null, '', null);
INSERT INTO `t_gf_dict` VALUES ('software_type', 'Component', '组件', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('software_type', 'upproxy', 'Proxy', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('dbaas_status', '0', '已入库', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('dbaas_status', '1', '已启用', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('dbaas_status', '-1', '入库失败', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('dbaas_status', '2', '已停用', null, null, null, null, '', null);
INSERT INTO `t_gf_dict` VALUES ('software_type', 'upsql', 'Upsql', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('COF_YESORNO', '1', '子页', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('COF_YESORNO', '2', '父页', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('dbaas_status', '3', '已注销', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('dbaas_status', '4', '审批申请', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('dbaas_status', '5', '审批通过', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('dbaas_status', '6', '审批拒绝', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('COF_USERSTATUS', '1', '启用', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('COF_USERSTATUS', '2', '未启用', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('storage_type', 'san', '联机', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('storage_type', 'local', '非联机', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('dbaas_user_type', 'db', '变更者', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('dbaas_user_type', 'ap', '使用者', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('performance_list', '2/8589934592', '2核8G', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('performance_list', '4/8589934592', '4核8G', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('performance_list', '4/12884901888', '4核12G', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('performance_list', '4/17179869184', '4核16G', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('performance_list', '6/12884901888', '6核12G', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('performance_list', '6/19327352832', '6核18G', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('performance_list', '8/17179869184', '8核16G', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('performance_list', '8/25769803776', '8核24G', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('performance_list', '8/34359738368', '8核32G', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('network_bandwidth', '50', '50M', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('network_bandwidth', '100', '100M', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('operate_module', 'nas', 'NAS', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('operate_module', 'site', '站点', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('operate_module', 'cluster', '集群', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('operate_module', 'san', 'SAN', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('operate_module', 'network', 'IP网段', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('operate_module', 'software', '软件介质', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('operate_module', 'computer', '物理机', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('operate_module', 'dbaas', '实例管理', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('operate_module', 'config', '参数配置', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('operate_module', 'manager', '系统管理', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('operate_module', 'user', '用户相关', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('operate_type', 'create', '登记', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('operate_type', 'enable', '启用', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('operate_type', 'disable', '停用', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('operate_type', 'delete', '注销', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('operate_type', 'update', '属性修改', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('operate_type', 'config', '参数配置', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('operate_type', 'en_monitor', '监控开启', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('operate_type', 'dis_monitor', '监控关闭', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('operate_type', 'monitor_config', '监控频率', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('operate_type', 'capability_list', '套餐修改', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('operate_type', 'create_user', '添加用户', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('operate_type', 'delete_user', '注销用户', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('operate_type', 'authority', '权限设置', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('operate_type', 'menu', '菜单管理', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('operate_type', 'role', '角色管理', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_type', 'day', '按天', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_type', 'week', '按周', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_type', 'month', '按月', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('cluster_mark', 'online', '联机', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('cluster_mark', 'batch', '批量', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('cluster_mark', 'manager', '管理', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('restart_type', '0', '否', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('restart_type', '1', '是', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_config', '1', '启用', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_config', '0', '停用', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_level', 'info', '信息类', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_level', 'warning', '警告类', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_level', 'normal', '良好类', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_level', 'critical', '严重类', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('machine_nodes', '0', '未入库', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('machine_nodes', '1', '初始化安装中', null, null, '', '', 'default', '');
INSERT INTO `t_gf_dict` VALUES ('machine_nodes', '2', '初始化安装成功', null, null, '', '', 'default', '');
INSERT INTO `t_gf_dict` VALUES ('machine_nodes', '3', '初始化安装失败', null, null, '', '', 'default', '');
INSERT INTO `t_gf_dict` VALUES ('machine_nodes', '4', '测试中', null, null, '', '', 'default', '');
INSERT INTO `t_gf_dict` VALUES ('machine_nodes', '5', '测试失败', null, null, '', '', 'default', '');
INSERT INTO `t_gf_dict` VALUES ('machine_nodes', '6', '启用', null, null, '', '', 'default', '');
INSERT INTO `t_gf_dict` VALUES ('machine_nodes', '7', '停用', null, null, '', '', 'default', '');
INSERT INTO `t_gf_dict` VALUES ('software_type', 'switch_manager', 'switch_manager', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('port_limit', '100', '100条', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('port_limit', '200', '200条', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('port_limit', '500', '500条', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('network_type', 'internal_access_networking', '内网', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('network_type', 'external_access_networking', '外网', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('enable_status', 'enable', '启用', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('enable_status', 'disable', '停用', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('network_status', '1', '启用', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('network_status', '0', '停用', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'host.cpu_usage', 'CPU使用率', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'host.homedir_application_amount', '系统home目录使用率', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'host.rootdir_application_amount', '系统room目录使用率', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'host.mem_usage', '内存使用率', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'host.network.bond.input', '网络input', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'host.network.bond.output', '网络output', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'swm.datadir_application_amount', 'swm实例所属容器data目录使用率', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'swm.logdir_application_amount', 'swm实例所属容器log目录使用率', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'swm.cpu_usage', 'swm实例所属容器cpu使用率', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'swm.mem_usage', 'swm实例所属容器内存使用率', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'swm.service_status', 'swm实例状态', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'upproxy.error_file_size', 'upproxy实例错误文件大小', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'upproxy.datadir_application_amount', 'upproxy实例所属容器data目录使用率', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'upproxy.logdir_application_amount', 'upproxy实例所属容器log目录使用率', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'upproxy.cpu_usage', 'upproxy实例所属容器cpu使用率', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'upproxy.mem_usage', 'upproxy实例所属容器内存使用率', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'upproxy.service_status', 'upproxy实例状态', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'upsql.buffer_pool_hit', 'upsql实例buffer命中率', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'upsql.buffer_pool_usage', 'upsql实例buffer使用率', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'upsql.buffer_pool_dirty_page', 'upsql实例buffer脏页数', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'upsql.connection_usage', 'upsql实例连接使用率', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'upsql.thread_cache_usage', 'upsql实例cache使用率', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'upsql.error_file_size', 'upsql实例错误文件大小', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'upsql.slow_query_file_size', 'upsql实例慢日志文件大小', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'upsql.com_delete', 'upsql实例压力负载delete', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'upsql.com_insert', 'upsql实例压力负载insert', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'upsql.com_select', 'upsql实例压力负载select', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'upsql.com_update', 'upsql实例压力负载update', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'upsql.upsql_io', 'upsql实例io线程', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'upsql.upsql_sql', 'upsql实例sql线程', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'upsql.datadir_application_amount', 'upsql实例所属容器data目录使用率', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'upsql.logdir_application_amount', 'upsql实例所属容器log目录使用率', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'upsql.cpu_usage', 'upsql实例所属容器cpu使用率', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'upsql.mem_usage', 'upsql实例所属容器内存使用率', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_name', 'upsql.service_status', 'upsql实例状态', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_isalarmon', 'on', '是', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_isalarmon', 'off', '否', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('business_status', 'a0', '创建待审批', null, null, null, null, '', null);
INSERT INTO `t_gf_dict` VALUES ('business_status', 'a1', '创建已执行', null, null, null, null, '', null);
INSERT INTO `t_gf_dict` VALUES ('business_status', 'a2', '创建审批通过', null, null, null, null, '', null);
INSERT INTO `t_gf_dict` VALUES ('business_status', 'a3', '创建审批拒绝', null, null, null, null, '', null);
INSERT INTO `t_gf_dict` VALUES ('san_brand', 'HITACHI', '日立（HITACHI）', null, null, null, null, '', null);
INSERT INTO `t_gf_dict` VALUES ('san_brand', 'HUAWEI', '华为（HUAWEI）', null, null, null, null, '', null);
INSERT INTO `t_gf_dict` VALUES ('lun_id', 'start', '2000', null, null, null, null, '', null);
INSERT INTO `t_gf_dict` VALUES ('lun_id', 'end', '2100', null, null, null, null, '', null);
INSERT INTO `t_gf_dict` VALUES ('host_lunid', 'start', '100', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('host_lunid', 'end', '150', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('netwidth_info', '50', '{\"switch_manager\":{\"type\":\"switch_manager\",\"arch\":\"master:1\",\"stores\":[{\"name\": \"CNF\",\"type\":\"local:HDD\",\"size\":1024000000},{\"name\":\"LOG\",\"type\":\"local:HDD\",\"size\":1024000000}],\"host_config\":{\"cpusetcpus\":\"1\",\"memory\":1024000000,\"networkmode\":\"host\"}},\"upproxy\":{\"type\":\"proxy\",\"arch\":\"master:1\",\"stores\":[{\"name\":\"CNF\",\"type\":\"local:HDD\",\"size\":1024000000},{\"name\":\"LOG\",\"type\":\"local:HDD\",\"size\":1024000000}],\"host_config\":{\"cpusetcpus\":\"1\",\"memory\":1024000000,\"networkmode\":\"host\"}}}', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('netwidth_info', '100', '{\"switch_manager\": {\"type\":\"switch_manager\",\"arch\":\"master:1\",\"stores\":[{\"name\":\"CNF\",\"type\":\"local:HDD\",\"size\":1024000000},{\"name\":\"LOG\",\"type\":\"local:HDD\",\"size\":1024000000}],\"host_config\":{\"cpusetcpus\":\"1\",\"memory\":1024000000,\"networkmode\":\"host\"}},\"upproxy\":{\"type\":\"proxy\",\"arch\":\"master:1#standby:1\",\"stores\":[{\"name\":\"CNF\",\"type\":\"local:HDD\",\"size\":1024000000},{\"name\":\"LOG\",\"type\":\"local:HDD\",\"size\":1024000000}],\"host_config\":{\"cpusetcpus\":\"2\",\"memory\":2048000000,\"networkmode\":\"host\"}}}', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manage_status', '1', '分配中', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manage_status', '2', '已分配', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manage_status', '3', '分配失败', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manage_status', '4', '创建中', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manage_status', '5', '创建失败', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manage_status', '6', '启动中', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manage_status', '7', '启动失败', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manage_status', '8', '停止中', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manage_status', '9', '停止失败', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manage_status', '10', '删除中', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manage_status', '11', '删除失败', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manage_status', '12', '备份中', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manage_status', '13', '还原中', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manage_status', '14', '还原失败', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manage_status', '15', '无操作', null, null, null, null, 'default', null);
INSERT INTO `t_gf_dict` VALUES ('site_add', 'site_add_info_01', '{\"docker_port\": 2375,\"plugin_port\": 3333,\"backup_dir\": \"/BACKUP\",\"consul\": {\"consul_port\": 8500,\"consul_dc\": \"dc1\"},\"horus\": {\"horus_agent_port\": 8123},\"registry\": {\"registry_email\": \"@unionpay.com\"},\"ssh_deliver\":{\"source_dir\": \"./script/node-init\",\"destination_dir\": \"/tmp\",\"init_script_name\": \"node-init.sh\",\"clean_script_name\": \"node-clean.sh\",\"ca_crt_name\": \"registery-ca.crt\"},\"nfs\": {\"nfs_mount_dir\": \"/NASbackup\",\"nfs_mount_opts\": \"nolock\"},\"users\": {\"mon_username\": \"mon\",\"mon_password\": \"123.com\",\"repl_username\": \"repl\",\"repl_password\": \"111111\",\"cup_dba_username\": \"cup_dba\",\"cup_dba_password\": \"111111\",\"db_username\": \"db\",\"db_password\": \"111111\",\"ap_username\": \"ap\",\"ap_password\": \"111111\"}}', null, null, null, null, '', null);
INSERT INTO `t_gf_dict` VALUES ('performance_list', '1/1073741824', '1核1G', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backupsSize_time', 'day', '24', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manager_status', '1', '分配中', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manager_status', '2', '已分配', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manager_status', '3', '分配失败', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manager_status', '4', '创建中', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manager_status', '5', '创建失败', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manager_status', '6', '启动中', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manager_status', '7', '启动失败', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manager_status', '8', '停止中', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manager_status', '9', '停止失败', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manager_status', '10', '删除中', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manager_status', '11', '删除失败', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manager_status', '12', '备份中', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manager_status', '13', '还原中', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manager_status', '14', '还原失败', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('manager_status', '15', '无操作', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_model', 'full', '全备', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '1', '1日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '2', '2日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '3', '3日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '4', '4日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '5', '5日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '6', '6日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '7', '7日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '8', '8日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '9', '9日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '10', '10日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '11', '11日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '12', '12日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '13', '13日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '14', '14日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '15', '15日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '16', '16日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '17', '17日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '18', '18日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '19', '19日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '20', '20日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '21', '21日', null, null, null, null, '', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '22', '22日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '23', '23日', null, null, null, null, '', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '24', '24日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '25', '25日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '26', '26日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '27', '27日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '28', '28日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '29', '29日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '30', '30日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_days', '31', '31日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_weeks', '0', '周日', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_weeks', '1', '周一', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_weeks', '2', '周二', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_weeks', '3', '周三', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_weeks', '4', '周四', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_weeks', '5', '周五', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_weeks', '6', '周六', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_timeout', '600', '600', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_dir', '01', '/BACKUP/', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('unitInstance_role', 'unknown', 'unknown', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('unitInstance_manageStatus', '0', '已分配', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('unitInstance_manageStatus', '1', '创建中', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('unitInstance_manageStatus', '2', '启动中', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('unitInstance_manageStatus', '3', '停止中', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('unitInstance_manageStatus', '4', '迁移中', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('unitInstance_manageStatus', '5', '重建中', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('unitInstance_manageStatus', '6', '删除中', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('unitInstance_manageStatus', '7', '备份中', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('unitInstance_manageStatus', '8', '还原中', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('unitInstance_manageStatus', '99', '无任务', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('change_status', 'b0', '变更待审批', null, null, null, null, '', null);
INSERT INTO `t_gf_dict` VALUES ('change_status', 'b1', '变更执行成功', null, null, null, null, '', null);
INSERT INTO `t_gf_dict` VALUES ('change_status', 'b2', '变更审批成功', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('change_status', 'b3', '变更审批拒绝', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('unitInstance_role', 'master(normal)', 'master(normal)', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('unitInstance_role', 'master(abnormal)', 'master(abnormal)', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('unitInstance_role', 'standby(normal)', 'standby(normal)', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('unitInstance_role', 'standby(abnormal)', 'standby(abnormal)', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('unitInstance_role', 'slave(normal)', 'slave(normal)', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('unitInstance_role', 'slave(abnormal)', 'slave(abnormal)', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('site_status', '1', '已启用', null, null, null, null, '', null);
INSERT INTO `t_gf_dict` VALUES ('site_status', '2', '已停用', null, null, null, null, '', null);
INSERT INTO `t_gf_dict` VALUES ('business_status', 'b0', '变更待审批', null, null, null, null, '', null);
INSERT INTO `t_gf_dict` VALUES ('business_status', 'b2', '变更审批成功', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('business_status', 'b3', '变更审批拒绝', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('business_status', 'b1', '变更执行成功', null, null, null, null, '', null);
INSERT INTO `t_gf_dict` VALUES ('network_allot', '1', '已分配', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('network_allot', '2', '未分配', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('software_template', 'config_keyset', '{\"config_keyset\":[{\"key\":\"mysqld::max_connections\",\"can_set\":false,\"must_restart\":false,\"description\":\"type: integer, range: 1--100000, The maximum permitted number of simultaneous client connections. By default, this is 151.\"},{\"key\":\"mysqld::bind-address\",\"can_set\":false,\"must_restart\":true,\"description\":\"type: string, range: on, off, The MySQL server listens on a single network socket for TCP/IP connections.\"},{\"key\":\"mysqld::port\",\"can_set\":false,\"must_restart\":false,\"description\":\"type: integer , range: 0--65535 ,The number of the port on which the server listens for TCP/IP connections. This variable can be set with the --port option.\"},{\"key\":\"mysqld::socket\",\"can_set\":false,\"must_restart\":true,\"description\":\"type: string, range: on, off, On Unix, this option specifies the Unix socket file to use when listening for local connections. The default value is /tmp/mysql.sock. If this option is given, the server creates the file in the data directory unless an absolute path name is given to specify a different directory. On Windows, the option specifies the pipe name to use when listening for local connections that use a named pipe. The default value is MySQL (not case sensitive). \"},{\"key\":\"mysqld::server-id\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:integer , range: o--4294967295, This option is common to both master and slave replication servers, and is used in replication to enable master and slave servers to identify themselves uniquely.  \"},{\"key\":\"mysqld::character_set_server\",\"can_set\":true,\"must_restart\":false,\"description\":\"type:string , range: , The server\'s default character set.\"},{\"key\":\"mysqld::max_connect_errors\",\"can_set\":false,\"must_restart\":false,\"description\":\"type: integer, range: 0--18446744073709551615, If more than this many successive connection requests from a host are interrupted without a successful connection, the server blocks that host from further connections. You can unblock blocked hosts by flushing the host cache. \"},{\"key\":\"mysqld::max_user_connections\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:integer , range: 0--4294967295,The maximum number of simultaneous connections permitted to any given MySQL user account. A value of 0 (the default) means “no limit.”\"},{\"key\":\"mysqld::skip_external_locking\",\"can_set\":false,\"must_restart\":true,\"description\":\"type: boolean, range: on, This is OFF if mysqld uses external locking (system locking), ON if external locking is disabled. This affects only MyISAM table access.\"},{\"key\":\"mysqld::max_allowed_packet\",\"can_set\":false,\"must_restart\":false,\"description\":\"type: integer, range: 1024--1073741824, The maximum size of one packet or any generated/intermediate string, or any parameter sent by the mysql_stmt_send_long_data() C API function. The default is 4MB as of MySQL 5.6.6, 1MB before that.The maximum size of one packet or any generated/intermediate string, or any parameter sent by the mysql_stmt_send_long_data() C API function. The default is 4MB as of MySQL 5.6.6, 1MB before that.\"},{\"key\":\"mysqld::sort_buffer_size\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:integer , range: 32768--18446744073709551615, Each session that must perform a sort allocates a buffer of this size. sort_buffer_size is not specific to any storage engine and applies in a general manner for optimization. \"},{\"key\":\"mysqld::join_buffer_size\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:integer , range: 128--18446744073709547520,The minimum size of the buffer that is used for plain index scans, range index scans, and joins that do not use indexes and thus perform full table scans. \"},{\"key\":\"mysqld::user \",\"can_set\":false,\"must_restart\":false,\"description\":\"type:string , range: ,\"},{\"key\":\"mysqld::tmpdir\",\"can_set\":false,\"must_restart\":true,\"description\":\"type: directory name, The path of the directory to use for creating temporary files. It might be useful if your default /tmp directory resides on a partition that is too small to hold temporary tables. \"},{\"key\":\"mysqld::datadir\",\"can_set\":false,\"must_restart\":true,\"description\":\"type: directory name, The path to the data directory.\"},{\"key\":\"mysqld::log-bin\",\"can_set\":false,\"must_restart\":true,\"description\":\"type: file name, Enable binary logging. The server logs all statements that change data to the binary log, which is used for backup and replication. \"},{\"key\":\"mysqld::log_bin_trust_function_creators\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:boolean , This option sets the corresponding log_bin_trust_function_creators system variable. If no argument is given, the option sets the variable to 1. log_bin_trust_function_creators affects how MySQL enforces restrictions on stored function and trigger creation.\"},{\"key\":\"mysqld::sync_binlog\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:integer , range: 0--4294967295,If the value of this variable is greater than 0, the MySQL server synchronizes its binary log to disk (using fdatasync()) after sync_binlog commit groups are written to the binary log. The default value of sync_binlog is 0, which does no synchronizing to disk—in this case, the server relies on the operating system to flush the binary log\'s contents from time to time as for any other file.\"},{\"key\":\"mysqld::expire_logs_days\",\"can_set\":false,\"must_restart\":false,\"description\":\"type: integer, range: 0--99,The number of days for automatic binary log file removal. The default is 0, which means “no automatic removal.” Possible removals happen at startup and when the binary log is flushed. \"},{\"key\":\"mysqld::key_buffer_size\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:integer , range:8--OS_PER_PROCESS_LIMIT, Index blocks for MyISAM tables are buffered and are shared by all threads. key_buffer_size is the size of the buffer used for index blocks. The key buffer is also known as the key cache.\"},{\"key\":\"mysqld::binlog_cache_size\",\"can_set\":false,\"must_restart\":false,\"description\":\"type: integer, range:4096--18446744073709551615,The size of the cache to hold changes to the binary log during a transaction. A binary log cache is allocated for each client if the server supports any transactional storage engines and if the server has the binary log enabled (--log-bin option). \"},{\"key\":\"mysqld::binlog_format\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:enumeration , This variable sets the binary logging format, and can be any one of STATEMENT, ROW, or MIXED. See Section 17.1.2, “Replication Formats”. binlog_format is set by the --binlog-format option at startup, or by the binlog_format variable at runtime.\"},{\"key\":\"mysqld::lower_case_table_names\",\"can_set\":false,\"must_restart\":true,\"description\":\"type:integer , range:0--2,If set to 0, table names are stored as specified and comparisons are case sensitive. If set to 1, table names are stored in lowercase on disk and comparisons are not case sensitive. If set to 2, table names are stored as given but compared in lowercase. This option also applies to database names and table aliases. \"},{\"key\":\"mysqld::ax_binlog_siz\",\"can_set\":false,\"must_restart\":false,\"description\":\"type: integer, range: 4096--1073741824,If a write to the binary log causes the current log file size to exceed the value of this variable, the server rotates the binary logs (closes the current file and opens the next one). The minimum value is 4096 bytes. The maximum and default value is 1GB.\"},{\"key\":\"mysqld::connect_timeout\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:integer , range:2--31536000 ,The number of seconds that the mysqld server waits for a connect packet before responding with Bad handshake. The default value is 10 seconds.\"},{\"key\":\"mysqld::interactive_timeout\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:integer, range: 1--,The number of seconds the server waits for activity on an interactive connection before closing it. An interactive client is defined as a client that uses the CLIENT_INTERACTIVE option to mysql_real_connect(). \"},{\"key\":\"mysqld::wait_timeout\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:integer , range:1--31536000 ,The number of seconds the server waits for activity on a noninteractive connection before closing it.\"},{\"key\":\"mysqld::net_read_timeout\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:integer, range:1-- ,The number of seconds to wait for more data from a connection before aborting the read. When the server is reading from the client, net_read_timeout is the timeout value controlling when to abort. \"},{\"key\":\"mysqld::net_write_timeout\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:integer , range:1-- ,The number of seconds to wait for a block to be written to a connection before aborting the write. See also net_read_timeout.\"},{\"key\":\"mysqld::optimizer_switch\",\"can_set\":false,\"must_restart\":false,\"description\":\"type: set, The optimizer_switch system variable enables control over optimizer behavior. The value of this variable is a set of flags, each of which has a value of on or off to indicate whether the corresponding optimizer behavior is enabled or disabled. This variable has global and session values and can be changed at runtime. The global default can be set at server startup.\"},{\"key\":\"mysqld::open_files_limit\",\"can_set\":false,\"must_restart\":true,\"description\":\"type:integer , range: 0--platform dependent,The number of files that the operating system permits mysqld to open. The value of this variable at runtime is the real value permitted by the system and might be different from the value you specify at server startup. The value is 0 on systems where MySQL cannot change the number of open files.\"},{\"key\":\"mysqld::explicit_defaults_for_timestamp\",\"can_set\":false,\"must_restart\":true,\"description\":\"type:boolean , In MySQL, the TIMESTAMP data type differs in nonstandard ways from other data types\"},{\"key\":\"mysqld::innodb_open_files\",\"can_set\":false,\"must_restart\":true,\"description\":\"type: integer, range: 10--4294967295,This variable is relevant only if you use multiple InnoDB tablespaces. It specifies the maximum number of .ibd files that MySQL can keep open at one time. The minimum value is 10. As of MySQL 5.6.6, the default value is 300 if innodb_file_per_table is not enabled, and the higher of 300 and table_open_cache otherwise. Before 5.6.6, the default value is 300.\"},{\"key\":\"mysqld::innodb_data_file_path\",\"can_set\":false,\"must_restart\":true,\"description\":\"type: string, range: on, off, The paths to individual InnoDB data files and their sizes. The full directory path to each data file is formed by concatenating innodb_data_home_dir to each path specified here. The file sizes are specified KB, MB or GB (1024MB) by appending K, M or G to the size value.\"},{\"key\":\"mysqld::innodb_buffer_pool_size\",\"can_set\":false,\"must_restart\":true,\"description\":\"type:integer , range:5242880--2**64-1 ,The size in bytes of the buffer pool, the memory area where InnoDB caches table and index data. The default value is 128MB. The maximum value depends on the CPU architecture; the maximum is 4294967295 (232-1) on 32-bit systems and 18446744073709551615 (264-1) on 64-bit systems. On 32-bit systems, the CPU architecture and operating system may impose a lower practical maximum size than the stated maximum. \"},{\"key\":\"mysqld::innodb_buffer_pool_instances\",\"can_set\":false,\"must_restart\":true,\"description\":\"type: integer, range:1--64 ,The number of regions that the InnoDB buffer pool is divided into. For systems with buffer pools in the multi-gigabyte range, dividing the buffer pool into separate instances can improve concurrency, by reducing contention as different threads read and write to cached pages. \"},{\"key\":\"mysqld::innodb_log_buffer_size\",\"can_set\":false,\"must_restart\":true,\"description\":\"type: integer, range:262144--4294967295 ,The size in bytes of the buffer that InnoDB uses to write to the log files on disk. The default value is 8MB. A large log buffer enables large transactions to run without a need to write the log to disk before the transactions commit. \"},{\"key\":\"mysqld::innodb_log_file_size\",\"can_set\":false,\"must_restart\":true,\"description\":\"type: integer, range:1048576--512GB / innodb_log_files_in_group ,The size in bytes of each log file in a log group. The combined size of log files (innodb_log_file_size * innodb_log_files_in_group) cannot exceed a maximum value that is slightly less than 512GB. \"},{\"key\":\"mysqld::innodb_log_files_in_group\",\"can_set\":false,\"must_restart\":true,\"description\":\"type: integer, range: 2--100,The number of log files in the log group. InnoDB writes to the files in a circular fashion. The default (and recommended) value is 2. The location of these files is specified by innodb_log_group_home_dir. The combined size of log files (innodb_log_file_size * innodb_log_files_in_group) can be up to 512GB.\"},{\"key\":\"mysqld::innodb_log_group_home_dir\",\"can_set\":false,\"must_restart\":true,\"description\":\"type: directory name, The directory path to the InnoDB redo log files, whose number is specified by innodb_log_files_in_group. If you do not specify any InnoDB log variables, the default is to create two files named ib_logfile0 and ib_logfile1 in the MySQL data directory.\"},{\"key\":\"mysqld::innodb_max_dirty_pages_pct\",\"can_set\":false,\"must_restart\":false,\"description\":\"type: numeric, range:0--99 ,InnoDB tries to flush data from the buffer pool so that the percentage of dirty pages does not exceed this value. Specify an integer in the range from 0 to 99. The default value is 75.\"},{\"key\":\"mysqld::innodb_flush_method\",\"can_set\":false,\"must_restart\":true,\"description\":\"type: string, range:on, off ,Defines the method used to flush data to the InnoDB data files and log files, which can affect I/O throughput. This variable is only configurable on Unix and Linux systems.\"},{\"key\":\"mysqld::innodb_flush_log_at_trx_commit\",\"can_set\":false,\"must_restart\":false,\"description\":\"type: enumeration, Controls the balance between strict ACID compliance for commit operations, and higher performance that is possible when commit-related I/O operations are rearranged and done in batches. You can achieve better performance by changing the default value, but then you can lose up to a second of transactions in a crash.\"},{\"key\":\"mysqld::innodb_thread_concurrency\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:integer , range:0--1000 ,InnoDB tries to keep the number of operating system threads concurrently inside InnoDB less than or equal to the limit given by this variable (InnoDB uses operating system threads to process user transactions). \"},{\"key\":\"mysqld::innodb_read_io_threads\",\"can_set\":false,\"must_restart\":true,\"description\":\"type:integer , range:1--64 ,The number of I/O threads for read operations in InnoDB. The default value is 4. Its counterpart for write threads is innodb_write_io_threads. \"},{\"key\":\"mysqld::innodb_write_io_threads\",\"can_set\":false,\"must_restart\":true,\"description\":\"type:integer , range: 1--64,The number of I/O threads for write operations in InnoDB. The default value is 4. Its counterpart for read threads is innodb_read_io_threads. \"},{\"key\":\"mysqld::innodb_lock_wait_timeout\",\"can_set\":false,\"must_restart\":false,\"description\":\"type: integer, range:1--1073741824 ,The length of time in seconds an InnoDB transaction waits for a row lock before giving up. The default value is 50 seconds. \"},{\"key\":\"mysqld::innodb_rollback_on_timeout\",\"can_set\":false,\"must_restart\":true,\"description\":\"type: boolean, range:OFF ,In MySQL 5.6, InnoDB rolls back only the last statement on a transaction timeout by default. If --innodb_rollback_on_timeout is specified, a transaction timeout causes InnoDB to abort and roll back the entire transaction (the same behavior as in MySQL 4.1).\"},{\"key\":\"mysqld::innodb_file_per_table\",\"can_set\":false,\"must_restart\":false,\"description\":\"type: boolean, range: ON,When innodb_file_per_table is enabled (the default in 5.6.6 and higher), InnoDB stores the data and indexes for each newly created table in a separate .ibd file, rather than in the system tablespace. \"},{\"key\":\"mysqld::innodb_stats_sample_pages\",\"can_set\":false,\"must_restart\":false,\"description\":\"type: integer, range:1--2**64-1 ,Deprecated, use innodb_stats_transient_sample_pages instead.\"},{\"key\":\"mysqld::innodb_purge_threads\",\"can_set\":false,\"must_restart\":true,\"description\":\"type: integer, range: 1--32,The number of background threads devoted to the InnoDB purge operation. The new default and minimum value of 1 in MySQL 5.6.5 signifies that the purge operation is always performed by background threads, never as part of the master thread.\"},{\"key\":\"mysqld::innodb_stats_on_metadata\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:boolean , range:OFF ,When this variable is enabled, InnoDB updates statistics when metadata statements such as SHOW TABLE STATUS or SHOW INDEX are run, or when accessing the INFORMATION_SCHEMA.TABLES or INFORMATION_SCHEMA.STATISTICS tables. \"},{\"key\":\"mysqld::innodb_support_xa\",\"can_set\":false,\"must_restart\":false,\"description\":\"type: boolean, You can also turn off this option if you do not need it for safe binary logging or replication, and you also do not use an external XA transaction manager.\"},{\"key\":\"mysqld::innodb_doublewrite\",\"can_set\":false,\"must_restart\":true,\"description\":\"type: boolean, range:ON ,If this variable is enabled (the default), InnoDB stores all data twice, first to the doublewrite buffer, then to the actual data files. \"},{\"key\":\"mysqld::innodb_checksums\",\"can_set\":false,\"must_restart\":true,\"description\":\"type:boolean , range: ON,InnoDB can use checksum validation on all tablespace pages read from the disk to ensure extra fault tolerance against hardware faults or corrupted data files. \"},{\"key\":\"mysqld::innodb_io_capacity\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:integer , range:100--2**64-1 ,The innodb_io_capacity parameter sets an upper limit on the I/O activity performed by the InnoDB background tasks, such as flushing pages from the buffer pool and merging data from the change buffer. \"},{\"key\":\"mysqld::innodb_purge_threads\",\"can_set\":false,\"must_restart\":true,\"description\":\"type:integer , range: 1--32,The number of background threads devoted to the InnoDB purge operation. The new default and minimum value of 1 in MySQL 5.6.5 signifies that the purge operation is always performed by background threads, never as part of the master thread. Non-zero values runs the purge operation in one or more background threads, which can reduce internal contention within InnoDB, improving scalability.\"},{\"key\":\"mysqld::innodb_purge_batch_size\",\"can_set\":false,\"must_restart\":false,\"description\":\"type: integer, range:1--5000 ,The granularity of changes, expressed in units of redo log records, that trigger a purge operation, flushing the changed buffer pool blocks to disk. This option is intended for tuning performance in combination with the setting innodb_purge_threads=n, and typical users do not need to modify it.\"},{\"key\":\"mysqld::innodb_stats_persistent_sample_pages\",\"can_set\":false,\"must_restart\":false,\"description\":\"type: integer, The number of index pages to sample when estimating cardinality and other statistics for an indexed column, such as those calculated by ANALYZE TABLE. Increasing the value improves the accuracy of index statistics, which can improve the query execution plan, at the expense of increased I/O during the execution of ANALYZE TABLE for an InnoDB table.\"},{\"key\":\"mysqld::plugin_dir\",\"can_set\":false,\"must_restart\":true,\"description\":\"type:directory name , The path name of the plugin directory.\"},{\"key\":\"mysqld::plugin_load\",\"can_set\":false,\"must_restart\":true,\"description\":\"type: , range: ,\"},{\"key\":\"mysqld::loose_rpl_semi_sync_master_enabled\",\"can_set\":false,\"must_restart\":true,\"description\":\"type: , range: ,\"},{\"key\":\"mysqld::gtid-mode\",\"can_set\":false,\"must_restart\":true,\"description\":\"type: enumeration, range: ON,OFF,This option specifies whether global transaction identifiers (GTIDs) are used to identify transactions. Starting the server with --gtid-mode=ON requires that the server also be started with the --log-bin, --log-slave-updates, and --enforce-gtid-consistency options.\"},{\"key\":\"mysqld::enforce-gtid-consistency\",\"can_set\":false,\"must_restart\":true,\"description\":\"type:boolean , When enabled, this option enforces GTID consistency by allowing execution of only those statements that can be logged in a transactionally safe manner. You must enable --enforce-gtid-consistency before setting --gtid-mode to ON; otherwise, enabling GTID mode fails with an error. You can (and should) use this option prior to using --gtid-mode, in order to test whether the system is ready to use GTIDs.\"},{\"key\":\"mysqld::log-slave-updates\",\"can_set\":false,\"must_restart\":true,\"description\":\"type: boolean, Normally, a slave does not write to its own binary log any updates that are received from a master server. This option causes the slave to write the updates performed by its SQL thread to its own binary log.\"},{\"key\":\"mysqld::binlog_checksum\",\"can_set\":false,\"must_restart\":false,\"description\":\"type: string, When enabled, this variable causes the master to write a checksum for each event in the binary log. binlog_checksum supports the values NONE (disabled) and CRC32. The default is CRC32 as of MySQL 5.6.6, NONE before that.\"},{\"key\":\"mysqld::binlog_row_image\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:enumeration , In MySQL row-based replication, each row change event contains two images, a “before” image whose columns are matched against when searching for the row to be updated, and an “after” image containing the changes. \"},{\"key\":\"mysqld::slave_sql_verify_checksum\",\"can_set\":false,\"must_restart\":false,\"description\":\"type: boolean, range: 0,1, Cause the slave SQL thread to verify data using the checksums read from the relay log. In the event of a mismatch, the slave stops with an error.\"},{\"key\":\"mysqld::slave_parallel_workers\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:integer , range:0--1024 ,Sets the number of slave worker threads for executing replication events (transactions) in parallel. Setting this variable to 0 (the default) disables parallel execution. The maximum is 1024.\"},{\"key\":\"mysqld::master_verify_checksum\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:boolean ,Enabling this variable causes the master to examine checksums when reading from the binary log. master_verify_checksum is disabled by default; in this case, the master uses the event length from the binary log to verify events, so that only complete events are read from the binary log.\"},{\"key\":\"mysqld::slave_sql_verify_checksum\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:boolean , range: 0, 1,Cause the slave SQL thread to verify data using the checksums read from the relay log. In the event of a mismatch, the slave stops with an error. \"},{\"key\":\"mysqld::master_info_repository\",\"can_set\":false,\"must_restart\":false,\"description\":\"type: string, The setting of this variable determines whether the slave logs master status and connection information to a FILE (master.info), or to a TABLE (mysql.slave_master_info).\"},{\"key\":\"mysqld::relay_log_info_repository\",\"can_set\":false,\"must_restart\":false,\"description\":\"type: string, This variable determines whether the slave\'s position in the relay logs is written to a FILE (relay-log.info) or to a TABLE (mysql.slave_relay_log_info).\"},{\"key\":\"mysqld::replicate-ignore-db\",\"can_set\":false,\"must_restart\":true,\"description\":\"type:string , As with --replicate-do-db, the effects of this option depend on whether statement-based or row-based replication is in use.\"},{\"key\":\"mysqld::rpl_semi_sync_master_enabled\",\"can_set\":false,\"must_restart\":false,\"description\":\"type: boolean, range: OFF,Controls whether semisynchronous replication is enabled on the master. To enable or disable the plugin, set this variable to ON or OFF (or 1 or 0), respectively. The default is OFF.\"},{\"key\":\"mysqld::auto_increment_increment\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:integer , range:1--65535 ,auto_increment_increment and auto_increment_offset are intended for use with master-to-master replication, and can be used to control the operation of AUTO_INCREMENT columns. \"},{\"key\":\"mysqld::auto_increment_offset\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:integer , range: 1--65535,This variable has a default value of 1. For more information, see the description for auto_increment_increment.\"},{\"key\":\"mysqld::rpl_semi_sync_master_timeout\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:integer , range: 10000,A value in milliseconds that controls how long the master waits on a commit for acknowledgment from a slave before timing out and reverting to asynchronous replication. The default value is 10000 (10 seconds).\"},{\"key\":\"mysqld::rpl_semi_sync_master_wait_no_slave\",\"can_set\":false,\"must_restart\":false,\"description\":\"type: boolean, range:ON ,With semisynchronous replication, for each transaction, the master waits until timeout for acknowledgment of receipt from some semisynchronous slave.\"},{\"key\":\"mysqld::rpl_semi_sync_master_trace_level\",\"can_set\":false,\"must_restart\":false,\"description\":\"type: integer, range:32 ,The semisynchronous replication debug trace level on the master. Four levels are defined\"},{\"key\":\"mysqld::rpl_semi_sync_slave_enabled\",\"can_set\":false,\"must_restart\":false,\"description\":\"type: boolean, range:OFF ,Controls whether semisynchronous replication is enabled on the slave. To enable or disable the plugin, set this variable to ON or OFF (or 1 or 0), respectively. The default is OFF.\"},{\"key\":\"mysqld::rpl_semi_sync_slave_trace_level\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:integer , range:32 ,The semisynchronous replication debug trace level on the slave. See rpl_semi_sync_master_trace_level for the permissible values.\"},{\"key\":\"mysqld::slave_net_timeout\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:integer , The number of seconds to wait for more data from a master/slave connection before aborting the read.\"},{\"key\":\"mysqld::relay_log_recovery\",\"can_set\":false,\"must_restart\":true,\"description\":\"type: boolean, Enables automatic relay log recovery immediately following server startup. The recovery process creates a new relay log file,\"},{\"key\":\"mysqld::log_slave_updates\",\"can_set\":false,\"must_restart\":true,\"description\":\"type: boolean, range: OFF,Normally, a slave does not write to its own binary log any updates that are received from a master server. This option causes the slave to write the updates performed by its SQL thread to its own binary log. \"},{\"key\":\"mysqld::max_relay_log_size\",\"can_set\":false,\"must_restart\":false,\"description\":\"type: integer, range:0--1073741824 ,The size at which the server rotates relay log files automatically. If this value is nonzero, the relay log is rotated automatically when its size exceeds this value. \"},{\"key\":\"mysqld::relay_log\",\"can_set\":false,\"must_restart\":true,\"description\":\"type: file name, The name of the relay log file.\"},{\"key\":\"mysqld::relay_log_purge\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:boolean  ,Disable or enable automatic purging of relay logs as soon as they are no longer needed. The default value is 1 (enabled). This is a global variable that can be changed dynamically with SET GLOBAL relay_log_purge = N. Disabling purging of relay logs when using the --relay-log-recovery option risks data consistency.\"},{\"key\":\"mysqldump::max_allowed_packet\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:integer , range: 1024--1073741824,The maximum size of one packet or any generated/intermediate string, or any parameter sent by the mysql_stmt_send_long_data() C API function. The default is 4MB as of MySQL 5.6.6, 1MB before that.\"},{\"key\":\"myisamchk::key_buffer_size\",\"can_set\":false,\"must_restart\":false,\"description\":\"type: integer, range: 8--OS_PER_PROCESS_LIMIT,Index blocks for MyISAM tables are buffered and are shared by all threads. key_buffer_size is the size of the buffer used for index blocks. The key buffer is also known as the key cache.\"},{\"key\":\"myisamchk::sort_buffer_size\",\"can_set\":false,\"must_restart\":false,\"description\":\"type:integer , range:32768--18446744073709551615 ,Each session that must perform a sort allocates a buffer of this size. sort_buffer_size is not specific to any storage engine and applies in a general manner for optimization.\"}]}', null, null, null, null, '', null);
INSERT INTO `t_gf_dict` VALUES ('dbaas_character', 'utf8', 'utf8', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('dbaas_character', 'gbk', 'gbk', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('backup_strategy', 'manually', '手动', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('software_status', '0', '创建任务', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('software_status', '1', '执行中', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('software_status', '2', '任务中止,未完成', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('software_status', '3', '任务未执行,被取消', null, null, null, null, '', null);
INSERT INTO `t_gf_dict` VALUES ('software_status', '4', '任务完成', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('software_status', '5', '任务超时', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('software_status', '6', '任务失败', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('software_status', 'enable', '启用', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('software_status', 'disable', '停用', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('change_status', 'b4', '变更执行失败', null, null, null, null, '', null);
INSERT INTO `t_gf_dict` VALUES ('business_status', 'b4', '变更执行失败', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_monitor', 'host', '主机类型监控', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_monitor', 'upsql', 'upsql监控', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_monitor', 'upproxy', 'upproxy监控', null, null, '', '', 'default', null);
INSERT INTO `t_gf_dict` VALUES ('event_monitor', 'swm', 'switch_manager监控', null, null, '', '', 'default', null);

-- ----------------------------
-- Table structure for t_gf_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `t_gf_dict_type`;
CREATE TABLE `t_gf_dict_type` (
  `DICT_TYPE_ID` varchar(64) DEFAULT NULL,
  `DICT_TYPE_NAME` varchar(64) DEFAULT NULL,
  `APPID` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_gf_dict_type
-- ----------------------------
INSERT INTO `t_gf_dict_type` VALUES ('cluster_type', '集群类型', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('dbaas_character', '实例字符集', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('performance_list', '性能套餐', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('dbaas_framework', '实例部署类型', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('software_type', '软件类型', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('dbaas_status', '对象状态', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('COF_YESORNO', '菜单子页', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('COF_USERSTATUS', '用户状态', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('san_brand', '存储品牌', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('storage_type', '数据存储类型', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('dbaas_user_type', '实例用户类型', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('network_bandwidth', '网络带宽', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('operate_module', '操作模块', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('operate_type', '操作类型', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('cluster_mark', '集群标签', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('restart_type', '实例版本参数分类', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('event_config', '事件监控项状态', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('event_level', '事件等级', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('backup_type', '备份类型', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('enable_status', '启停状态', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('machine_nodes', '主机状态', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('port_limit', '端口查询限制', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('network_type', '网段类型', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('network_status', '网段状态', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('event_name', '事件名称', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('event_isalarmon', '是否警告', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('business_status', '审批状态', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('lun_id', 'lun_id信息', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('host_lunid', 'host_luni信息', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('netwidth_info', '网络带宽描述', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('site_add', '站点添加静态信息', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('backup_time', '备份时间', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('backupsSize_time', '备份时间', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('manager_status', '管理状态', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('backup_model', '备份类型', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('backup_days', '备份方式为\"按月\"时，指定的日期', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('backup_weeks', '备份方式为\"按周\"时，指定的周数', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('backup_timeout', '超时时间', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('backup_dir', '备份目录', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('unitInstance_role', '实例单元角色', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('unitInstance_manageStatus', '实例单元管理状态', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('change_status', '变更状态', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('site_status', '站点状态', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('network_allot', '网段分配', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('software_template', 'Upsql模板信息', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('backup_strategy', '备份策略', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('software_status', '软件状态', 'default');
INSERT INTO `t_gf_dict_type` VALUES ('event_monitor', '事件监控类型', 'default');

-- ----------------------------
-- Table structure for t_gf_employee
-- ----------------------------
DROP TABLE IF EXISTS `t_gf_employee`;
CREATE TABLE `t_gf_employee` (
  `EMP_ID` varchar(32) DEFAULT NULL,
  `JOB_ID` varchar(32) DEFAULT NULL,
  `USER_NAME` varchar(255) DEFAULT NULL,
  `SEX` int(11) DEFAULT NULL,
  `BIRTHDAY` varchar(10) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `CARD_NO` varchar(10) DEFAULT NULL,
  `CARD_TYPE` varchar(6) DEFAULT NULL,
  `INDATE` varchar(10) DEFAULT NULL,
  `OUTDATE` varchar(10) DEFAULT NULL,
  `OTEL` varchar(32) DEFAULT NULL,
  `MOBILE_NO` int(11) DEFAULT NULL,
  `HTEL` varchar(32) DEFAULT NULL,
  `HADDRESS` varchar(255) DEFAULT NULL,
  `HZIPCODE` varchar(6) DEFAULT NULL,
  `PEMAIL` varchar(32) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `APP_ID` varchar(32) DEFAULT NULL,
  `ORGID` int(11) DEFAULT NULL,
  `EMP_COMMENT` varchar(255) DEFAULT NULL,
  `OEMAIL` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_gf_employee
-- ----------------------------
INSERT INTO `t_gf_employee` VALUES ('1', 'TEST1', 'NAME1', '2', '', '1', 'NO111', '', '', '', '', null, '', '', '', '', '2015-07-01 00:08:47', 'DEFAULT', '1', '', 'demo@goupwith.com');

-- ----------------------------
-- Table structure for t_gf_funcation
-- ----------------------------
DROP TABLE IF EXISTS `t_gf_funcation`;
CREATE TABLE `t_gf_funcation` (
  `FUNC_ID` varchar(32) DEFAULT NULL,
  `FUNC_CODE` varchar(32) DEFAULT NULL,
  `FUNC_NAME` varchar(32) DEFAULT NULL,
  `IS_FUNC` varchar(32) DEFAULT NULL,
  `DISPLAYORDER` int(11) DEFAULT NULL,
  `URL_ACCTION` varchar(128) DEFAULT NULL,
  `PARENT_FUNC_ID` varchar(32) DEFAULT NULL,
  `APPID` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_gf_funcation
-- ----------------------------

-- ----------------------------
-- Table structure for t_gf_log
-- ----------------------------
DROP TABLE IF EXISTS `t_gf_log`;
CREATE TABLE `t_gf_log` (
  `LOG_ID` varchar(32) DEFAULT NULL,
  `ACTION_TYPE` varchar(32) DEFAULT NULL,
  `ACTION_URL` varchar(255) DEFAULT NULL,
  `CREATE_USER_ID` varchar(32) DEFAULT NULL,
  `IS_FUNC` varchar(32) DEFAULT NULL,
  `APP_ID` varchar(32) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATE_USERNAME` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_gf_log
-- ----------------------------

-- ----------------------------
-- Table structure for t_gf_loginuser
-- ----------------------------
DROP TABLE IF EXISTS `t_gf_loginuser`;
CREATE TABLE `t_gf_loginuser` (
  `ID` varchar(32) NOT NULL,
  `EMP_ID` int(11) DEFAULT NULL,
  `USER_ID` varchar(64) DEFAULT NULL,
  `USER_NAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(64) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `MENU_TYPE` varchar(255) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_USERID` varchar(32) DEFAULT NULL,
  `APP_ID` varchar(32) DEFAULT NULL,
  `USER_COMMENT` varchar(255) DEFAULT NULL,
  `VALID_STARTDATE` varchar(10) DEFAULT NULL,
  `VALID_ENDDATE` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_gf_loginuser
-- ----------------------------
INSERT INTO `t_gf_loginuser` VALUES ('1', '1', 'lyk4', 'lyk', '83674c605e6b42f7cc0f83b9a5ba2859', '1', null, '2015-12-21 13:16:59', null, 'DEFAULT', null, '2015-12-19', '2015-12-21');
INSERT INTO `t_gf_loginuser` VALUES ('100', '1', '100001', '租户一', '670b14728ad9902aecba32e22fa4f6bd', '1', null, '2015-10-29 10:09:33', null, 'DEFAULT', null, '', '');
INSERT INTO `t_gf_loginuser` VALUES ('101', '1', '101001', '操作员一', '66fa03f6ba652e2850d5e19d3a3fa9fc', '1', null, '2015-12-21 13:17:33', null, 'DEFAULT', null, '2015-12-20', '');
INSERT INTO `t_gf_loginuser` VALUES ('102', '1', '102001', '监控员一', '670b14728ad9902aecba32e22fa4f6bd', '1', null, '2015-10-29 10:09:58', null, 'DEFAULT', null, '', '');
INSERT INTO `t_gf_loginuser` VALUES ('3', '1', 'lyk2', 'lyk', '670b14728ad9902aecba32e22fa4f6bd', '1', null, '2015-11-17 18:23:04', null, 'DEFAULT', null, null, null);
INSERT INTO `t_gf_loginuser` VALUES ('4', '1', 'admin', '管理员', '670b14728ad9902aecba32e22fa4f6bd', '1', null, '2015-11-24 13:40:17', null, 'DEFAULT', null, null, null);

-- ----------------------------
-- Table structure for t_gf_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_gf_menu`;
CREATE TABLE `t_gf_menu` (
  `MENUID` varchar(40) DEFAULT NULL,
  `MENUNAME` varchar(40) DEFAULT NULL,
  `MENULABEL` varchar(40) DEFAULT NULL,
  `MENUCODE` varchar(40) DEFAULT NULL,
  `ISLEAF` varchar(1) DEFAULT NULL,
  `PARAMETER` varchar(255) DEFAULT NULL,
  `DISPLAYORDER` smallint(6) DEFAULT NULL,
  `APP_ID` varchar(64) DEFAULT NULL,
  `MENU_ACTION` varchar(255) DEFAULT NULL,
  `PARENTMENUID` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_gf_menu
-- ----------------------------
INSERT INTO `t_gf_menu` VALUES ('91', '用户管理', '用户管理', 'MENU_USER_MANAGER', '1', '', '1', 'DEFAULT', '/goframe/user/user_list.jsp', '9');
INSERT INTO `t_gf_menu` VALUES ('92', '角色管理', '角色管理', 'MENU_ROLE_MANAGER', '1', '', '2', 'DEFAULT', '/goframe/role/role_manager.jsp', '9');
INSERT INTO `t_gf_menu` VALUES ('93', '菜单管理', '菜单管理', 'MENU_MENU_MANAGER', '1', '', '3', 'DEFAULT', '/goframe/menu/menu_manage.jsp', '9');
INSERT INTO `t_gf_menu` VALUES ('94', '授权管理', '授权管理', 'MENU_AUTH', '1', '', '4', 'DEFAULT', '/goframe/auth/role_auth.jsp', '9');
INSERT INTO `t_gf_menu` VALUES ('942', '字典管理', '字典管理', 'MENU_DICT_MANAGER', '1', '', '6', 'DEFAULT', '/goframe/dict/dict_manager.jsp', '9');
INSERT INTO `t_gf_menu` VALUES ('100', '日志管理', '日志管理', 'MENU_LOG', '2', '', '50', 'DEFAULT', '', 'root');
INSERT INTO `t_gf_menu` VALUES ('1001', '日志管理', '日志管理', 'MENU_logmm', '1', '', '1', 'default', '/dbaas/log/log_list.jsp', '100');
INSERT INTO `t_gf_menu` VALUES ('2', '资源管理', '资源管理', 'MENU_PMM_SOURCE', '2', '', '1', 'default', '', 'root');
INSERT INTO `t_gf_menu` VALUES ('21', '主机管理', '主机管理', 'MENU_PMM', '1', '', '9', 'default', '/dbaas/machine/machine_manager.jsp', '2');
INSERT INTO `t_gf_menu` VALUES ('22', '集群管理', '集群管理', 'MENU_CLUSTER', '1', '', '7', 'default', '/dbaas/cluster/cluster_manager.jsp', '2');
INSERT INTO `t_gf_menu` VALUES ('23', '站点管理', '站点管理', 'MENU_SITE', '1', '', '1', 'default', '/dbaas/site/site_manager.jsp', '2');
INSERT INTO `t_gf_menu` VALUES ('25', '软件管理', '软件管理', 'MENU_MM', '1', '', '5', 'default', '/dbaas/software/soft_manager.jsp', '2');
INSERT INTO `t_gf_menu` VALUES ('26', '存储管理', '存储管理', 'MENU_SMM', '1', '', '6', 'default', '/dbaas/sanStorage/sanStorage_manager.jsp', '2');
INSERT INTO `t_gf_menu` VALUES ('63', '申请审批', '申请审批', 'MENU_APPLY_LIST', '1', '', '4', 'default', '/dbaas/instance/applyList.jsp', '6');
INSERT INTO `t_gf_menu` VALUES ('81', '网段管理', '网段管理', 'MENU_ip_config', '1', '', '3', 'default', '/dbaas/network/network_manager.jsp', '2');
INSERT INTO `t_gf_menu` VALUES ('2101', '基本信息', '基本信息', 'MENU_machine_detail', '1', '', '2', 'machine', '/dbaas/machine/machine_info.jsp', 'machine');
INSERT INTO `t_gf_menu` VALUES ('2102', '网络流量', '网络流量', 'MENU_docker_alloca', '1', '', '3', 'machine', '/dbaas/machine/net_flow.jsp', 'machine');
INSERT INTO `t_gf_menu` VALUES ('2103', 'CPU使用率', 'CPU使用率', 'MENU_CPU_alloca', '1', '', '4', 'machine', '/dbaas/machine/cpu_usage.jsp', 'machine');
INSERT INTO `t_gf_menu` VALUES ('2104', '内存使用率', '内存使用率', 'MENU_RAM_alloca', '1', '', '5', 'machine', '/dbaas/machine/mem_usage.jsp', 'machine');
INSERT INTO `t_gf_menu` VALUES ('2105', 'home目录使用率', '系统目录使用率', 'MENU_ram_use', '1', '', '8', 'machine', '/dbaas/machine/file_home_usage.jsp', 'machine');
INSERT INTO `t_gf_menu` VALUES ('517', '基本信息', 'DBaaS实例基本信息', 'MENU_INSTANCE_INFO', '1', null, '1', 'instance', '/dbaas/instance/instanceInfo.jsp', 'instance');
INSERT INTO `t_gf_menu` VALUES ('518', '安全管理', '安全管理', 'MENU_INSTANCE_SECURITY', '1', '', '2', 'instance', '/dbaas/instance/securitySet.jsp', 'instance');
INSERT INTO `t_gf_menu` VALUES ('519', '参数管理', '参数管理', 'MENU_dbaas_set', '1', '', '3', 'instance', '/dbaas/instance/parameterSet.jsp', 'instance');
INSERT INTO `t_gf_menu` VALUES ('521', '备份列表', '备份列表', 'MENU_BACKUP_RESTORE', '1', '', '4', 'instance', '/dbaas/instance/backupAndRestore.jsp', 'instance');
INSERT INTO `t_gf_menu` VALUES ('522', '模块管理', '模块管理', 'MENU_UPSQL_MAN', '1', '', '6', 'instance', '/dbaas/instance/instanceUnitManger.jsp', 'instance');
INSERT INTO `t_gf_menu` VALUES ('524', '模块监控', '模块监控', 'MENU_UPSQL_MON', '1', '', '7', 'instance', '/dbaas/monitor/instanceUnitMonitor.jsp', 'instance');
INSERT INTO `t_gf_menu` VALUES ('525', '网络监控', '网络监控', 'MENU_UPPROXY_MON', '1', '', '8', 'instance', '/dbaas/upproxyMonitor/upproxyManager.jsp', 'instance');
INSERT INTO `t_gf_menu` VALUES ('6', '业务管理', '业务管理', 'MENU_DBA_INSTANCE', '2', '', '4', 'default', '', 'root');
INSERT INTO `t_gf_menu` VALUES ('61', '实例管理', '实例管理', 'MENU_DBA', '1', '', '3', 'default', '/dbaas/instance/instanceList.jsp', '6');
INSERT INTO `t_gf_menu` VALUES ('591', '变更审批', '变更审批', 'instance_up', '1', '', '5', 'default', '/dbaas/instance/instanceUpdate.jsp', '6');
INSERT INTO `t_gf_menu` VALUES ('611', '监控管理', '监控管理', 'MENU_MONITOR', '2', '', '6', 'default', '', 'root');
INSERT INTO `t_gf_menu` VALUES ('614', '站点资源监控', '站点资源监控', 'MENU_SITE_MACHINE', '1', '', '1', 'default', '/dbaas/monitor/siteMonitorAllocation.jsp', '611');
INSERT INTO `t_gf_menu` VALUES ('615', '主机资源监控', '主机资源监控', 'MENU_SITE_MACHINE1', '1', '', '2', 'default', '/dbaas/monitor/machineInstanceRelation.jsp', '611');
INSERT INTO `t_gf_menu` VALUES ('621', '实例状态监控', '实例状态监控', 'menu_instance_status', '1', '', '3', 'default', '/dbaas/monitor/machineInstanceLocation.jsp', '611');
INSERT INTO `t_gf_menu` VALUES ('9', '系统维护', '系统维护', 'MENU_SYSTEM', '2', '', '9999', 'DEFAULT', '', 'root');
INSERT INTO `t_gf_menu` VALUES ('661', '任务监控', '任务监控', 'task_monitor', '1', '', '2', 'DEFAULT', 'http://127.0.0.1:9000/dbaas/task/task_list.jsp', '100');
INSERT INTO `t_gf_menu` VALUES ('692', '事件监控', '事件监控', 'event_monitor', '1', '', '5', 'default', '/dbaas/monitor/eventMonitor.jsp', '611');
INSERT INTO `t_gf_menu` VALUES ('701', '告警管理', '告警管理', 'treated_alarm', '1', '', '3', 'DEFAULT', '/dbaas/alert/untradeAlert_manager.jsp', '100');
INSERT INTO `t_gf_menu` VALUES ('711', 'root目录使用率', '系统目录总量', 'machine_data_total', '1', '', '6', 'machine', '/dbaas/machine/file_root_usage.jsp', 'machine');
INSERT INTO `t_gf_menu` VALUES ('721', '主从监控', '主从监控', 'MENU_UPSQLMS_MON', '1', '', '9', 'instance', '/dbaas/upsqlMonitor/masterSlave.jsp', 'instance');
INSERT INTO `t_gf_menu` VALUES ('722', '组件监控', '组件监控', 'MG_monitor', '1', '', '6', 'default', '/dbaas/monitor/mg_service_status.jsp', '611');
INSERT INTO `t_gf_menu` VALUES ('731', '端口管理', '端口管理', 'MENU_PORT', '1', '', '4', 'default', '/dbaas/port/port_manager.jsp', '2');
INSERT INTO `t_gf_menu` VALUES ('741', '子系统管理', '子系统管理', 'business_system', '1', '', '2', 'default', '/dbaas/businessSys/businessSys_manager.jsp', '6');
INSERT INTO `t_gf_menu` VALUES ('751', '备份策略', '备份策略', 'MENU_BACKUP_STRATEGY', '1', '', '5', 'instance', '/dbaas/instance/backupStrategy.jsp', 'instance');
INSERT INTO `t_gf_menu` VALUES ('761', '系统管理', '系统管理', 'business', '1', '', '1', 'default', '/dbaas/business/business_manager.jsp', '6');
INSERT INTO `t_gf_menu` VALUES ('771', '区域管理', '区域管理', 'MENU_AREA', '1', '', '2', 'default', '/dbaas/area/area_manager.jsp', '2');
INSERT INTO `t_gf_menu` VALUES ('782', '事件配置', '事件配置', 'monitor_config', '1', '', '6', 'default', '/dbaas/eventConfig/eventConfig_manager.jsp', '611');
INSERT INTO `t_gf_menu` VALUES ('783', '监控项类型配置', '监控项类型配置', 'monitor_item', '1', '', '7', 'default', '/dbaas/monitor/monitorItemConfig.jsp', '611');

-- ----------------------------
-- Table structure for t_gf_org
-- ----------------------------
DROP TABLE IF EXISTS `t_gf_org`;
CREATE TABLE `t_gf_org` (
  `ORGID` int(11) DEFAULT NULL,
  `ORGNAME` varchar(255) DEFAULT NULL,
  `ORGCODE` varchar(255) DEFAULT NULL,
  `ORG_LEVEL` int(11) DEFAULT NULL,
  `ORG_SEQ` varchar(255) DEFAULT NULL,
  `ORG_TYPE` varchar(32) DEFAULT NULL,
  `ORG_ADDRESS` varchar(255) DEFAULT NULL,
  `ZIPCODE` varchar(6) DEFAULT NULL,
  `LINKMAN` varchar(32) DEFAULT NULL,
  `LINKTEL` varchar(32) DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DISPLAY_ORDER` int(11) DEFAULT NULL,
  `ORG_COMMENT` varchar(255) DEFAULT NULL,
  `APP_ID` varchar(32) DEFAULT NULL,
  `PARENT_ORGID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_gf_org
-- ----------------------------
INSERT INTO `t_gf_org` VALUES ('1', '长江养老', '000001', '1', '.1.', '1', '111333', '', '', '', '2015-07-01 00:09:06', '2015-07-01 00:09:06', null, '', 'DEFAULT', '0');
INSERT INTO `t_gf_org` VALUES ('2', '机构55557', '000002', '2', '.1.2.', 'UNDEFINED', '2222', '673', '444', '123455666', '2015-07-01 00:09:06', '2015-07-01 00:09:06', '12', 'BEIZHU', 'DEFAULT', '1');
INSERT INTO `t_gf_org` VALUES ('3', '机构33', '000003', '2', '.1.3.', '3', '21', '21', '12', '21', '2015-07-01 00:09:06', '2015-07-01 00:09:06', '3', '33333', 'DEFAULT', '1');
INSERT INTO `t_gf_org` VALUES ('11', '222', '333', null, '.1.2.11.', '1', '', '', '', '', '2014-07-28 00:00:00', '2015-07-01 00:09:06', null, '', 'DEFAULT', '2');
INSERT INTO `t_gf_org` VALUES ('12', '顶顶顶', '12', null, '.1.2.12.', '2', '', '', '', '', '2014-07-28 00:00:00', '2014-07-28 00:00:00', null, '', 'DEFAULT', '2');
INSERT INTO `t_gf_org` VALUES ('13', '34', '34', null, '.1.2.13.', '1', '', '', '', '', '2014-07-28 00:00:00', '2014-07-28 00:00:00', null, '', 'DEFAULT', '2');
INSERT INTO `t_gf_org` VALUES ('14', 'ERE', 'ER', null, '.1.14.', '2', '', '', '', '', '2014-07-28 00:00:00', '2014-07-28 00:00:00', null, '', 'DEFAULT', '1');
INSERT INTO `t_gf_org` VALUES ('15', 'EEE', '33', null, '.1.2.15.', '1', '', '', '', '', '2014-07-28 00:00:00', '2014-07-28 00:00:00', null, '', 'DEFAULT', '2');
INSERT INTO `t_gf_org` VALUES ('31', 'AAA', '1111', null, '.1.3.31.', '', '', '', '', '', '2014-07-29 00:00:00', '2014-07-29 00:00:00', null, '', 'DEFAULT', '3');

-- ----------------------------
-- Table structure for t_gf_res_auth
-- ----------------------------
DROP TABLE IF EXISTS `t_gf_res_auth`;
CREATE TABLE `t_gf_res_auth` (
  `ID` varchar(32) DEFAULT NULL,
  `AUTH_ID` varchar(32) DEFAULT NULL,
  `AUTH_TYPE` varchar(32) DEFAULT NULL,
  `RES_ID` varchar(32) DEFAULT NULL,
  `APP_ID` varchar(32) DEFAULT NULL,
  `RES_TYPE` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_gf_res_auth
-- ----------------------------
INSERT INTO `t_gf_res_auth` VALUES ('4261', 'ADMIN', 'role', '2101', 'machine', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4262', 'ADMIN', 'role', '2102', 'machine', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4263', 'ADMIN', 'role', '2103', 'machine', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4264', 'ADMIN', 'role', '2104', 'machine', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4265', 'ADMIN', 'role', '711', 'machine', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4266', 'ADMIN', 'role', '2105', 'machine', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4491', 'ADMIN', 'role', '517', 'instance', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4492', 'ADMIN', 'role', '518', 'instance', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4493', 'ADMIN', 'role', '519', 'instance', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4494', 'ADMIN', 'role', '521', 'instance', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4495', 'ADMIN', 'role', '751', 'instance', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4496', 'ADMIN', 'role', '522', 'instance', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4497', 'ADMIN', 'role', '524', 'instance', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4498', 'ADMIN', 'role', '525', 'instance', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4499', 'ADMIN', 'role', '721', 'instance', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4561', 'ADMIN', 'role', '23', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4562', 'ADMIN', 'role', '771', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4563', 'ADMIN', 'role', '22', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4564', 'ADMIN', 'role', '26', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4565', 'ADMIN', 'role', '731', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4566', 'ADMIN', 'role', '81', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4567', 'ADMIN', 'role', '25', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4568', 'ADMIN', 'role', '21', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4569', 'ADMIN', 'role', '761', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4570', 'ADMIN', 'role', '741', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4571', 'ADMIN', 'role', '61', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4572', 'ADMIN', 'role', '63', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4573', 'ADMIN', 'role', '591', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4574', 'ADMIN', 'role', '614', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4575', 'ADMIN', 'role', '615', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4576', 'ADMIN', 'role', '621', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4577', 'ADMIN', 'role', '692', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4578', 'ADMIN', 'role', '722', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4579', 'ADMIN', 'role', '782', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4580', 'ADMIN', 'role', '783', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4581', 'ADMIN', 'role', '1001', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4582', 'ADMIN', 'role', '661', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4583', 'ADMIN', 'role', '701', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4584', 'ADMIN', 'role', '91', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4585', 'ADMIN', 'role', '92', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4586', 'ADMIN', 'role', '93', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4587', 'ADMIN', 'role', '94', 'default', 'menu');
INSERT INTO `t_gf_res_auth` VALUES ('4588', 'ADMIN', 'role', '942', 'default', 'menu');

-- ----------------------------
-- Table structure for t_gf_role
-- ----------------------------
DROP TABLE IF EXISTS `t_gf_role`;
CREATE TABLE `t_gf_role` (
  `ROLEID` varchar(32) DEFAULT NULL,
  `ROLENAME` varchar(32) DEFAULT NULL,
  `ROLE_DESC` varchar(255) DEFAULT NULL,
  `APP_ID` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_gf_role
-- ----------------------------
INSERT INTO `t_gf_role` VALUES ('ADMIN', '管理员组', 'DBaaS平台系统管理员', 'DEFAULT');
INSERT INTO `t_gf_role` VALUES ('Tenant', '租户', '租户', 'default');
INSERT INTO `t_gf_role` VALUES ('Operator', '一线操作员', '一线操作员', 'default');
INSERT INTO `t_gf_role` VALUES ('Monitor', '一线监控员', '一线监控员', 'default');

-- ----------------------------
-- Table structure for t_gf_unique_table
-- ----------------------------
DROP TABLE IF EXISTS `t_gf_unique_table`;
CREATE TABLE `t_gf_unique_table` (
  `NAME` varchar(64) DEFAULT NULL,
  `CODE` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_gf_unique_table
-- ----------------------------
INSERT INTO `t_gf_unique_table` VALUES ('GF_RES_AUTH', '4590');
INSERT INTO `t_gf_unique_table` VALUES ('GFAUTHRIGHT', '110');
INSERT INTO `t_gf_unique_table` VALUES ('GFEMPLOYEE', '50');
INSERT INTO `t_gf_unique_table` VALUES ('GFMENU', '790');
INSERT INTO `t_gf_unique_table` VALUES ('GFORG', '40');
INSERT INTO `t_gf_unique_table` VALUES ('GFUSER', '240');

-- ----------------------------
-- Table structure for tbl_dbaas_alert
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dbaas_alert`;
CREATE TABLE `tbl_dbaas_alert` (
  `alert_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键自增长，告警id',
  `instance_id` int(11) DEFAULT NULL COMMENT '实例id',
  `ip` varchar(16) CHARACTER SET utf8 DEFAULT NULL COMMENT '告警发生的IP',
  `port` varchar(16) CHARACTER SET utf8 DEFAULT NULL COMMENT '实例端口',
  `alert_info` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '告警信息',
  `alert_time` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '告警时间',
  `alert_level` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '告警级别',
  `solve_desc` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '告警解决描述',
  `status` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '告警状态',
  `admin` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `solve_time` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '告警解决时间',
  `alert_type` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '告警类型',
  `alert_name` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '告警名称',
  `computer_name` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '物理机名称',
  PRIMARY KEY (`alert_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_dbaas_alert
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dbaas_area
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dbaas_area`;
CREATE TABLE `tbl_dbaas_area` (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `area_name` varchar(255) NOT NULL,
  `area_description` varchar(255) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dbaas_area
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dbaas_business
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dbaas_business`;
CREATE TABLE `tbl_dbaas_business` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统ID',
  `name` varchar(64) DEFAULT NULL COMMENT '系统名称',
  `name_code` varchar(64) DEFAULT NULL COMMENT '系统编码',
  `creator` varchar(64) DEFAULT NULL COMMENT '创建者',
  `created` timestamp NULL DEFAULT NULL COMMENT '时间',
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='业务类型表';

-- ----------------------------
-- Records of tbl_dbaas_business
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dbaas_business_system
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dbaas_business_system`;
CREATE TABLE `tbl_dbaas_business_system` (
  `system_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增长',
  `creator` varchar(64) DEFAULT NULL COMMENT '所属用户，即创建者',
  `name` varchar(100) DEFAULT NULL COMMENT '业务类型名称',
  `created` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `site_id` int(11) DEFAULT NULL,
  `sql_software` varchar(64) DEFAULT NULL,
  `name_code` varchar(64) DEFAULT NULL,
  `business_system` varchar(64) DEFAULT NULL,
  `performance` varchar(64) DEFAULT NULL,
  `storage_type` varchar(64) DEFAULT NULL,
  `network_bandwidth` varchar(2000) DEFAULT NULL,
  `charset` varchar(64) DEFAULT NULL,
  `framework` varchar(64) DEFAULT NULL,
  `node` int(11) DEFAULT NULL COMMENT '根据不同的部署架构存入不同的值',
  `space_size` int(11) DEFAULT NULL,
  `backup_size` int(11) DEFAULT NULL,
  `status` varchar(64) DEFAULT NULL,
  `proxy_software` varchar(64) DEFAULT NULL,
  `machine` varchar(64) DEFAULT NULL,
  `network` varchar(64) DEFAULT NULL,
  `delete_falag` tinyint(64) DEFAULT NULL,
  `creator_pwd` varchar(64) DEFAULT NULL COMMENT '用户密码',
  `network_id` int(11) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `switch_software` varchar(64) DEFAULT NULL,
  `space_sizes` int(11) DEFAULT NULL COMMENT '变更后',
  `backup_sizes` int(11) DEFAULT NULL COMMENT '变更后备份容量',
  `performances` varchar(64) DEFAULT NULL COMMENT '变更后的性能',
  `change_status` varchar(64) DEFAULT NULL COMMENT '变更标志',
  `business_id` int(11) DEFAULT NULL COMMENT '系统ID',
  `area_id` int(11) DEFAULT NULL,
  `os_user` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`system_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COMMENT='业务类型表';

-- ----------------------------
-- Records of tbl_dbaas_business_system
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dbaas_cluster
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dbaas_cluster`;
CREATE TABLE `tbl_dbaas_cluster` (
  `cluster_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增长',
  `relate_id` varchar(64) DEFAULT NULL,
  `cluster_name` varchar(255) DEFAULT NULL COMMENT '集群名称',
  `site_id` varchar(11) NOT NULL COMMENT '所属站点',
  `cluster_type` varchar(64) NOT NULL COMMENT '集群类型',
  `store_type` varchar(64) NOT NULL,
  `online_type` varchar(64) DEFAULT NULL COMMENT '联机类型',
  `capacity` varchar(11) DEFAULT NULL COMMENT '物理机容量上线',
  `used_limit` varchar(11) DEFAULT NULL COMMENT '使用上限',
  `cluster_mark` varchar(64) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `status` varchar(64) DEFAULT NULL COMMENT '状态，关联字典表',
  `creator` varchar(64) NOT NULL COMMENT '创建者',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `storage_id` varchar(128) DEFAULT NULL COMMENT '存储ID',
  `area_id` int(11) DEFAULT NULL COMMENT '区域ID',
  `network_id` varchar(64) DEFAULT NULL COMMENT '网段的ID（relate_id）',
  PRIMARY KEY (`cluster_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dbaas_cluster
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dbaas_computer
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dbaas_computer`;
CREATE TABLE `tbl_dbaas_computer` (
  `computer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增长',
  `relate_id` varchar(64) DEFAULT NULL,
  `computer_name` varchar(64) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL COMMENT '接入站点',
  `cluster_id` int(11) DEFAULT NULL COMMENT '所属集群',
  `register_ip` varchar(64) DEFAULT NULL COMMENT '物理机临时IP，即注册时的IP',
  `os_user` varchar(64) DEFAULT NULL COMMENT 'OS用户名',
  `os_pwd` varchar(64) DEFAULT NULL COMMENT 'OS密码',
  `software_id` varchar(64) DEFAULT NULL COMMENT '初始化软件介质',
  `dbaas_capacity` int(11) DEFAULT NULL COMMENT 'dbaas实例上线',
  `status` varchar(64) DEFAULT NULL COMMENT '状态，关联业务字典表',
  `dbaas_ip` varchar(64) DEFAULT NULL COMMENT '入库后分配的平台IP ',
  `creator` varchar(64) DEFAULT NULL COMMENT '申请入库者',
  `created` timestamp NULL DEFAULT NULL COMMENT '申请入库时间',
  `computer_room` varchar(64) DEFAULT NULL COMMENT '机房编号',
  `computer_gantry` varchar(64) DEFAULT NULL COMMENT '机架编号',
  `depth_monitor` varchar(1) DEFAULT NULL COMMENT '深度监控是否开启',
  `hdd` varchar(128) DEFAULT NULL COMMENT '主机hdd',
  `ssd` varchar(128) DEFAULT NULL COMMENT '主机ssd',
  PRIMARY KEY (`computer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dbaas_computer
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dbaas_event_config
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dbaas_event_config`;
CREATE TABLE `tbl_dbaas_event_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '事件id',
  `metricclass` varchar(64) DEFAULT NULL COMMENT '监控项',
  `metricclass_name` varchar(64) DEFAULT NULL COMMENT '监控项名称',
  `level` varchar(64) DEFAULT NULL COMMENT '事件等级',
  `event_desction` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '事件描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dbaas_event_config
-- ----------------------------
INSERT INTO `tbl_dbaas_event_config` VALUES ('1', 'host.cpu_usage', 'cpu使用率', 'critical', 'cpu使用率的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('2', 'host.cpu_usage', 'cpu使用率', 'warning', 'cpu使用率的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('3', 'host.cpu_usage', 'cpu使用率', 'normal', 'cpu使用率的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('4', 'host.cpu_usage', 'cpu使用率', 'info', 'cpu使用率的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('5', 'host.homedir_application_amount', '系统home目录使用率', 'critical', '系统home目录使用率的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('6', 'host.homedir_application_amount', '系统home目录使用率', 'warning', '系统home目录使用率的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('7', 'host.homedir_application_amount', '系统home目录使用率', 'normal', '系统home目录使用率的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('8', 'host.homedir_application_amount', '系统home目录使用率', 'info', '系统home目录使用率的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('9', 'host.rootdir_application_amount', '系统root目录使用率', 'critical', '系统root目录使用率的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('10', 'host.rootdir_application_amount', '系统root目录使用率', 'warning', '系统root目录使用率的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('11', 'host.rootdir_application_amount', '系统root目录使用率', 'normal', '系统root目录使用率的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('12', 'host.rootdir_application_amount', '系统root目录使用率', 'info', '系统root目录使用率的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('13', 'host.mem_usage', '内存使用率', 'critical', '内存使用率的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('14', 'host.mem_usage', '内存使用率', 'warning', '内存使用率的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('15', 'host.mem_usage', '内存使用率', 'normal', '内存使用率的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('16', 'host.mem_usage', '内存使用率', 'info', '内存使用率的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('17', 'host.network.bond.input', '网络input', 'critical', '网络input的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('18', 'host.network.bond.input', '网络input', 'warning', '网络input的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('19', 'host.network.bond.input', '网络input', 'normal', '网络input的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('20', 'host.network.bond.input', '网络input', 'info', '网络input的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('21', 'host.network.bond.output', '网络output', 'critical', '网络output的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('22', 'host.network.bond.output', '网络output', 'warning', '网络output的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('23', 'host.network.bond.output', '网络output', 'normal', '网络output的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('24', 'host.network.bond.output', '网络output', 'info', '网络output的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('25', 'swm.datadir_application_amount', 'swm实例所属容器data目录使用率', 'critical', 'swm实例所属容器data目录使用率的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('26', 'swm.datadir_application_amount', 'swm实例所属容器data目录使用率', 'warning', 'swm实例所属容器data目录使用率的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('27', 'swm.datadir_application_amount', 'swm实例所属容器data目录使用率', 'normal', 'swm实例所属容器data目录使用率的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('28', 'swm.datadir_application_amount', 'swm实例所属容器data目录使用率', 'info', 'swm实例所属容器data目录使用率的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('29', 'swm.logdir_application_amount', 'swm实例所属容器log目录使用率', 'critical', 'swm实例所属容器log目录使用率的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('30', 'swm.logdir_application_amount', 'swm实例所属容器log目录使用率', 'warning', 'swm实例所属容器log目录使用率的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('31', 'swm.logdir_application_amount', 'swm实例所属容器log目录使用率', 'normal', 'swm实例所属容器log目录使用率的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('32', 'swm.logdir_application_amount', 'swm实例所属容器log目录使用率', 'info', 'swm实例所属容器log目录使用率的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('33', 'swm.cpu_usage', 'swm实例所属容器cpu使用率', 'critical', 'swm实例所属容器cpu使用率的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('34', 'swm.cpu_usage', 'swm实例所属容器cpu使用率', 'warning', 'swm实例所属容器cpu使用率的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('35', 'swm.cpu_usage', 'swm实例所属容器cpu使用率', 'normal', 'swm实例所属容器cpu使用率的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('36', 'swm.cpu_usage', 'swm实例所属容器cpu使用率', 'info', 'swm实例所属容器cpu使用率的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('37', 'swm.mem_usage', 'swm实例所属容器内存使用率', 'critical', 'swm实例所属容器内存使用率的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('38', 'swm.mem_usage', 'swm实例所属容器内存使用率', 'warning', 'swm实例所属容器内存使用率的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('39', 'swm.mem_usage', 'swm实例所属容器内存使用率', 'normal', 'swm实例所属容器内存使用率的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('40', 'swm.mem_usage', 'swm实例所属容器内存使用率', 'info', 'swm实例所属容器内存使用率的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('41', 'swm.service_status', 'swm实例状态', 'critical', 'swm实例状态的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('42', 'swm.service_status', 'swm实例状态', 'warning', 'swm实例状态的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('43', 'swm.service_status', 'swm实例状态', 'normal', 'swm实例状态的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('44', 'upproxy.error_file_size', 'upproxy实例错误文件大小', 'critical', 'upproxy实例错误文件大小的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('45', 'upproxy.error_file_size', 'upproxy实例错误文件大小', 'warning', 'upproxy实例错误文件大小的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('46', 'upproxy.error_file_size', 'upproxy实例错误文件大小', 'normal', 'upproxy实例错误文件大小的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('47', 'upproxy.error_file_size', 'upproxy实例错误文件大小', 'info', 'upproxy实例错误文件大小的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('48', 'upproxy.datadir_application_amount', 'upproxy实例所属容器data目录使用率', 'critical', 'upproxy实例所属容器data目录使用率的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('49', 'upproxy.datadir_application_amount', 'upproxy实例所属容器data目录使用率', 'warning', 'upproxy实例所属容器data目录使用率的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('50', 'upproxy.datadir_application_amount', 'upproxy实例所属容器data目录使用率', 'normal', 'upproxy实例所属容器data目录使用率的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('51', 'upproxy.datadir_application_amount', 'upproxy实例所属容器data目录使用率', 'info', 'upproxy实例所属容器data目录使用率的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('52', 'upproxy.logdir_application_amount', 'upproxy实例所属容器log目录使用率', 'critical', 'upproxy实例所属容器log目录使用率的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('53', 'upproxy.logdir_application_amount', 'upproxy实例所属容器log目录使用率', 'warning', 'upproxy实例所属容器log目录使用率的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('54', 'upproxy.logdir_application_amount', 'upproxy实例所属容器log目录使用率', 'normal', 'upproxy实例所属容器log目录使用率的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('55', 'upproxy.logdir_application_amount', 'upproxy实例所属容器log目录使用率', 'info', 'upproxy实例所属容器log目录使用率的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('56', 'upproxy.cpu_usage', 'upproxy实例所属容器cpu使用率', 'critical', 'upproxy实例所属容器cpu使用率的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('57', 'upproxy.cpu_usage', 'upproxy实例所属容器cpu使用率', 'warning', 'upproxy实例所属容器cpu使用率的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('58', 'upproxy.cpu_usage', 'upproxy实例所属容器cpu使用率', 'normal', 'upproxy实例所属容器cpu使用率的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('59', 'upproxy.cpu_usage', 'upproxy实例所属容器cpu使用率', 'info', 'upproxy实例所属容器cpu使用率的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('60', 'upproxy.mem_usage', 'upproxy实例所属容器内存使用率', 'critical', 'upproxy实例所属容器内存使用率的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('61', 'upproxy.mem_usage', 'upproxy实例所属容器内存使用率', 'warning', 'upproxy实例所属容器内存使用率的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('62', 'upproxy.mem_usage', 'upproxy实例所属容器内存使用率', 'normal', 'upproxy实例所属容器内存使用率的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('63', 'upproxy.mem_usage', 'upproxy实例所属容器内存使用率', 'info', 'upproxy实例所属容器内存使用率的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('64', 'upproxy.service_status', 'upproxy实例状态', 'critical', 'upproxy实例状态的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('65', 'upproxy.service_status', 'upproxy实例状态', 'warning', 'upproxy实例状态的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('66', 'upproxy.service_status', 'upproxy实例状态', 'normal', 'upproxy实例状态的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('67', 'upsql.buffer_pool_hit', 'upsql实例buffer命中率', 'critical', 'upsql实例buffer命中率的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('68', 'upsql.buffer_pool_hit', 'upsql实例buffer命中率', 'warning', 'upsql实例buffer命中率的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('69', 'upsql.buffer_pool_hit', 'upsql实例buffer命中率', 'normal', 'upsql实例buffer命中率的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('70', 'upsql.buffer_pool_hit', 'upsql实例buffer命中率', 'info', 'upsql实例buffer命中率的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('71', 'upsql.buffer_pool_usage', 'upsql实例buffer使用率', 'critical', 'upsql实例buffer使用率的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('72', 'upsql.buffer_pool_usage', 'upsql实例buffer使用率', 'warning', 'upsql实例buffer使用率的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('73', 'upsql.buffer_pool_usage', 'upsql实例buffer使用率', 'normal', 'upsql实例buffer使用率的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('74', 'upsql.buffer_pool_usage', 'upsql实例buffer使用率', 'info', 'upsql实例buffer使用率的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('75', 'upsql.buffer_pool_dirty_page', 'upsql实例buffer脏页数', 'critical', 'upsql实例buffer脏页数的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('76', 'upsql.buffer_pool_dirty_page', 'upsql实例buffer脏页数', 'warning', 'upsql实例buffer脏页数的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('77', 'upsql.buffer_pool_dirty_page', 'upsql实例buffer脏页数', 'normal', 'upsql实例buffer脏页数的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('78', 'upsql.buffer_pool_dirty_page', 'upsql实例buffer脏页数', 'info', 'upsql实例buffer脏页数的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('79', 'upsql.connection_usage', 'upsql实例连接使用率', 'critical', 'upsql实例连接使用率的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('80', 'upsql.connection_usage', 'upsql实例连接使用率', 'warning', 'upsql实例连接使用率的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('81', 'upsql.connection_usage', 'upsql实例连接使用率', 'normal', 'upsql实例连接使用率的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('82', 'upsql.connection_usage', 'upsql实例连接使用率', 'info', 'upsql实例连接使用率的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('83', 'upsql.thread_cache_usage', 'upsql实例cache使用率', 'critical', 'upsql实例cache使用率的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('84', 'upsql.thread_cache_usage', 'upsql实例cache使用率', 'warning', 'upsql实例cache使用率的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('85', 'upsql.thread_cache_usage', 'upsql实例cache使用率', 'normal', 'upsql实例cache使用率的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('86', 'upsql.thread_cache_usage', 'upsql实例cache使用率', 'info', 'upsql实例cache使用率的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('87', 'upsql.error_file_size', 'upsql实例错误文件大小', 'critical', 'upsql实例错误文件大小的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('88', 'upsql.error_file_size', 'upsql实例错误文件大小', 'warning', 'upsql实例错误文件大小的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('89', 'upsql.error_file_size', 'upsql实例错误文件大小', 'normal', 'upsql实例错误文件大小的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('90', 'upsql.error_file_size', 'upsql实例错误文件大小', 'info', 'upsql实例错误文件大小的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('91', 'upsql.slow_query_file_size', 'upsql实例慢日志文件大小', 'critical', 'upsql实例慢日志文件大小的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('92', 'upsql.slow_query_file_size', 'upsql实例慢日志文件大小', 'warning', 'upsql实例慢日志文件大小的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('93', 'upsql.slow_query_file_size', 'upsql实例慢日志文件大小', 'normal', 'upsql实例慢日志文件大小的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('94', 'upsql.slow_query_file_size', 'upsql实例慢日志文件大小', 'info', 'upsql实例慢日志文件大小的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('95', 'upsql.com_delete', 'upsql实例压力负载delete', 'critical', 'upsql实例压力负载delete的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('96', 'upsql.com_delete', 'upsql实例压力负载delete', 'warning', 'upsql实例压力负载delete的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('97', 'upsql.com_delete', 'upsql实例压力负载delete', 'normal', 'upsql实例压力负载delete的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('98', 'upsql.com_delete', 'upsql实例压力负载delete', 'info', 'upsql实例压力负载delete的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('99', 'upsql.com_insert', 'upsql实例压力负载insert', 'critical', 'upsql实例压力负载insert的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('100', 'upsql.com_insert', 'upsql实例压力负载insert', 'warning', 'upsql实例压力负载insert的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('101', 'upsql.com_insert', 'upsql实例压力负载insert', 'normal', 'upsql实例压力负载insert的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('102', 'upsql.com_insert', 'upsql实例压力负载insert', 'info', 'upsql实例压力负载insert的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('103', 'upsql.com_select', 'upsql实例压力负载select', 'critical', 'upsql实例压力负载select的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('104', 'upsql.com_select', 'upsql实例压力负载select', 'warning', 'upsql实例压力负载select的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('105', 'upsql.com_select', 'upsql实例压力负载select', 'normal', 'upsql实例压力负载select的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('106', 'upsql.com_select', 'upsql实例压力负载select', 'info', 'upsql实例压力负载select的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('107', 'upsql.com_update', 'upsql实例压力负载update', 'critical', 'upsql实例压力负载update的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('108', 'upsql.com_update', 'upsql实例压力负载update', 'warning', 'upsql实例压力负载update的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('109', 'upsql.com_update', 'upsql实例压力负载update', 'normal', 'upsql实例压力负载update的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('110', 'upsql.com_update', 'upsql实例压力负载update', 'info', 'upsql实例压力负载update的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('111', 'upsql.upsql_io', 'upsql实例io线程', 'critical', 'upsql实例io线程的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('112', 'upsql.upsql_io', 'upsql实例io线程', 'warning', 'upsql实例io线程的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('113', 'upsql.upsql_io', 'upsql实例io线程', 'normal', 'upsql实例io线程的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('114', 'upsql.upsql_sql', 'upsql实例sql线程', 'critical', 'upsql实例sql线程的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('115', 'upsql.upsql_sql', 'upsql实例sql线程', 'warning', 'upsql实例sql线程的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('116', 'upsql.upsql_sql', 'upsql实例sql线程', 'normal', 'upsql实例sql线程的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('117', 'upsql.datadir_application_amount', 'upsql实例所属容器data目录使用率', 'critical', 'upsql实例所属容器data目录使用率的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('118', 'upsql.datadir_application_amount', 'upsql实例所属容器data目录使用率', 'warning', 'upsql实例所属容器data目录使用率的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('119', 'upsql.datadir_application_amount', 'upsql实例所属容器data目录使用率', 'normal', 'upsql实例所属容器data目录使用率的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('120', 'upsql.datadir_application_amount', 'upsql实例所属容器data目录使用率', 'info', 'upsql实例所属容器data目录使用率的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('121', 'upsql.logdir_application_amount', 'upsql实例所属容器log目录使用率', 'critical', 'upsql实例所属容器log目录使用率的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('122', 'upsql.logdir_application_amount', 'upsql实例所属容器log目录使用率', 'warning', 'upsql实例所属容器log目录使用率的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('123', 'upsql.logdir_application_amount', 'upsql实例所属容器log目录使用率', 'normal', 'upsql实例所属容器log目录使用率的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('124', 'upsql.logdir_application_amount', 'upsql实例所属容器log目录使用率', 'info', 'upsql实例所属容器log目录使用率的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('125', 'upsql.cpu_usage', 'upsql实例所属容器cpu使用率', 'critical', 'upsql实例所属容器cpu使用率的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('126', 'upsql.cpu_usage', 'upsql实例所属容器cpu使用率', 'warning', 'upsql实例所属容器cpu使用率的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('127', 'upsql.cpu_usage', 'upsql实例所属容器cpu使用率', 'normal', 'upsql实例所属容器cpu使用率的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('128', 'upsql.cpu_usage', 'upsql实例所属容器cpu使用率', 'info', 'upsql实例所属容器cpu使用率的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('129', 'upsql.mem_usage', 'upsql实例所属容器内存使用率', 'critical', 'upsql实例所属容器内存使用率的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('130', 'upsql.mem_usage', 'upsql实例所属容器内存使用率', 'warning', 'upsql实例所属容器内存使用率的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('131', 'upsql.mem_usage', 'upsql实例所属容器内存使用率', 'normal', 'upsql实例所属容器内存使用率的良好等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('132', 'upsql.mem_usage', 'upsql实例所属容器内存使用率', 'info', 'upsql实例所属容器内存使用率的信息等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('133', 'upsql.service_status', 'upsql实例状态', 'critical', 'upsql实例状态的严重等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('134', 'upsql.service_status', 'upsql实例状态', 'warning', 'upsql实例状态的警告等级');
INSERT INTO `tbl_dbaas_event_config` VALUES ('135', 'upsql.service_status', 'upsql实例状态', 'normal', 'upsql实例状态的良好等级');

-- ----------------------------
-- Table structure for tbl_dbaas_event_log
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dbaas_event_log`;
CREATE TABLE `tbl_dbaas_event_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增长',
  `monitor_item` varchar(64) NOT NULL COMMENT '事件名称，即监控项',
  `user_id` time DEFAULT NULL COMMENT '所属租户',
  `system_id` int(11) DEFAULT NULL COMMENT '业务系统',
  `computer_id` int(11) DEFAULT NULL COMMENT '物理机',
  `ip` varchar(1024) NOT NULL COMMENT 'IP地址',
  `event_time` varchar(64) NOT NULL COMMENT '时间',
  `event_level` varchar(64) NOT NULL COMMENT '事件等级',
  `event_type` varchar(64) NOT NULL COMMENT '事件类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='事件监控日志表';

-- ----------------------------
-- Records of tbl_dbaas_event_log
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dbaas_instance
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dbaas_instance`;
CREATE TABLE `tbl_dbaas_instance` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增长',
  `relate_id` varchar(64) DEFAULT NULL,
  `instance_name` varchar(255) DEFAULT NULL COMMENT '实例名称',
  `site_id` int(11) DEFAULT NULL,
  `sql_software` varchar(64) DEFAULT NULL,
  `business_system` varchar(64) DEFAULT NULL COMMENT '业务参数类型',
  `performance` varchar(64) DEFAULT NULL COMMENT '实例套餐类型，即多少内存多少核，在业务字典中选择',
  `storage_type` varchar(64) DEFAULT NULL COMMENT '业务类型（联机类/非联机类，决定初始数据库实例参数）',
  `network_bandwidth` varchar(64) DEFAULT NULL COMMENT '网络带宽',
  `charset` varchar(64) DEFAULT NULL,
  `framework` varchar(64) DEFAULT NULL,
  `node` int(11) DEFAULT NULL COMMENT '通道数',
  `space_size` int(11) DEFAULT NULL COMMENT '表空间大小',
  `backup_size` int(11) DEFAULT NULL COMMENT '备份空间大小',
  `status` varchar(64) DEFAULT NULL COMMENT '״̬',
  `creator` varchar(64) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `proxy_software` varchar(64) DEFAULT NULL,
  `machine` varchar(64) DEFAULT NULL,
  `network` varchar(64) DEFAULT NULL COMMENT '指定网段',
  `monitor_enable` tinyint(1) NOT NULL DEFAULT '0' COMMENT '监控是否开启',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dbaas_instance
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dbaas_instance_backup
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dbaas_instance_backup`;
CREATE TABLE `tbl_dbaas_instance_backup` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增长',
  `relate_id` varchar(64) NOT NULL,
  `dbaas_id` varchar(64) NOT NULL COMMENT 'DbaaS实例',
  `name` varchar(255) NOT NULL COMMENT '备份策略名称',
  `backup_type` varchar(64) NOT NULL COMMENT '备份类型，到底是全量备份还是某些表的备份',
  `backup_cron` varchar(255) DEFAULT NULL COMMENT '备份的时间策略',
  `action_interval` int(2) NOT NULL COMMENT '执行间隔事件',
  `last_time` int(2) NOT NULL COMMENT '保留天数',
  `start_time` varchar(10) NOT NULL COMMENT '第一次执行的日期',
  `action_time` varchar(8) NOT NULL COMMENT '第一次执行的具体时分秒时间',
  `backup_target` varchar(255) DEFAULT NULL COMMENT '如果是全量备份则为空，否则存储表名',
  `status` varchar(64) NOT NULL COMMENT '状态，启用和暂停，关联字典表',
  `creator` varchar(64) NOT NULL COMMENT '创建者',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='DbaaS实例备份策略';

-- ----------------------------
-- Records of tbl_dbaas_instance_backup
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dbaas_instance_business
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dbaas_instance_business`;
CREATE TABLE `tbl_dbaas_instance_business` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `system_id` int(11) DEFAULT NULL COMMENT '业务id',
  `relate_id` varchar(64) DEFAULT NULL COMMENT '实例ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dbaas_instance_business
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dbaas_instance_user_white
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dbaas_instance_user_white`;
CREATE TABLE `tbl_dbaas_instance_user_white` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增长',
  `instance_id` varchar(64) NOT NULL COMMENT '所属实例',
  `relate_id` varchar(64) DEFAULT NULL,
  `user_name` varchar(64) NOT NULL,
  `white_rule` varchar(255) NOT NULL COMMENT '密码',
  `creator` varchar(64) DEFAULT NULL COMMENT '创建者',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='DbaaSʵ���µ��û������û��ɲ�����ʵ�������ݿ�';

-- ----------------------------
-- Records of tbl_dbaas_instance_user_white
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dbaas_instance_users
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dbaas_instance_users`;
CREATE TABLE `tbl_dbaas_instance_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增长',
  `instance_id` varchar(64) NOT NULL COMMENT '所属实例',
  `user_type` varchar(100) NOT NULL COMMENT '用户权限类型',
  `user_name` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL COMMENT '密码',
  `creator` varchar(64) DEFAULT NULL COMMENT '创建者',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='DbaaSʵ���µ��û������û��ɲ�����ʵ�������ݿ�';

-- ----------------------------
-- Records of tbl_dbaas_instance_users
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dbaas_instance_version
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dbaas_instance_version`;
CREATE TABLE `tbl_dbaas_instance_version` (
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `relate_id` varchar(64) DEFAULT NULL,
  `space_size` int(64) DEFAULT NULL COMMENT '表空间',
  `backup_size` int(11) DEFAULT NULL COMMENT '备份容量',
  `performance` varchar(64) DEFAULT NULL COMMENT '性能套餐',
  `modifier` varchar(64) NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `approver` varchar(64) DEFAULT NULL COMMENT '审批者，保存的是角色，如管理员、一线操作员等',
  `approve_result` varchar(64) DEFAULT NULL COMMENT '审批结果，1表示同意、0表示拒绝',
  `comment` varchar(1024) DEFAULT NULL COMMENT '审批意见',
  `approve_time` timestamp NULL DEFAULT NULL COMMENT '审批时间',
  `status` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`history_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='DBaaS实例历史修改明细以及审批信息表，用户需提示的消息从此表获取，如管理员获取审批信息时即获取审批状态为空且角色为管';

-- ----------------------------
-- Records of tbl_dbaas_instance_version
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dbaas_monitor_config
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dbaas_monitor_config`;
CREATE TABLE `tbl_dbaas_monitor_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增长',
  `monitor_item` varchar(64) NOT NULL COMMENT '监控项',
  `min_value` varchar(32) NOT NULL COMMENT '开始值',
  `max_value` varchar(32) NOT NULL COMMENT '结束值',
  `event_level` varchar(64) NOT NULL COMMENT '事件等级，与业务字典关联',
  `send_notice` tinyint(1) DEFAULT NULL COMMENT '是否通知',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='监控项配置';

-- ----------------------------
-- Records of tbl_dbaas_monitor_config
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dbaas_monitorItem_config
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dbaas_monitorItem_config`;
CREATE TABLE `tbl_dbaas_monitorItem_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增长',
  `metricclass` varchar(64) DEFAULT NULL COMMENT '监控项类别',
  `metricclass_name` varchar(64) DEFAULT NULL COMMENT '监控项类别名称',
  `describe` varchar(128) DEFAULT NULL COMMENT '监控项类别描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dbaas_monitorItem_config
-- ----------------------------
INSERT INTO `tbl_dbaas_monitorItem_config` VALUES ('2', 'hostcpu', 'cpu监控', '主机的cpu监控');
INSERT INTO `tbl_dbaas_monitorItem_config` VALUES ('4', 'hostmem', '内存监控', '主机内存监控');
INSERT INTO `tbl_dbaas_monitorItem_config` VALUES ('5', 'hostnetbond', '网络监控', '主机网络监控');
INSERT INTO `tbl_dbaas_monitorItem_config` VALUES ('6', 'swmfs', 'switch_manager实例的目录监控', 'switch_manager实例所属容器的目录监控');
INSERT INTO `tbl_dbaas_monitorItem_config` VALUES ('7', 'swmstat', 'switch_manager实例的cpu和内存监控', 'switch_manager实例所属容器的cpu和内存监控');
INSERT INTO `tbl_dbaas_monitorItem_config` VALUES ('8', 'swmstatus', 'switch_manager实例的状态监控', 'switch_manager实例的状态监控');
INSERT INTO `tbl_dbaas_monitorItem_config` VALUES ('9', 'upproxy_file', 'upproxy实例错误文件大小监控', 'upproxy实例错误文件大小监控');
INSERT INTO `tbl_dbaas_monitorItem_config` VALUES ('10', 'upproxyfs', 'upproxy实例所属容器的目录监控', 'upproxy实例所属容器的目录监控');
INSERT INTO `tbl_dbaas_monitorItem_config` VALUES ('11', 'upproxystat', 'upproxy实例所属容器的cpu和内存监控', 'upproxy实例所属容器的cpu和内存监控');
INSERT INTO `tbl_dbaas_monitorItem_config` VALUES ('12', 'upproxystatus', 'upproxy实例的状态监控', 'upproxy实例的状态监控');
INSERT INTO `tbl_dbaas_monitorItem_config` VALUES ('13', 'upsql_buffer', 'upsql实例的buffer监控', 'upsql实例的buffer监控');
INSERT INTO `tbl_dbaas_monitorItem_config` VALUES ('14', 'upsql_connection', 'upsql实例的connection监控', 'upsql实例的connection监控');
INSERT INTO `tbl_dbaas_monitorItem_config` VALUES ('15', 'upsql_file', 'upsql实例的错误文件大小和慢日志文件大小监控', 'upsql实例的错误文件大小和慢日志文件大小监控');
INSERT INTO `tbl_dbaas_monitorItem_config` VALUES ('16', 'upsql_lock', 'upsql实例的锁信息监控', 'upsql实例的锁信息监控');
INSERT INTO `tbl_dbaas_monitorItem_config` VALUES ('17', 'upsql_pressure', 'upsql实例的压力负载监控', 'upsql实例的压力负载监控');
INSERT INTO `tbl_dbaas_monitorItem_config` VALUES ('18', 'upsql_slave', 'upsql实例的复制监控', 'upsql实例的复制监控');
INSERT INTO `tbl_dbaas_monitorItem_config` VALUES ('19', 'upsqlfs', 'upsql实例所属容器的目录监控', 'upsql实例所属容器的目录监控');
INSERT INTO `tbl_dbaas_monitorItem_config` VALUES ('20', 'upsqlstat', 'upsql实例所属容器的cpu和内存监控', 'upsql实例所属容器的cpu和内存监控');
INSERT INTO `tbl_dbaas_monitorItem_config` VALUES ('21', 'upsqlstatus', 'upsql实例的状态监控', 'upsql实例的状态监控');
INSERT INTO `tbl_dbaas_monitorItem_config` VALUES ('22', 'hostfs', '系统目录监控', '主机系统目录监控');

-- ----------------------------
-- Table structure for tbl_dbaas_nas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dbaas_nas`;
CREATE TABLE `tbl_dbaas_nas` (
  `nas_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增长',
  `relate_id` varchar(64) DEFAULT NULL,
  `nas_name` varchar(255) DEFAULT NULL COMMENT '名称',
  `nas_ip` varchar(64) NOT NULL COMMENT 'nas所在的IP地址',
  `path` varchar(255) NOT NULL COMMENT 'NAS的共享目录',
  `capacity` varchar(128) DEFAULT NULL COMMENT 'nas容量',
  `status` varchar(64) DEFAULT NULL COMMENT '所属状态，关联业务字典表',
  `creator` varchar(64) DEFAULT NULL COMMENT '创建者',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`nas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dbaas_nas
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dbaas_network
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dbaas_network`;
CREATE TABLE `tbl_dbaas_network` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增长',
  `relate_id` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '网段名称',
  `net_type` varchar(64) DEFAULT NULL COMMENT '网段类型',
  `site_id` varchar(11) DEFAULT NULL COMMENT '所属站点',
  `ip_start` varchar(64) DEFAULT NULL COMMENT '开始IP',
  `ip_end` varchar(64) DEFAULT NULL COMMENT '结束IP',
  `net_mask` varchar(64) DEFAULT NULL COMMENT '网段掩码',
  `net_gateway` varchar(64) DEFAULT NULL COMMENT '网段网关',
  `status` varchar(64) DEFAULT '',
  `creator` varchar(64) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `allot` varchar(64) DEFAULT NULL COMMENT '分配',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COMMENT='IP网段管理';

-- ----------------------------
-- Records of tbl_dbaas_network
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dbaas_operate_log
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dbaas_operate_log`;
CREATE TABLE `tbl_dbaas_operate_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增长',
  `user_id` varchar(64) NOT NULL COMMENT '操作者用户名',
  `operate_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '操作时间',
  `module` varchar(64) NOT NULL COMMENT '操作功能模块',
  `type` varchar(64) NOT NULL COMMENT '操作类型',
  `info` varchar(1024) NOT NULL COMMENT '操作内容',
  `result` varchar(64) NOT NULL COMMENT '操作结果，即成功还是失败，异步同步数据',
  `relate_id` varchar(64) DEFAULT NULL COMMENT '具体数据关联ID，例如新建一个DBaaS，此字段记录的是此DBaaS实例的ID，方便后续关联查找',
  `site` varchar(64) DEFAULT NULL COMMENT '所属站点',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6317 DEFAULT CHARSET=utf8 COMMENT='系统操作日志表';

-- ----------------------------
-- Records of tbl_dbaas_operate_log
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dbaas_port
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dbaas_port`;
CREATE TABLE `tbl_dbaas_port` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增长',
  `port_start` int(5) DEFAULT NULL COMMENT '开始端口号',
  `port_end` int(5) DEFAULT NULL COMMENT '结束端口',
  `site_id` varchar(11) DEFAULT NULL COMMENT '所属站点',
  `creator` varchar(64) DEFAULT NULL COMMENT '创建者',
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建该数据时候的时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dbaas_port
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dbaas_san
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dbaas_san`;
CREATE TABLE `tbl_dbaas_san` (
  `san_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增长',
  `san_name` varchar(64) DEFAULT NULL,
  `relate_id` varchar(64) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL COMMENT '所属站点',
  `brand` varchar(64) NOT NULL COMMENT '设备品牌',
  `huawei_ip` varchar(64) DEFAULT NULL COMMENT '存储系统访问地址（华为专有）',
  `huawei_user` varchar(64) DEFAULT NULL COMMENT '用户名（华为专有）',
  `huawei_pwd` varchar(64) DEFAULT NULL COMMENT '密码（华为专有）',
  `hds_domian_name` varchar(64) DEFAULT NULL COMMENT '管理域名称（HDS专有）',
  `status` varchar(64) DEFAULT NULL COMMENT '所属状态，关联业务字典表',
  `creator` varchar(64) DEFAULT NULL COMMENT '创建者',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`san_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='SAN信息表';

-- ----------------------------
-- Records of tbl_dbaas_san
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dbaas_san_rg
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dbaas_san_rg`;
CREATE TABLE `tbl_dbaas_san_rg` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增长',
  `san_id` varchar(64) NOT NULL COMMENT '所属的SAN',
  `rg_id` varchar(64) NOT NULL COMMENT 'RG后台登记的编号',
  `relate_id` varchar(64) NOT NULL,
  `creator` varchar(64) NOT NULL COMMENT '创建者',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `status` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='SAN中的RG信息';

-- ----------------------------
-- Records of tbl_dbaas_san_rg
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dbaas_site
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dbaas_site`;
CREATE TABLE `tbl_dbaas_site` (
  `site_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增长',
  `name` varchar(64) NOT NULL COMMENT '站点名字',
  `server` varchar(32) DEFAULT NULL COMMENT '站点服务信息，ip地址（可能有端口）',
  `nas_id` varchar(64) DEFAULT NULL COMMENT '站点使用的nas',
  `database_address` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL COMMENT '站点描述',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `app_server` varchar(64) DEFAULT NULL,
  `status` varchar(64) NOT NULL DEFAULT '0' COMMENT '默认是0  启用是1 停用是2',
  `resource_manager_server_address` varchar(255) DEFAULT NULL COMMENT '资源管理服务地址',
  `monitor_server_address` varchar(255) DEFAULT NULL COMMENT '监控服务地址',
  `mondba_user` varchar(32) DEFAULT NULL COMMENT '数据库用户名',
  `mondba_password` varchar(32) DEFAULT NULL COMMENT '数据库密码',
  `consul_ip` varchar(128) NOT NULL COMMENT '服务管理（consul server） IP地址',
  `consul_port` int(11) NOT NULL COMMENT '服务管理（consul server） 端口',
  `docker_port` int(11) NOT NULL,
  `plugin_port` int(11) NOT NULL,
  `consul_dc` varchar(32) NOT NULL,
  `horus_server_ip` varchar(32) NOT NULL,
  `horus_server_port` int(11) NOT NULL,
  `horus_agent_port` int(11) NOT NULL,
  `registry_os_username` varchar(32) NOT NULL COMMENT '数据仓库（registry）操作系统用户',
  `registry_os_password` varchar(32) NOT NULL COMMENT '数据仓库（registry）操作系统密码',
  `registry_domain` varchar(32) NOT NULL COMMENT '数据仓库（registry）域名',
  `registry_ip` varchar(32) NOT NULL COMMENT '数据仓库（registry）IP地址',
  `registry_port` int(11) NOT NULL,
  `registry_username` varchar(32) NOT NULL COMMENT '数据仓库（registry）用户',
  `registry_password` varchar(32) NOT NULL COMMENT '数据仓库（registry）密码',
  `registry_email` varchar(32) NOT NULL,
  `registry_ca_crt` varchar(10240) NOT NULL COMMENT '数据仓库（registry）证书内容',
  `source_dir` varchar(32) NOT NULL,
  `destination_dir` varchar(32) NOT NULL,
  `init_script_name` varchar(32) NOT NULL,
  `clean_script_name` varchar(32) NOT NULL,
  `ca_crt_name` varchar(32) NOT NULL,
  `nfs_ip` varchar(32) NOT NULL COMMENT 'NAS IP地址',
  `nfs_dir` varchar(32) NOT NULL COMMENT 'NAS 目录',
  `nfs_mount_dir` varchar(32) NOT NULL,
  `nfs_mount_opts` varchar(32) NOT NULL,
  `mon_username` varchar(32) NOT NULL,
  `mon_password` varchar(32) NOT NULL,
  `repl_username` varchar(32) NOT NULL,
  `repl_password` varchar(32) NOT NULL,
  `cup_dba_username` varchar(32) NOT NULL,
  `cup_dba_password` varchar(32) NOT NULL,
  `db_username` varchar(32) NOT NULL,
  `db_password` varchar(32) NOT NULL,
  `ap_username` varchar(32) NOT NULL,
  `ap_password` varchar(32) NOT NULL,
  `managerServer_address_ip` varchar(32) NOT NULL COMMENT '管理服务（MGM）IP地址',
  `managerServer_address_port` int(11) NOT NULL COMMENT '管理服务（MGM）端口',
  `backup_dir` varchar(32) NOT NULL COMMENT '备份路径',
  PRIMARY KEY (`site_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='站点信息表';

-- ----------------------------
-- Records of tbl_dbaas_site
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dbaas_soft_parameter
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dbaas_soft_parameter`;
CREATE TABLE `tbl_dbaas_soft_parameter` (
  `parameter_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增长',
  `software` varchar(64) DEFAULT NULL COMMENT '软件版本编号',
  `parameter_name` varchar(128) DEFAULT NULL COMMENT '参数名称',
  `restart` varchar(1) NOT NULL COMMENT '是否需要重启',
  `default_value` varchar(32) NOT NULL COMMENT '默认值',
  `comment` varchar(1024) NOT NULL COMMENT '参数参数描述',
  PRIMARY KEY (`parameter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dbaas_soft_parameter
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dbaas_software_version
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dbaas_software_version`;
CREATE TABLE `tbl_dbaas_software_version` (
  `software_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增长',
  `site_id` int(11) DEFAULT NULL,
  `relate_id` varchar(64) DEFAULT NULL,
  `task_id` varchar(64) NOT NULL,
  `software_type` varchar(64) NOT NULL,
  `major` int(2) NOT NULL COMMENT '主版本号',
  `revision` int(2) NOT NULL COMMENT '次版本号',
  `build` int(2) NOT NULL COMMENT '修订版本号',
  `path` varchar(1024) NOT NULL COMMENT '软件介质上传存放路径',
  `md5` varchar(1024) NOT NULL COMMENT '校验MD5的文件路径',
  `status` varchar(64) NOT NULL,
  `creator` varchar(64) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '上传时间',
  PRIMARY KEY (`software_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='软件介质资源管理信息表';

-- ----------------------------
-- Records of tbl_dbaas_software_version
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dbaas_task_log
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dbaas_task_log`;
CREATE TABLE `tbl_dbaas_task_log` (
  `task_id` varchar(64) NOT NULL DEFAULT '' COMMENT '任务编号，由后台生成，即各中操作后后台返回的id',
  `computer_id` varchar(64) DEFAULT NULL COMMENT '物理机',
  `user_id` varchar(64) DEFAULT NULL COMMENT '租户',
  `dbaas_id` varchar(64) DEFAULT NULL COMMENT 'DBaaS实例',
  `task_name` varchar(1024) NOT NULL COMMENT '任务名称',
  `executor` varchar(64) NOT NULL COMMENT '发起者',
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '执行开始时间',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '执行结束时间',
  `last_time` int(11) NOT NULL COMMENT '总耗时',
  `status` varchar(64) NOT NULL COMMENT '状态',
  `percent` varchar(10) NOT NULL COMMENT '百分比',
  `error_code` varchar(64) NOT NULL COMMENT '错误代码',
  `error_msg` varchar(255) NOT NULL COMMENT '错误信息',
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务监控日志表';

-- ----------------------------
-- Records of tbl_dbaas_task_log
-- ----------------------------
