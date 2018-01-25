CREATE  TABLE users (
  username VARCHAR(45) NOT NULL ,
  password VARCHAR(60) NOT NULL ,
  enabled TINYINT NOT NULL DEFAULT 1 ,
  PRIMARY KEY (username));

CREATE TABLE user_roles (
  user_role_id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(45) NOT NULL,
  role varchar(45) NOT NULL,
  PRIMARY KEY (user_role_id),
  UNIQUE KEY uni_username_role (role,username),
  KEY fk_username_idx (username),
  CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES users (username));

INSERT INTO users(username,password,enabled)
VALUES ('dima','$2a$10$Rly6iP.1fFPnNVOeyBc.bOghWODZ5CIBSZzRBNZAk3PhFqeTNfyTO', true);
INSERT INTO users(username,password,enabled)
VALUES ('marat','$2a$10$g.zU7uTD2/wGupbf1Ex03OYa/Ob2Gj1fXPNd3S//pFMlUXZo37IlK', true);

INSERT INTO user_roles (username, role)
VALUES ('dima', 'ROLE_USER');
INSERT INTO user_roles (username, role)
VALUES ('dima', 'ROLE_ADMIN');
INSERT INTO user_roles (username, role)
VALUES ('marat', 'ROLE_USER');