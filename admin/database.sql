2012-07-01
CREATE TABLE malacca_user(
	id INT(10) NOT NULL AUTO_INCREMENT,
	loginName VARCHAR(60) NOT NULL DEFAULT '' COMMENT 'loginName',
	PASSWORD VARCHAR(60) NOT NULL DEFAULT '' COMMENT 'password',
	userName VARCHAR(60) NOT NULL DEFAULT '' COMMENT 'userName',
	registerDate INT(10) NOT NULL DEFAULT 0 COMMENT 'registerDate',
	email VARCHAR(60) NOT NULL DEFAULT '' COMMENT 'email',
	phoneNum BIGINT(16) NOT NULL DEFAULT 0 COMMENT 'phoneNum',
	bz ENUM('1','0') NOT NULL DEFAULT '1' COMMENT '1 - 可用 0 - 不可用',
	PRIMARY KEY(id),
	INDEX index_loginName(loginName),
	INDEX index_password(PASSWORD),
	INDEX index_login(loginName,PASSWORD),
	INDEX index_registerDate(registerDate),
	INDEX index_bz(bz)
);

CREATE TABLE malacca_appInfo(
	id INT(10) NOT NULL AUTO_INCREMENT,
	appName VARCHAR(60) NOT NULL DEFAULT '' COMMENT 'appName',
	categoryId INT(10) NOT NULL DEFAULT 0 COMMENT 'categoryId',
	iconName VARCHAR(60) NOT NULL DEFAULT '' COMMENT 'iconName',
	iconUrl VARCHAR(600) NOT NULL DEFAULT '' COMMENT 'iconUrl',
	iconData TEXT NOT NULL DEFAULT '' COMMENT 'iconData',
	picName VARCHAR(60) NOT NULL DEFAULT '' COMMENT 'picName',
	picUrl VARCHAR(600) NOT NULL DEFAULT '' COMMENT 'picUrl',
	picData TEXT NOT NULL DEFAULT '' COMMENT 'picData',
	DATE INT(10) NOT NULL DEFAULT 0 COMMENT '日期',
	bz ENUM('1','0') NOT NULL DEFAULT '1' COMMENT '1 - 显示 0 - 隐藏',
	PRIMARY KEY(id),
	INDEX index_categoryId(categoryId),
	INDEX index_date(DATE),
	INDEX index_bz(bz)
);

CREATE TABLE malacca_appCategory(
	id INT(10) NOT NULL AUTO_INCREMENT,
	categoryName VARCHAR(60) NOT NULL DEFAULT '' COMMENT 'categoryName',
	DATE INT(10) NOT NULL DEFAULT 0 COMMENT '日期',
	bz ENUM('1','0') NOT NULL DEFAULT '1' COMMENT '1 - 显示 0 - 隐藏',
	PRIMARY KEY(id),
	INDEX index_bz(bz)
);

CREATE TABLE malacca_appPicInfo(
	id INT(10) NOT NULL AUTO_INCREMENT,
	appId INT(10) NOT NULL DEFAULT 0 COMMENT 'appId',
	picName VARCHAR(60) NOT NULL DEFAULT '' COMMENT 'picName',
	picUrl VARCHAR(600) NOT NULL DEFAULT '' COMMENT 'picUrl',
	picData TEXT NOT NULL DEFAULT '' COMMENT 'picData',
	DATE INT(10) NOT NULL DEFAULT 0 COMMENT '日期',
	bz ENUM('1','0') NOT NULL DEFAULT '1' COMMENT '1 - 显示 0 - 隐藏',
	PRIMARY KEY(id),
	INDEX index_appId(appId),
	INDEX index_date(DATE),
	INDEX index_bz(bz)
);

CREATE TABLE malacca_appIconInfo(
	id INT(10) NOT NULL AUTO_INCREMENT,
	appId INT(10) NOT NULL DEFAULT 0 COMMENT 'appId',
	sizeId INT(10) NOT NULL DEFAULT 0 COMMENT 'sizeId',
	iconName VARCHAR(60) NOT NULL DEFAULT '' COMMENT 'iconName',
	iconUrl VARCHAR(600) NOT NULL DEFAULT '' COMMENT 'iconUrl',
	iconData TEXT NOT NULL DEFAULT '' COMMENT 'iconData',
	DATE INT(10) NOT NULL DEFAULT 0 COMMENT '日期',
	bz ENUM('1','0') NOT NULL DEFAULT '1' COMMENT '1 - 显示 0 - 隐藏',
	PRIMARY KEY(id),
	INDEX index_appId(appId),
	INDEX index_sizeId(sizeId),
	INDEX index_date(DATE),
	INDEX index_bz(bz)
);

CREATE TABLE malacca_appIconSize(
	id INT(10) NOT NULL AUTO_INCREMENT,
	sizeName VARCHAR(60) NOT NULL DEFAULT '' COMMENT 'sizeName',
	DATE INT(10) NOT NULL DEFAULT 0 COMMENT '日期',
	bz ENUM('1','0') NOT NULL DEFAULT '1' COMMENT '1 - 显示 0 - 隐藏',
	PRIMARY KEY(id),
	INDEX index_bz(bz)
);