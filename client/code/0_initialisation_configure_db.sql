/*
数据库配置文件
Date: 01/15/2018 10:35:29 AM
*/

--  Table structure for moniter_m_d_db
DROP TABLE IF EXISTS moniter_m_d_db;
CREATE TABLE moniter_m_d_db (
  id int(11) NOT NULL AUTO_INCREMENT,
  project_nick varchar(250),
  db_nick varchar(250),
  db_type varchar(250),
  port varchar(255),
  db_name varchar(255),
  schema_name varchar(255),
  description longtext,
  timestamp_v timestamp,
  host_nick varchar(250),
  PRIMARY KEY (id)
);

--  Records of moniter_m_d_db
INSERT INTO moniter_m_d_db VALUES ('1', '李宁', 'data_center', 'gp', '5432', 'data_center', 'public', '', '2018-01-08 17:28:32.000000', 'lining-gp'), ('2', 'test', 'test', 'test', '5432', 'data_center', 'public', '', '2018-01-08 17:28:32.000000', 'lining-gp');

--  Table structure for moniter_m_d_host
DROP TABLE IF EXISTS moniter_m_d_host;
CREATE TABLE moniter_m_d_host (
  id int(11) NOT NULL AUTO_INCREMENT,
  project_nick varchar(250),
  host_nick varchar(255),
  host char(39) NOT NULL,
  port varchar(255),
  server_type varchar(255),
  description longtext,
  timestamp_v timestamp,
  PRIMARY KEY (id)
);

--  Records of moniter_m_d_host
INSERT INTO moniter_m_d_host VALUES ('1', '李宁', 'lining-config', '172.18.21.245', '22', 'centos', '', '2018-01-08 17:10:49.000000'), ('2', '李宁', 'lining-gp', '172.18.21.179', '22', 'centos', '', '2018-01-08 17:10:49.000000'), ('3', '李宁', 'lining-bi', '172.18.21.181', '22', 'centos', '', '2018-01-08 17:10:49.000000'), ('4', '李宁', 'lining-kettle', '172.18.21.196', '22', 'centos', '', '2018-01-08 17:10:49.000000');

--  Table structure for moniter_m_d_user
DROP TABLE IF EXISTS moniter_m_d_user;
CREATE TABLE moniter_m_d_user (
  id int(11) NOT NULL AUTO_INCREMENT,
  type varchar(250),
  username varchar(250),
  password varchar(250),
  description longtext,
  timestamp_v timestamp,
  PRIMARY KEY (id)
);

--  Table structure for moniter_m_d_user_db
DROP TABLE IF EXISTS moniter_m_d_user_db;
CREATE TABLE moniter_m_d_user_db (
  id int(11) NOT NULL AUTO_INCREMENT,
  project_nick varchar(250),
  db_nick varchar(255),
  user_group varchar(250),
  username varchar(250),
  password varchar(250),
  description longtext,
  timestamp_v timestamp,
  PRIMARY KEY (id)
);

--  Records of moniter_m_d_user_db
INSERT INTO moniter_m_d_user_db VALUES ('1', '李宁', 'data_center', 'root', 'gpadmin', 'gpadmin', '', '2018-01-08 17:32:51.000000');

--  Table structure for moniter_m_d_user_host
DROP TABLE IF EXISTS moniter_m_d_user_host;
CREATE TABLE moniter_m_d_user_host (
  id int(11) NOT NULL AUTO_INCREMENT,
  project_nick varchar(250),
  host_nick varchar(255),
  user_group varchar(250),
  username varchar(250),
  password varchar(250),
  description longtext,
  timestamp_v timestamp,
  PRIMARY KEY (id)
);

--  Records of moniter_m_d_user_host
INSERT INTO moniter_m_d_user_host VALUES ('1', '李宁', 'lining-config', 'root', 'root', 'shuyun245', '', '2018-01-08 17:32:33.000000'), ('2', '李宁', 'lining-gp', 'root', 'root', 'shuyun179', '', '2018-01-08 17:32:33.000000'), ('3', '李宁', 'lining-bi', 'root', 'root', 'shuyun181', '', '2018-01-08 17:32:34.000000'), ('4', '李宁', 'lining-kettle', 'root', 'root', 'shuyun196', '', '2018-01-08 17:32:34.000000');

--  Table structure for moniter_m_project
DROP TABLE IF EXISTS moniter_m_project;
CREATE TABLE moniter_m_project (
  id int(11) NOT NULL AUTO_INCREMENT,
  nick varchar(255),
  name varchar(255),
  status varchar(255),
  content longtext,
  phase varchar(255),
  resource_id varchar(255),
  start_time timestamp,
  end_time timestamp,
  timestamp_v timestamp,
  PRIMARY KEY (id)
);

--  Records of moniter_m_project
INSERT INTO moniter_m_project VALUES ('1', '李宁', '李宁', 'processing', '运维托管服务', '运维托管服务', null, null, null, null);

--  Table structure for moniter_m_project_checklist
DROP TABLE IF EXISTS moniter_m_project_checklist;
CREATE TABLE moniter_m_project_checklist (
  id int(11) NOT NULL AUTO_INCREMENT,
  send_id int(11),
  project_nick varchar(255),
  host_nick varchar(255),
  db_nick varchar(255),
  m_type varchar(255),
  m_dim varchar(255),
  m_value_type varchar(255),
  m_value varchar(255),
  m_status varchar(255),
  m_interval_type varchar(255),
  m_interval_time int(11),
  timestamp_v timestamp,
  Next_checktime timestamp,
  PRIMARY KEY (id)
);

--  Records of moniter_m_project_checklist
INSERT INTO moniter_m_project_checklist VALUES ('1', null, '李宁', 'lining-gp', 'data_center', 'gp', 'connections-check', '小于', '250', 'on', 'period', '300', '2018-01-08 14:31:51.000000', null), ('2', null, '李宁', 'lining-gp', 'data_center', 'gp', 'master-check', '等于', 'u', 'on', 'period', '300', '2018-01-08 14:31:52.000000', null), ('3', null, '李宁', 'lining-gp', 'data_center', 'gp', 'segment-check', '等于', 'u', 'on', 'period', '300', '2018-01-08 14:31:52.000000', null), ('4', null, '李宁', 'lining-gp', null, 'system', 'cpu-usage', '小于', '0.8', 'on', 'period', '300', '2018-01-08 14:31:52.000000', null), ('5', null, '李宁', 'lining-gp', null, 'system', 'disk-usage', '小于', '0.8', 'on', 'period', '300', '2018-01-08 14:31:52.000000', null), ('6', null, '李宁', 'lining-gp', null, 'system', 'iops-usage', '小于', '100', 'on', 'period', '300', '2018-01-08 14:31:52.000000', null), ('7', null, '李宁', 'lining-gp', null, 'system', 'memory-usage', '小于', '1024MB', 'on', 'period', '300', '2018-01-08 14:31:52.000000', null), ('8', null, '李宁', 'lining-kettle', null, 'system', 'cpu-usage', '小于', '0.8', 'on', 'period', '300', '2018-01-08 14:31:52.000000', null), ('9', null, '李宁', 'lining-kettle', null, 'system', 'disk-usage', '小于', '0.8', 'on', 'period', '300', '2018-01-08 14:31:52.000000', null), ('10', null, '李宁', 'lining-kettle', null, 'system', 'iops-usage', '小于', '100', 'on', 'period', '300', '2018-01-08 14:31:52.000000', null), ('11', null, '李宁', 'lining-kettle', null, 'system', 'memory-usage', '小于', '1024MB', 'on', 'period', '300', '2018-01-08 14:31:52.000000', null), ('12', null, '李宁', 'lining-bi', null, 'system', 'cpu-usage', '小于', '0.8', 'on', 'period', '300', '2018-01-08 14:31:52.000000', null), ('13', null, '李宁', 'lining-bi', null, 'system', 'disk-usage', '小于', '0.8', 'on', 'period', '300', '2018-01-08 14:31:52.000000', null), ('14', null, '李宁', 'lining-bi', null, 'system', 'iops-usage', '小于', '100', 'on', 'period', '300', '2018-01-08 14:31:52.000000', null), ('15', null, '李宁', 'lining-bi', null, 'system', 'memory-usage', '小于', '1024MB', 'on', 'period', '300', '2018-01-08 14:31:52.000000', null), ('16', null, '李宁', 'lining-config', null, 'system', 'cpu-usage', '小于', '0.8', 'on', 'period', '300', '2018-01-08 14:31:52.000000', null), ('17', null, '李宁', 'lining-config', null, 'system', 'disk-usage', '小于', '0.8', 'on', 'period', '300', '2018-01-08 14:31:52.000000', null), ('18', null, '李宁', 'lining-config', null, 'system', 'iops-usage', '小于', '100', 'on', 'period', '300', '2018-01-08 14:31:52.000000', null), ('19', null, '李宁', 'lining-config', null, 'system', 'memory-usage', '小于', '1024MB', 'on', 'period', '300', '2018-01-08 14:31:53.000000', null), ('22', null, '李宁', 'lining-bi', null, 'newbi', 'process', '大于', '0', 'on', 'period', '300', '2018-01-12 16:51:08.000000', null);

--  Table structure for moniter_m_report
DROP TABLE IF EXISTS moniter_m_report;
CREATE TABLE moniter_m_report (
  id int(11) NOT NULL AUTO_INCREMENT,
  project_nick varchar(250),
  host_nick varchar(255),
  db_nick varchar(255),
  m_date date,
  m_timestamp timestamp,
  m_type varchar(255),
  m_dim varchar(255),
  m_value varchar(255),
  m_status varchar(255),
  m_send_status varchar(255),
  description longtext,
  timestamp_v timestamp,
  PRIMARY KEY (id)
);