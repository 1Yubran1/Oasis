-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         10.4.21-MariaDB-log - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla oasisgourmet.alita
CREATE TABLE IF NOT EXISTS `alita` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` float(11,2) NOT NULL,
  `img` varchar(255) NOT NULL,
  `fkSalsa` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkSalsa` (`fkSalsa`),
  CONSTRAINT `alita_ibfk_1` FOREIGN KEY (`fkSalsa`) REFERENCES `salsa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla oasisgourmet.alita: ~0 rows (aproximadamente)

-- Volcando estructura para tabla oasisgourmet.auth_assignment
CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_assignment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla oasisgourmet.auth_assignment: ~1 rows (aproximadamente)
INSERT IGNORE INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
	('UEstandar', 2, 1713082435);

-- Volcando estructura para tabla oasisgourmet.auth_item
CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `group_code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  KEY `fk_auth_item_group_code` (`group_code`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_auth_item_group_code` FOREIGN KEY (`group_code`) REFERENCES `auth_item_group` (`code`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla oasisgourmet.auth_item: ~198 rows (aproximadamente)
INSERT IGNORE INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`, `group_code`) VALUES
	('/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/alita/*', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/alita/create', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/alita/delete', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/alita/index', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/alita/update', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/alita/view', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/bebida/*', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/bebida/create', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/bebida/delete', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/bebida/index', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/bebida/update', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/bebida/view', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/bonele/*', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/bonele/create', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/bonele/delete', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/bonele/index', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/bonele/update', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/bonele/view', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/detalleventa/*', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/detalleventa/create', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/detalleventa/delete', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/detalleventa/index', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/detalleventa/update', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/detalleventa/view', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/gii/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/gii/default/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/gii/default/action', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/gii/default/diff', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/gii/default/index', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/gii/default/preview', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/gii/default/view', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/hamburguesa/*', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/hamburguesa/create', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/hamburguesa/delete', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/hamburguesa/index', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/hamburguesa/update', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/hamburguesa/view', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/pago/*', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/pago/create', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/pago/delete', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/pago/index', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/pago/update', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/pago/view', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/postre/*', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/postre/create', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/postre/delete', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/postre/index', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/postre/update', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/postre/view', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/salsa/*', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/salsa/create', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/salsa/delete', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/salsa/index', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/salsa/update', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/salsa/view', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/site/*', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/site/about', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/site/captcha', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/site/contact', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/site/error', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/site/index', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/site/login', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/site/logout', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/snacks/*', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/snacks/create', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/snacks/delete', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/snacks/index', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/snacks/update', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/snacks/view', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/taco/*', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/taco/create', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/taco/delete', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/taco/index', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/taco/update', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/taco/view', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/tbebida/*', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/tbebida/create', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/tbebida/delete', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/tbebida/index', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/tbebida/update', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/tbebida/view', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/torta/*', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/torta/create', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/torta/delete', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/torta/index', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/torta/update', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/torta/view', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/user-management/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/auth-item-group/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/auth-item-group/bulk-activate', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/auth-item-group/bulk-deactivate', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/auth-item-group/bulk-delete', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/auth-item-group/create', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/auth-item-group/delete', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/auth-item-group/grid-page-size', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/auth-item-group/grid-sort', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/auth-item-group/index', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/auth-item-group/toggle-attribute', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/auth-item-group/update', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/auth-item-group/view', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/auth/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/auth/captcha', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/auth/change-own-password', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/auth/confirm-email', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/auth/confirm-email-receive', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/auth/confirm-registration-email', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/auth/login', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/auth/logout', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/auth/password-recovery', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/auth/password-recovery-receive', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/auth/registration', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/permission/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/permission/bulk-activate', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/permission/bulk-deactivate', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/permission/bulk-delete', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/permission/create', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/permission/delete', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/permission/grid-page-size', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/permission/grid-sort', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/permission/index', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/permission/refresh-routes', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/permission/set-child-permissions', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/permission/set-child-routes', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/permission/toggle-attribute', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/permission/update', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/permission/view', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/role/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/role/bulk-activate', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/role/bulk-deactivate', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/role/bulk-delete', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/role/create', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/role/delete', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/role/grid-page-size', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/role/grid-sort', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/role/index', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/role/set-child-permissions', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/role/set-child-roles', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/role/toggle-attribute', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/role/update', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/role/view', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user-permission/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user-permission/set', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user-permission/set-roles', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user-visit-log/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user-visit-log/bulk-activate', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user-visit-log/bulk-deactivate', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user-visit-log/bulk-delete', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user-visit-log/create', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user-visit-log/delete', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user-visit-log/grid-page-size', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user-visit-log/grid-sort', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user-visit-log/index', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user-visit-log/toggle-attribute', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user-visit-log/update', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user-visit-log/view', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user/bulk-activate', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user/bulk-deactivate', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user/bulk-delete', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user/change-password', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user/create', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user/delete', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user/grid-page-size', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user/grid-sort', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user/index', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user/toggle-attribute', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user/update', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/user-management/user/view', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL),
	('/usuario/*', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/usuario/create', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/usuario/delete', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/usuario/index', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/usuario/update', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/usuario/view', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/venta/*', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/venta/create', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/venta/delete', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/venta/index', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/venta/update', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('/venta/view', 3, NULL, NULL, NULL, 1713082095, 1713082095, NULL),
	('Admin', 1, 'Admin', NULL, NULL, 1426062189, 1426062189, NULL),
	('assignRolesToUsers', 2, 'Assign roles to users', NULL, NULL, 1426062189, 1426062189, 'userManagement'),
	('bindUserToIp', 2, 'Bind user to IP', NULL, NULL, 1426062189, 1426062189, 'userManagement'),
	('changeOwnPassword', 2, 'Change own password', NULL, NULL, 1426062189, 1426062189, 'userCommonPermissions'),
	('changeUserPassword', 2, 'Change user password', NULL, NULL, 1426062189, 1426062189, 'userManagement'),
	('commonPermission', 2, 'Common permission', NULL, NULL, 1426062188, 1426062188, NULL),
	('createUsers', 2, 'Create users', NULL, NULL, 1426062189, 1426062189, 'userManagement'),
	('deleteUsers', 2, 'Delete users', NULL, NULL, 1426062189, 1426062189, 'userManagement'),
	('editUserEmail', 2, 'Edit user email', NULL, NULL, 1426062189, 1426062189, 'userManagement'),
	('editUsers', 2, 'Edit users', NULL, NULL, 1426062189, 1426062189, 'userManagement'),
	('UEstandar', 1, 'UsuarioEstandar', NULL, NULL, 1713082400, 1713082400, NULL),
	('UsuarioEstandar', 2, 'Usuario Estandar', NULL, NULL, 1713082054, 1713082054, NULL),
	('viewRegistrationIp', 2, 'View registration IP', NULL, NULL, 1426062189, 1426062189, 'userManagement'),
	('viewUserEmail', 2, 'View user email', NULL, NULL, 1426062189, 1426062189, 'userManagement'),
	('viewUserRoles', 2, 'View user roles', NULL, NULL, 1426062189, 1426062189, 'userManagement'),
	('viewUsers', 2, 'View users', NULL, NULL, 1426062189, 1426062189, 'userManagement'),
	('viewVisitLog', 2, 'View visit log', NULL, NULL, 1426062189, 1426062189, 'userManagement');

-- Volcando estructura para tabla oasisgourmet.auth_item_child
CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla oasisgourmet.auth_item_child: ~42 rows (aproximadamente)
INSERT IGNORE INTO `auth_item_child` (`parent`, `child`) VALUES
	('Admin', 'assignRolesToUsers'),
	('Admin', 'changeOwnPassword'),
	('Admin', 'changeUserPassword'),
	('Admin', 'createUsers'),
	('Admin', 'deleteUsers'),
	('Admin', 'editUsers'),
	('Admin', 'viewUsers'),
	('assignRolesToUsers', '/user-management/user-permission/set'),
	('assignRolesToUsers', '/user-management/user-permission/set-roles'),
	('assignRolesToUsers', 'viewUserRoles'),
	('assignRolesToUsers', 'viewUsers'),
	('changeOwnPassword', '/user-management/auth/change-own-password'),
	('changeUserPassword', '/user-management/user/change-password'),
	('changeUserPassword', 'viewUsers'),
	('createUsers', '/user-management/user/create'),
	('createUsers', 'viewUsers'),
	('deleteUsers', '/user-management/user/bulk-delete'),
	('deleteUsers', '/user-management/user/delete'),
	('deleteUsers', 'viewUsers'),
	('editUserEmail', 'viewUserEmail'),
	('editUsers', '/user-management/user/bulk-activate'),
	('editUsers', '/user-management/user/bulk-deactivate'),
	('editUsers', '/user-management/user/update'),
	('editUsers', 'viewUsers'),
	('UEstandar', 'UsuarioEstandar'),
	('UsuarioEstandar', '/alita/index'),
	('UsuarioEstandar', '/bebida/index'),
	('UsuarioEstandar', '/bonele/index'),
	('UsuarioEstandar', '/hamburguesa/index'),
	('UsuarioEstandar', '/postre/index'),
	('UsuarioEstandar', '/salsa/index'),
	('UsuarioEstandar', '/site/*'),
	('UsuarioEstandar', '/snacks/index'),
	('UsuarioEstandar', '/taco/index'),
	('UsuarioEstandar', '/tbebida/index'),
	('UsuarioEstandar', '/torta/index'),
	('viewUsers', '/user-management/user/grid-page-size'),
	('viewUsers', '/user-management/user/index'),
	('viewUsers', '/user-management/user/view'),
	('viewVisitLog', '/user-management/user-visit-log/grid-page-size'),
	('viewVisitLog', '/user-management/user-visit-log/index'),
	('viewVisitLog', '/user-management/user-visit-log/view');

-- Volcando estructura para tabla oasisgourmet.auth_item_group
CREATE TABLE IF NOT EXISTS `auth_item_group` (
  `code` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla oasisgourmet.auth_item_group: ~2 rows (aproximadamente)
INSERT IGNORE INTO `auth_item_group` (`code`, `name`, `created_at`, `updated_at`) VALUES
	('userCommonPermissions', 'User common permission', 1426062189, 1426062189),
	('userManagement', 'User management', 1426062189, 1426062189);

-- Volcando estructura para tabla oasisgourmet.auth_rule
CREATE TABLE IF NOT EXISTS `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla oasisgourmet.auth_rule: ~0 rows (aproximadamente)

-- Volcando estructura para tabla oasisgourmet.bebida
CREATE TABLE IF NOT EXISTS `bebida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` float(11,2) NOT NULL,
  `img` varchar(255) NOT NULL,
  `fkTipo` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTipo` (`fkTipo`),
  CONSTRAINT `bebida_ibfk_1` FOREIGN KEY (`fkTipo`) REFERENCES `tbebida` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla oasisgourmet.bebida: ~4 rows (aproximadamente)
INSERT IGNORE INTO `bebida` (`id`, `nombre`, `descripcion`, `precio`, `img`, `fkTipo`) VALUES
	(5, 'Coca-Cola', 'Refresco enlatado de 235 ml bien fría', 50.00, '-iM6uFeAy_pS316t7YtSjXeI99XahZSz.jpg', 3),
	(7, 'Fanta', 'Refresco enlatado de 235 ml bien fría', 50.00, '3mWak1D0TM79plgkvPlv0JFRniN7lXyL.jpg', 3),
	(8, 'Sprite', 'Refresco enlatado de 235 ml bien fría', 50.00, 'HBJU74ysfSgF-HWDlGBRQtpetyXlz5mE.jpg', 3),
	(9, 'Agua de jamaica', 'Bebida de 1 litro en vaso de vidrio fría', 30.00, 'r3wEmONybVIktn21PPmLlp-Nfa2eK5-V.jpeg', 2);

-- Volcando estructura para tabla oasisgourmet.bonele
CREATE TABLE IF NOT EXISTS `bonele` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` float(11,2) NOT NULL,
  `img` varchar(255) NOT NULL,
  `fkSalsa` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkSalsa` (`fkSalsa`),
  CONSTRAINT `bonele_ibfk_1` FOREIGN KEY (`fkSalsa`) REFERENCES `salsa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla oasisgourmet.bonele: ~0 rows (aproximadamente)

-- Volcando estructura para tabla oasisgourmet.detalleventa
CREATE TABLE IF NOT EXISTS `detalleventa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkVenta` int(11) NOT NULL,
  `fkProducto` int(11) NOT NULL,
  `cantidad` float(11,2) NOT NULL,
  `subtotal` float(11,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkVenta` (`fkVenta`),
  KEY `fkProducto` (`fkProducto`),
  CONSTRAINT `detalleventa_ibfk_1` FOREIGN KEY (`fkVenta`) REFERENCES `venta` (`id`),
  CONSTRAINT `detalleventa_ibfk_2` FOREIGN KEY (`fkProducto`) REFERENCES `postre` (`id`),
  CONSTRAINT `detalleventa_ibfk_3` FOREIGN KEY (`fkProducto`) REFERENCES `hamburguesa` (`id`),
  CONSTRAINT `detalleventa_ibfk_4` FOREIGN KEY (`fkProducto`) REFERENCES `torta` (`id`),
  CONSTRAINT `detalleventa_ibfk_5` FOREIGN KEY (`fkProducto`) REFERENCES `bebida` (`id`),
  CONSTRAINT `detalleventa_ibfk_6` FOREIGN KEY (`fkProducto`) REFERENCES `taco` (`id`),
  CONSTRAINT `detalleventa_ibfk_7` FOREIGN KEY (`fkProducto`) REFERENCES `snacks` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla oasisgourmet.detalleventa: ~0 rows (aproximadamente)

-- Volcando estructura para tabla oasisgourmet.hamburguesa
CREATE TABLE IF NOT EXISTS `hamburguesa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` float(11,2) NOT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla oasisgourmet.hamburguesa: ~0 rows (aproximadamente)

-- Volcando estructura para tabla oasisgourmet.pago
CREATE TABLE IF NOT EXISTS `pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tPago` varchar(10) NOT NULL,
  `fkVenta` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkVenta` (`fkVenta`),
  CONSTRAINT `pago_ibfk_1` FOREIGN KEY (`fkVenta`) REFERENCES `venta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla oasisgourmet.pago: ~0 rows (aproximadamente)

-- Volcando estructura para tabla oasisgourmet.postre
CREATE TABLE IF NOT EXISTS `postre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` float(11,2) NOT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla oasisgourmet.postre: ~0 rows (aproximadamente)

-- Volcando estructura para tabla oasisgourmet.salsa
CREATE TABLE IF NOT EXISTS `salsa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `picor` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla oasisgourmet.salsa: ~1 rows (aproximadamente)
INSERT IGNORE INTO `salsa` (`id`, `nombre`, `picor`) VALUES
	(2, 'Mango habanero', 'Poco');

-- Volcando estructura para tabla oasisgourmet.snacks
CREATE TABLE IF NOT EXISTS `snacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` float(11,2) NOT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla oasisgourmet.snacks: ~0 rows (aproximadamente)

-- Volcando estructura para tabla oasisgourmet.taco
CREATE TABLE IF NOT EXISTS `taco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` float(11,2) NOT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla oasisgourmet.taco: ~0 rows (aproximadamente)

-- Volcando estructura para tabla oasisgourmet.tbebida
CREATE TABLE IF NOT EXISTS `tbebida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla oasisgourmet.tbebida: ~5 rows (aproximadamente)
INSERT IGNORE INTO `tbebida` (`id`, `tipo`) VALUES
	(2, 'Natural'),
	(3, 'Gaseosa'),
	(4, 'Jugo o Licuado'),
	(5, 'Alcohólica'),
	(6, 'Caliente');

-- Volcando estructura para tabla oasisgourmet.torta
CREATE TABLE IF NOT EXISTS `torta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` float(11,2) NOT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla oasisgourmet.torta: ~0 rows (aproximadamente)

-- Volcando estructura para tabla oasisgourmet.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `superadmin` smallint(1) DEFAULT 0,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `registration_ip` varchar(15) DEFAULT NULL,
  `bind_to_ip` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `email_confirmed` smallint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla oasisgourmet.user: ~2 rows (aproximadamente)
INSERT IGNORE INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `confirmation_token`, `status`, `superadmin`, `created_at`, `updated_at`, `registration_ip`, `bind_to_ip`, `email`, `email_confirmed`) VALUES
	(1, 'superadmin', 'kz2px152FAWlkHbkZoCiXgBAd-S8SSjF', '$2y$13$MhlYe12xkGFnSeK0sO2up.Y9kAD9Ct6JS1i9VLP7YAqd1dFsSylz2', NULL, 1, 1, 1426062188, 1426062188, NULL, NULL, NULL, 0),
	(2, 'yubran', '_LUcdL6oDPxil1hFThJ9-y59s-8CkBwq', '$2y$13$zZIFtwZoQvTQV9mT84tYieFHLA6P6KhkKFj6BJ8omgfxx9QxqN0xO', NULL, 1, 0, 1713081974, 1713081974, '127.0.0.1', '', '', 0);

-- Volcando estructura para tabla oasisgourmet.user_visit_log
CREATE TABLE IF NOT EXISTS `user_visit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `language` char(2) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visit_time` int(11) NOT NULL,
  `browser` varchar(30) DEFAULT NULL,
  `os` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_visit_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla oasisgourmet.user_visit_log: ~29 rows (aproximadamente)
INSERT IGNORE INTO `user_visit_log` (`id`, `token`, `ip`, `language`, `user_agent`, `user_id`, `visit_time`, `browser`, `os`) VALUES
	(1, '6616b9e2317a3', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 1, 1712765410, 'Chrome', 'Windows'),
	(2, '6616c21f4d6ea', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 1, 1712767519, 'Chrome', 'Windows'),
	(3, '6616c6cad161e', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 1, 1712768714, 'Chrome', 'Windows'),
	(4, '6616c7b043198', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 1, 1712768944, 'Chrome', 'Windows'),
	(5, '6617007853482', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 1, 1712783480, 'Chrome', 'Windows'),
	(6, '6617028a2720a', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 1, 1712784010, 'Chrome', 'Windows'),
	(7, '661705d29e66f', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 1, 1712784850, 'Chrome', 'Windows'),
	(8, '661707c8b6352', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 1, 1712785352, 'Chrome', 'Windows'),
	(9, '661851d41e5a4', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 1, 1712869844, 'Chrome', 'Windows'),
	(10, '661b79ca768a4', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 1, 1713076682, 'Chrome', 'Windows'),
	(11, '661b7aa4f0003', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 1, 1713076900, 'Chrome', 'Windows'),
	(12, '661b8e9158c96', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 2, 1713082001, 'Chrome', 'Windows'),
	(13, '661ca475d66e7', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 1, 1713153141, 'Chrome', 'Windows'),
	(14, '661d99f919d9e', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 1, 1713215993, 'Chrome', 'Windows'),
	(15, '661db34664d85', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 1, 1713222470, 'Chrome', 'Windows'),
	(16, '661db9269d5f2', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 1, 1713223974, 'Chrome', 'Windows'),
	(17, '661e1d42aed9a', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 1, 1713249602, 'Chrome', 'Windows'),
	(18, '661ec45927b55', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 1, 1713292377, 'Chrome', 'Windows'),
	(19, '661ec47783456', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 2, 1713292407, 'Chrome', 'Windows'),
	(20, '661ec49079011', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 1, 1713292432, 'Chrome', 'Windows'),
	(21, '661ec545317ef', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 1, 1713292613, 'Chrome', 'Windows'),
	(22, '661ec5d2c9303', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 1, 1713292754, 'Chrome', 'Windows'),
	(23, '661ec5d3ef330', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 1, 1713292755, 'Chrome', 'Windows'),
	(24, '661ef3abaa80b', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 1, 1713304491, 'Chrome', 'Windows'),
	(25, '661f657f5383a', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 1, 1713333631, 'Chrome', 'Windows'),
	(26, '6625fdf54186f', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 1, 1713765877, 'Chrome', 'Windows'),
	(27, '6625ff5e90d22', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 1, 1713766238, 'Chrome', 'Windows'),
	(28, '6626169c17da6', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 1, 1713772188, 'Chrome', 'Windows'),
	(29, '6626d6964f94a', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 1, 1713821334, 'Chrome', 'Windows');

-- Volcando estructura para tabla oasisgourmet.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apaterno` varchar(30) NOT NULL,
  `amaterno` varchar(30) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `contraseña` varchar(20) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `ingreso` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla oasisgourmet.usuario: ~1 rows (aproximadamente)
INSERT IGNORE INTO `usuario` (`id`, `nombre`, `apaterno`, `amaterno`, `nickname`, `contraseña`, `tipo`, `ingreso`) VALUES
	(1, 'Paul Yubran', 'Pozo', 'Gómez', '1Yubran1', 'qwerty123', 'Gerente', '2024-04-14 02:45:44');

-- Volcando estructura para tabla oasisgourmet.venta
CREATE TABLE IF NOT EXISTS `venta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkUsuario` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `total` float(11,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkUsuario` (`fkUsuario`),
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`fkUsuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla oasisgourmet.venta: ~1 rows (aproximadamente)
INSERT IGNORE INTO `venta` (`id`, `fkUsuario`, `fecha`, `total`) VALUES
	(1, 1, '2024-04-10 15:45:33', 350.00);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
