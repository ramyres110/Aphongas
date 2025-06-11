--
-- File generated with SQLiteStudio v3.4.6 on dom jun 1 11:17:07 2025
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: auth_group
CREATE TABLE IF NOT EXISTS auth_group (
    id   INTEGER       NOT NULL
                       PRIMARY KEY AUTOINCREMENT,
    name VARCHAR (150) NOT NULL
                       UNIQUE
);

INSERT INTO auth_group (id, name) VALUES (1, 'Administradores');
INSERT INTO auth_group (id, name) VALUES (2, 'Backoffice');
INSERT INTO auth_group (id, name) VALUES (3, 'Movimentacao');

-- Table: auth_group_permissions
CREATE TABLE IF NOT EXISTS auth_group_permissions (
    id            INTEGER NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    group_id      INTEGER NOT NULL
                          REFERENCES auth_group (id) DEFERRABLE INITIALLY DEFERRED,
    permission_id INTEGER NOT NULL
                          REFERENCES auth_permission (id) DEFERRABLE INITIALLY DEFERRED
);

INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (1, 1, 1);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (2, 1, 2);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (3, 1, 3);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (4, 1, 4);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (5, 1, 5);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (6, 1, 6);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (7, 1, 7);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (8, 1, 8);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (9, 1, 9);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (10, 1, 10);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (11, 1, 11);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (12, 1, 12);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (13, 1, 13);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (14, 1, 14);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (15, 1, 15);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (16, 1, 16);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (17, 1, 17);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (18, 1, 18);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (19, 1, 19);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (20, 1, 20);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (21, 1, 21);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (22, 1, 22);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (23, 1, 23);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (24, 1, 24);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (25, 1, 25);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (26, 1, 26);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (27, 1, 27);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (28, 1, 28);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (29, 1, 29);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (30, 1, 30);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (31, 1, 31);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (32, 1, 32);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (33, 1, 33);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (34, 1, 34);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (35, 1, 35);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (36, 1, 36);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (37, 1, 37);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (38, 1, 38);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (39, 1, 39);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (40, 1, 40);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (41, 2, 1);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (42, 2, 2);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (43, 2, 4);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (44, 2, 13);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (45, 2, 16);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (46, 2, 21);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (47, 2, 22);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (48, 2, 23);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (49, 2, 24);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (50, 2, 25);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (51, 2, 26);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (52, 2, 27);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (53, 2, 28);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (54, 2, 29);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (55, 2, 30);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (56, 2, 31);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (57, 2, 32);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (58, 2, 33);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (59, 2, 34);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (60, 2, 35);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (61, 2, 36);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (62, 2, 37);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (63, 2, 38);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (64, 2, 39);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (65, 2, 40);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (66, 3, 32);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (67, 3, 36);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (68, 3, 37);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (69, 3, 38);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (70, 3, 40);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (71, 3, 24);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (72, 3, 28);

-- Table: auth_permission
CREATE TABLE IF NOT EXISTS auth_permission (
    id              INTEGER       NOT NULL
                                  PRIMARY KEY AUTOINCREMENT,
    content_type_id INTEGER       NOT NULL
                                  REFERENCES django_content_type (id) DEFERRABLE INITIALLY DEFERRED,
    codename        VARCHAR (100) NOT NULL,
    name            VARCHAR (255) NOT NULL
);

INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (1, 1, 'add_logentry', 'Can add log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (2, 1, 'change_logentry', 'Can change log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (3, 1, 'delete_logentry', 'Can delete log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (4, 1, 'view_logentry', 'Can view log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (5, 2, 'add_permission', 'Can add permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (6, 2, 'change_permission', 'Can change permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (7, 2, 'delete_permission', 'Can delete permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (8, 2, 'view_permission', 'Can view permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (9, 3, 'add_group', 'Can add group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (10, 3, 'change_group', 'Can change group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (11, 3, 'delete_group', 'Can delete group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (12, 3, 'view_group', 'Can view group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (13, 4, 'add_user', 'Can add user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (14, 4, 'change_user', 'Can change user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (15, 4, 'delete_user', 'Can delete user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (16, 4, 'view_user', 'Can view user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (17, 5, 'add_contenttype', 'Can add content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (18, 5, 'change_contenttype', 'Can change content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (19, 5, 'delete_contenttype', 'Can delete content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (20, 5, 'view_contenttype', 'Can view content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (21, 6, 'add_session', 'Can add session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (22, 6, 'change_session', 'Can change session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (23, 6, 'delete_session', 'Can delete session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (24, 6, 'view_session', 'Can view session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (25, 7, 'add_deposito', 'Can add deposito');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (26, 7, 'change_deposito', 'Can change deposito');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (27, 7, 'delete_deposito', 'Can delete deposito');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (28, 7, 'view_deposito', 'Can view deposito');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (29, 8, 'add_fornecedor', 'Can add fornecedor');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (30, 8, 'change_fornecedor', 'Can change fornecedor');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (31, 8, 'delete_fornecedor', 'Can delete fornecedor');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (32, 8, 'view_fornecedor', 'Can view fornecedor');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (33, 9, 'add_produto', 'Can add produto');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (34, 9, 'change_produto', 'Can change produto');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (35, 9, 'delete_produto', 'Can delete produto');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (36, 9, 'view_produto', 'Can view produto');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (37, 10, 'add_movimentacao', 'Can add movimentacao');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (38, 10, 'change_movimentacao', 'Can change movimentacao');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (39, 10, 'delete_movimentacao', 'Can delete movimentacao');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (40, 10, 'view_movimentacao', 'Can view movimentacao');

-- Table: auth_user
CREATE TABLE IF NOT EXISTS auth_user (
    id           INTEGER       NOT NULL
                               PRIMARY KEY AUTOINCREMENT,
    password     VARCHAR (128) NOT NULL,
    last_login   DATETIME      NULL,
    is_superuser BOOL          NOT NULL,
    username     VARCHAR (150) NOT NULL
                               UNIQUE,
    last_name    VARCHAR (150) NOT NULL,
    email        VARCHAR (254) NOT NULL,
    is_staff     BOOL          NOT NULL,
    is_active    BOOL          NOT NULL,
    date_joined  DATETIME      NOT NULL,
    first_name   VARCHAR (150) NOT NULL
);

INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (1, 'pbkdf2_sha256$1000000$9BwG1EMUEvKmZ5DgexZ5Sk$bIlEzNyEw4SJbeTU+xTWgUdzZjx0Jv0dEOgGmpfkN8w=', '2025-06-01 12:06:40.485480', 1, 'admin', '', 'admin@aphongas.com', 1, 1, '2025-05-23 10:00:01', 'Administrador');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (2, 'pbkdf2_sha256$1000000$AFj2rdXabAgbs0S2ciHbei$yat2luWA/7TudKb5ySul1rl6+VJN1ubvU5KK9qtUOLE=', '2025-06-01 14:14:07.648258', 0, 'colaborador', '', 'colaborador@aphongas.com', 1, 1, '2025-05-26 02:25:58', 'Colaborador');

-- Table: auth_user_groups
CREATE TABLE IF NOT EXISTS auth_user_groups (
    id       INTEGER NOT NULL
                     PRIMARY KEY AUTOINCREMENT,
    user_id  INTEGER NOT NULL
                     REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    group_id INTEGER NOT NULL
                     REFERENCES auth_group (id) DEFERRABLE INITIALLY DEFERRED
);

INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (1, 2, 3);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (2, 1, 1);

-- Table: auth_user_user_permissions
CREATE TABLE IF NOT EXISTS auth_user_user_permissions (
    id            INTEGER NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    user_id       INTEGER NOT NULL
                          REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    permission_id INTEGER NOT NULL
                          REFERENCES auth_permission (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: depositos
CREATE TABLE IF NOT EXISTS depositos (
    id            INTEGER       NOT NULL
                                PRIMARY KEY AUTOINCREMENT,
    created_at    DATETIME      NOT NULL,
    updated_at    DATETIME      NOT NULL,
    descricao     VARCHAR (100) NOT NULL,
    endereco      TEXT          NOT NULL,
    capacidade_m3 REAL          NOT NULL,
    modelo        VARCHAR (1)   NOT NULL,
    tipo          VARCHAR (1)   NOT NULL,
    created_by_id INTEGER       NULL
                                REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    updated_by_id INTEGER       NULL
                                REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    status        VARCHAR (1)   NOT NULL
);

INSERT INTO depositos (id, created_at, updated_at, descricao, endereco, capacidade_m3, modelo, tipo, created_by_id, updated_by_id, status) VALUES (1, '2025-05-23 10:13:59.500020', '2025-05-23 10:13:59.500020', 'Deposito Padrão', 'Avenida Manoel Monteiro, nº 55, Bairro Santuário - Trindade-Goiás', 0.0, 'P', 'E', 1, 1, 'A');

-- Table: django_admin_log
CREATE TABLE IF NOT EXISTS django_admin_log (
    id              INTEGER             NOT NULL
                                        PRIMARY KEY AUTOINCREMENT,
    object_id       TEXT                NULL,
    object_repr     VARCHAR (200)       NOT NULL,
    action_flag     [SMALLINT UNSIGNED] NOT NULL
                                        CHECK ("action_flag" >= 0),
    change_message  TEXT                NOT NULL,
    content_type_id INTEGER             NULL
                                        REFERENCES django_content_type (id) DEFERRABLE INITIALLY DEFERRED,
    user_id         INTEGER             NOT NULL
                                        REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    action_time     DATETIME            NOT NULL
);

INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (1, '1', 'Deposito object (1)', 1, '[{"added": {}}]', 7, 1, '2025-05-23 10:13:59.598903');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (2, '1', 'Fornecedor object (1)', 1, '[{"added": {}}]', 8, 1, '2025-05-23 13:45:56.412829');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (3, '1', 'Produto object (1)', 1, '[{"added": {}}]', 9, 1, '2025-05-23 13:56:03.151865');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (4, '1', '1 - Água Mineral Nativa 20lt', 2, '[{"changed": {"fields": ["Marca", "Qtd embalagem", "Unidade"]}}]', 9, 1, '2025-05-23 14:26:03.860791');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (5, '2', '2 - Água Mineral Indaiá 20lt', 1, '[{"added": {}}]', 9, 1, '2025-05-23 14:27:36.568353');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (6, '3', '3 - Gás Ultragás 13kg', 1, '[{"added": {}}]', 9, 1, '2025-05-25 14:24:57.271435');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (7, '4', '4 - Gás Consigás 13kg', 1, '[{"added": {}}]', 9, 1, '2025-05-25 14:29:45.560909');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (8, '5', '5 - Gás Liquigás 13kg', 1, '[{"added": {}}]', 9, 1, '2025-05-25 14:39:21.741125');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (9, '6', '6 - Feijão Barão 2kg', 1, '[{"added": {}}]', 9, 1, '2025-05-25 14:46:06.465867');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (10, '6', '6 - Feijão Barão 2kg', 2, '[{"changed": {"fields": ["Fotografia"]}}]', 9, 1, '2025-05-25 16:36:42.061701');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (11, '6', '6 - Feijão Barão 2kg', 2, '[{"changed": {"fields": ["Fotografia"]}}]', 9, 1, '2025-05-25 16:38:42.369088');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (12, '6', '6 - Feijão Barão 2kg', 3, '', 9, 1, '2025-05-25 16:41:36.504786');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (13, '6', 'Produto object (6)', 1, '[{"added": {}}]', 9, 1, '2025-05-26 01:30:02.583536');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (14, '6', 'Produto object (6)', 3, '', 9, 1, '2025-05-26 01:31:26.745397');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (15, '5', 'Produto object (5)', 3, '', 9, 1, '2025-05-26 01:31:26.747410');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (16, '4', 'Produto object (4)', 3, '', 9, 1, '2025-05-26 01:31:26.747410');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (17, '3', 'Produto object (3)', 3, '', 9, 1, '2025-05-26 01:31:26.747410');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (18, '2', 'Produto object (2)', 3, '', 9, 1, '2025-05-26 01:31:26.747410');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (19, '1', 'Produto object (1)', 3, '', 9, 1, '2025-05-26 01:31:26.747410');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (20, '7', 'Produto object (7)', 1, '[{"added": {}}]', 9, 1, '2025-05-26 01:56:45.616979');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (21, '8', 'Produto object (8)', 1, '[{"added": {}}]', 9, 1, '2025-05-26 01:58:14.959144');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (22, '9', 'Produto object (9)', 1, '[{"added": {}}]', 9, 1, '2025-05-26 02:00:37.985102');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (23, '1', 'Movimentacao object (1)', 1, '[{"added": {}}]', 10, 1, '2025-05-26 02:05:57.990939');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (24, '7', '7 - Água Mineral Nativa 20lt', 2, '[{"changed": {"fields": ["Status"]}}]', 9, 1, '2025-05-26 02:09:27.816270');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (25, '7', '7 - Água Mineral Nativa 20lt', 2, '[{"changed": {"fields": ["Status"]}}]', 9, 1, '2025-05-26 02:20:07.793606');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (26, '2', 'colaborador', 1, '[{"added": {}}]', 4, 1, '2025-05-26 02:25:59.860443');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (27, '1', 'Administradores', 1, '[{"added": {}}]', 3, 1, '2025-05-26 02:28:30.865212');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (28, '2', 'Backoffice', 1, '[{"added": {}}]', 3, 1, '2025-05-26 02:30:01.656534');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (29, '3', 'Movimentacao', 1, '[{"added": {}}]', 3, 1, '2025-05-26 02:31:17.744095');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (30, '2', 'colaborador', 2, '[{"changed": {"fields": ["First name", "Email address", "Groups", "Last login"]}}]', 4, 1, '2025-05-26 02:32:07.281859');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (31, '2', 'colaborador', 2, '[{"changed": {"fields": ["password"]}}]', 4, 1, '2025-05-26 02:33:13.672974');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (32, '2', 'colaborador', 2, '[]', 4, 1, '2025-05-26 02:33:26.591924');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (33, '2', 'colaborador', 2, '[{"changed": {"fields": ["Staff status"]}}]', 4, 1, '2025-05-26 02:35:03.824388');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (34, '2', 'Movimentacao object (2)', 1, '[{"added": {}}]', 10, 2, '2025-05-26 02:44:13.962392');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (35, '3', 'Movimentacao object (3)', 1, '[{"added": {}}]', 10, 2, '2025-05-26 02:44:54.933616');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (36, '1', 'admin', 2, '[{"changed": {"fields": ["First name"]}}]', 4, 1, '2025-05-26 02:54:54.484908');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (37, '1', 'admin', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 1, '2025-05-26 02:55:07.017344');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (38, '9', '9 - Gás Ultragás 13kg', 2, '[{"changed": {"fields": ["Codigo de barras"]}}]', 9, 1, '2025-05-31 19:59:39.256178');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (39, '8', '8 - Água Mineral Indaiá 20lt', 2, '[{"changed": {"fields": ["Codigo de barras"]}}]', 9, 1, '2025-05-31 20:01:58.105570');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (40, '7', '7 - Água Mineral Nativa 20lt', 2, '[{"changed": {"fields": ["Codigo de barras"]}}]', 9, 1, '2025-05-31 20:02:07.613997');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (41, '2', 'colaborador', 2, '[{"changed": {"fields": ["password"]}}]', 4, 1, '2025-05-31 21:12:12.948398');

-- Table: django_content_type
CREATE TABLE IF NOT EXISTS django_content_type (
    id        INTEGER       NOT NULL
                            PRIMARY KEY AUTOINCREMENT,
    app_label VARCHAR (100) NOT NULL,
    model     VARCHAR (100) NOT NULL
);

INSERT INTO django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO django_content_type (id, app_label, model) VALUES (7, 'core', 'deposito');
INSERT INTO django_content_type (id, app_label, model) VALUES (8, 'core', 'fornecedor');
INSERT INTO django_content_type (id, app_label, model) VALUES (9, 'core', 'produto');
INSERT INTO django_content_type (id, app_label, model) VALUES (10, 'core', 'movimentacao');

-- Table: django_migrations
CREATE TABLE IF NOT EXISTS django_migrations (
    id      INTEGER       NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    app     VARCHAR (255) NOT NULL,
    name    VARCHAR (255) NOT NULL,
    applied DATETIME      NOT NULL
);

INSERT INTO django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2025-05-23 09:58:49.670221');
INSERT INTO django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2025-05-23 09:58:49.705274');
INSERT INTO django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2025-05-23 09:58:49.739784');
INSERT INTO django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2025-05-23 09:58:49.786677');
INSERT INTO django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2025-05-23 09:58:49.809849');
INSERT INTO django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2025-05-23 09:58:49.845776');
INSERT INTO django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2025-05-23 09:58:49.867187');
INSERT INTO django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2025-05-23 09:58:49.892055');
INSERT INTO django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2025-05-23 09:58:49.910742');
INSERT INTO django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2025-05-23 09:58:49.938356');
INSERT INTO django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2025-05-23 09:58:49.948105');
INSERT INTO django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2025-05-23 09:58:49.971375');
INSERT INTO django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2025-05-23 09:58:49.995457');
INSERT INTO django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2025-05-23 09:58:50.022113');
INSERT INTO django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2025-05-23 09:58:50.047574');
INSERT INTO django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2025-05-23 09:58:50.067088');
INSERT INTO django_migrations (id, app, name, applied) VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2025-05-23 09:58:50.091254');
INSERT INTO django_migrations (id, app, name, applied) VALUES (18, 'sessions', '0001_initial', '2025-05-23 09:58:50.112206');
INSERT INTO django_migrations (id, app, name, applied) VALUES (19, 'core', '0001_initial', '2025-05-23 10:12:50.061578');
INSERT INTO django_migrations (id, app, name, applied) VALUES (20, 'core', '0002_deposito_status_alter_deposito_created_by_and_more', '2025-05-23 13:42:48.968315');
INSERT INTO django_migrations (id, app, name, applied) VALUES (21, 'core', '0003_alter_produto_fotografia_alter_produto_peso_and_more', '2025-05-23 13:58:51.324513');
INSERT INTO django_migrations (id, app, name, applied) VALUES (22, 'core', '0004_produto_marca_produto_qtd_embalagem_produto_tipo_and_more', '2025-05-23 14:24:47.930245');
INSERT INTO django_migrations (id, app, name, applied) VALUES (23, 'core', '0005_alter_produto_fotografia', '2025-05-25 19:21:59.151929');
INSERT INTO django_migrations (id, app, name, applied) VALUES (24, 'core', '0006_movimentacao_produto', '2025-05-26 02:03:44.330317');
INSERT INTO django_migrations (id, app, name, applied) VALUES (25, 'core', '0007_alter_movimentacao_produto', '2025-05-26 02:04:55.879789');
INSERT INTO django_migrations (id, app, name, applied) VALUES (26, 'core', '0008_produto_codigo_de_barras', '2025-05-31 19:58:32.580786');

-- Table: django_session
CREATE TABLE IF NOT EXISTS django_session (
    session_key  VARCHAR (40) NOT NULL
                              PRIMARY KEY,
    session_data TEXT         NOT NULL,
    expire_date  DATETIME     NOT NULL
);

INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('alswwb7m0lqf70ry3zz2t37f4n9q0k3o', '.eJxVjMEOwiAQBf-FsyHAsgU8evcbCLAgVQNJaU_Gf9cmPej1zcx7MR-2tfpt5MXPxM5MsdPvFkN65LYDuod26zz1ti5z5LvCDzr4tVN-Xg7376CGUb-1MLIAOecSKEEYIRilMkrjCAqSsOQgA2q0OkMRINBYEJOME2pIQOz9Abv1Nog:1uLhWY:lT-MDRViZYhH327HQfCn81LM9vQXOLYrwBYjhy9_960', '2025-06-15 12:10:46.607014');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('diilp2p2c1oz9d2bm6u1pekkqxdf1fi3', '.eJxVjMEOwiAQBf-FsyHAsgU8evcbCLAgVQNJaU_Gf9cmPej1zcx7MR-2tfpt5MXPxM5MsdPvFkN65LYDuod26zz1ti5z5LvCDzr4tVN-Xg7376CGUb-1MLIAOecSKEEYIRilMkrjCAqSsOQgA2q0OkMRINBYEJOME2pIQOz9Abv1Nog:1uLjRv:Eb6QcQxAiLLEICJgmyhLFj4K7TjdNCDcAHTgn9KdV2g', '2025-06-15 14:14:07.656750');

-- Table: fornecedores
CREATE TABLE IF NOT EXISTS fornecedores (
    id            INTEGER       NOT NULL
                                PRIMARY KEY AUTOINCREMENT,
    status        VARCHAR (1)   NOT NULL,
    created_at    DATETIME      NOT NULL,
    updated_at    DATETIME      NOT NULL,
    nome          VARCHAR (100) NOT NULL,
    tipo          VARCHAR (2)   NOT NULL,
    documento     VARCHAR (50)  NULL,
    telefone      VARCHAR (20)  NULL,
    endereco      TEXT          NOT NULL,
    responsavel   VARCHAR (100) NULL,
    created_by_id INTEGER       NULL
                                REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    updated_by_id INTEGER       NULL
                                REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED
);

INSERT INTO fornecedores (id, status, created_at, updated_at, nome, tipo, documento, telefone, endereco, responsavel, created_by_id, updated_by_id) VALUES (1, 'A', '2025-05-23 13:45:56.408804', '2025-05-23 13:45:56.408804', 'Fornecedor Padrão', 'PF', '11111111111', NULL, 'Av 1', NULL, 1, 1);

-- Table: movimentacoes
CREATE TABLE IF NOT EXISTS movimentacoes (
    id            INTEGER       NOT NULL
                                PRIMARY KEY AUTOINCREMENT,
    status        VARCHAR (1)   NOT NULL,
    created_at    DATETIME      NOT NULL,
    updated_at    DATETIME      NOT NULL,
    quantidade    REAL          NOT NULL,
    tipo          VARCHAR (1)   NOT NULL,
    nome_cliente  VARCHAR (100) NULL,
    created_by_id INTEGER       NULL
                                REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    deposito_id   BIGINT        NOT NULL
                                REFERENCES depositos (id) DEFERRABLE INITIALLY DEFERRED,
    fornecedor_id BIGINT        NULL
                                REFERENCES fornecedores (id) DEFERRABLE INITIALLY DEFERRED,
    updated_by_id INTEGER       NULL
                                REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    produto_id    BIGINT        NOT NULL
                                REFERENCES produtos (id) DEFERRABLE INITIALLY DEFERRED
);

INSERT INTO movimentacoes (id, status, created_at, updated_at, quantidade, tipo, nome_cliente, created_by_id, deposito_id, fornecedor_id, updated_by_id, produto_id) VALUES (1, 'A', '2025-05-26 02:05:57.893263', '2025-05-26 02:05:57.893263', 100.0, 'E', NULL, 1, 1, 1, 1, 7);
INSERT INTO movimentacoes (id, status, created_at, updated_at, quantidade, tipo, nome_cliente, created_by_id, deposito_id, fornecedor_id, updated_by_id, produto_id) VALUES (2, 'A', '2025-05-26 02:44:13.960479', '2025-05-26 02:44:13.960479', 50.0, 'E', NULL, 2, 1, 1, 2, 8);
INSERT INTO movimentacoes (id, status, created_at, updated_at, quantidade, tipo, nome_cliente, created_by_id, deposito_id, fornecedor_id, updated_by_id, produto_id) VALUES (3, 'A', '2025-05-26 02:44:54.837250', '2025-05-26 02:44:54.837250', -10.0, 'S', NULL, 2, 1, 1, 2, 7);
INSERT INTO movimentacoes (id, status, created_at, updated_at, quantidade, tipo, nome_cliente, created_by_id, deposito_id, fornecedor_id, updated_by_id, produto_id) VALUES (4, 'A', '2025-05-31 21:36:54.377134', '2025-05-31 21:36:54.377134', -5.0, 'S', 'Teste', NULL, 1, NULL, NULL, 7);
INSERT INTO movimentacoes (id, status, created_at, updated_at, quantidade, tipo, nome_cliente, created_by_id, deposito_id, fornecedor_id, updated_by_id, produto_id) VALUES (5, 'A', '2025-06-01 01:43:29.629971', '2025-06-01 01:43:29.629971', -1.0, 'S', 'Alfredo', 1, 1, NULL, 1, 7);

-- Table: produtos
CREATE TABLE IF NOT EXISTS produtos (
    id                   INTEGER       NOT NULL
                                       PRIMARY KEY AUTOINCREMENT,
    status               VARCHAR (1)   NOT NULL,
    created_at           DATETIME      NOT NULL,
    updated_at           DATETIME      NOT NULL,
    descricao            VARCHAR (255) NOT NULL,
    unidade              VARCHAR (2)   NOT NULL,
    fotografia           VARCHAR (100) NULL,
    altura               REAL          NULL,
    largura              REAL          NULL,
    profundidade         REAL          NULL,
    peso                 REAL          NULL,
    observacoes          TEXT          NULL,
    created_by_id        INTEGER       NULL
                                       REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    deposito_padrao_id   BIGINT        NULL
                                       REFERENCES depositos (id) DEFERRABLE INITIALLY DEFERRED,
    fornecedor_padrao_id BIGINT        NULL
                                       REFERENCES fornecedores (id) DEFERRABLE INITIALLY DEFERRED,
    updated_by_id        INTEGER       NULL
                                       REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    marca                VARCHAR (100) NULL,
    qtd_embalagem        REAL          NOT NULL,
    tipo                 VARCHAR (15)  NOT NULL,
    codigo_de_barras     VARCHAR (200) NULL
);

INSERT INTO produtos (id, status, created_at, updated_at, descricao, unidade, fotografia, altura, largura, profundidade, peso, observacoes, created_by_id, deposito_padrao_id, fornecedor_padrao_id, updated_by_id, marca, qtd_embalagem, tipo, codigo_de_barras) VALUES (7, 'A', '2025-05-26 01:56:45.592223', '2025-05-31 20:02:07.611002', 'Água Mineral Nativa 20lt', 'L', 'public/uploads/c86839972be44557a9e26e777c2bd16d.jpg', 56.0, 36.0, 36.0, 20.0, '', 1, 1, 1, 1, 'Nativa', 20.0, 'Água', '7777777777');
INSERT INTO produtos (id, status, created_at, updated_at, descricao, unidade, fotografia, altura, largura, profundidade, peso, observacoes, created_by_id, deposito_padrao_id, fornecedor_padrao_id, updated_by_id, marca, qtd_embalagem, tipo, codigo_de_barras) VALUES (8, 'A', '2025-05-26 01:58:14.954358', '2025-05-31 20:01:58.103376', 'Água Mineral Indaiá 20lt', 'L', 'public/uploads/edb230d03de04df8b5a632e8b51d93a7.webp', 56.0, 36.0, 36.0, 20.0, '', 1, 1, 1, 1, 'Indaiá', 20.0, 'Água', '8888888888');
INSERT INTO produtos (id, status, created_at, updated_at, descricao, unidade, fotografia, altura, largura, profundidade, peso, observacoes, created_by_id, deposito_padrao_id, fornecedor_padrao_id, updated_by_id, marca, qtd_embalagem, tipo, codigo_de_barras) VALUES (9, 'A', '2025-05-26 02:00:37.977596', '2025-05-31 19:59:39.254147', 'Gás Ultragás 13kg', 'KG', 'public/uploads/cd12f32dc3a54d73a240201e6ca29565.jfif', 50.0, 40.0, 40.0, 13.0, '', 1, 1, 1, 1, 'Ultragás', 13.0, 'Gás', '9999999999');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
