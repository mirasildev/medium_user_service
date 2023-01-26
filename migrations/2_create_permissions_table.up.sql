CREATE TABLE IF NOT EXISTS permissions(
    id SERIAL PRIMARY KEY,
    user_type VARCHAR CHECK ("user_type" IN('superadmin', 'user')) NOT NULL,
    resource VARCHAR NOT NULL,
    action VARCHAR NOT NULL,
  UNIQUE(user_type, resource, action)  
);

INSERT INTO permissions(user_type, resource, action) VALUES ('superadmin', 'users', 'create');
INSERT INTO permissions(user_type, resource, action) VALUES ('superadmin', 'users', 'update');
INSERT INTO permissions(user_type, resource, action) VALUES ('superadmin', 'users', 'get');
INSERT INTO permissions(user_type, resource, action) VALUES ('superadmin', 'users', 'get-all');
INSERT INTO permissions(user_type, resource, action) VALUES ('superadmin', 'users', 'delete');

INSERT INTO permissions(user_type, resource, action) VALUES ('superadmin', 'categories', 'create');
INSERT INTO permissions(user_type, resource, action) VALUES ('superadmin', 'categories', 'get');
INSERT INTO permissions(user_type, resource, action) VALUES ('superadmin', 'categories', 'get-all');
INSERT INTO permissions(user_type, resource, action) VALUES ('superadmin', 'categories', 'update');
INSERT INTO permissions(user_type, resource, action) VALUES ('superadmin', 'categories', 'delete');

INSERT INTO permissions(user_type, resource, action) VALUES ('superadmin', 'posts', 'create');
INSERT INTO permissions(user_type, resource, action) VALUES ('superadmin', 'posts', 'get');
INSERT INTO permissions(user_type, resource, action) VALUES ('superadmin', 'posts', 'get-all');
INSERT INTO permissions(user_type, resource, action) VALUES ('superadmin', 'posts', 'update');
INSERT INTO permissions(user_type, resource, action) VALUES ('superadmin', 'posts', 'delete');

INSERT INTO permissions(user_type, resource, action) VALUES ('superadmin', 'comments', 'create');
INSERT INTO permissions(user_type, resource, action) VALUES ('superadmin', 'comments', 'update');
INSERT INTO permissions(user_type, resource, action) VALUES ('superadmin', 'comments', 'get');
INSERT INTO permissions(user_type, resource, action) VALUES ('superadmin', 'comments', 'get-all');
INSERT INTO permissions(user_type, resource, action) VALUES ('superadmin', 'comments', 'delete');

INSERT INTO permissions(user_type, resource, action) VALUES ('superadmin', 'likes', 'create');
INSERT INTO permissions(user_type, resource, action) VALUES ('superadmin', 'likes', 'get');
INSERT INTO permissions(user_type, resource, action) VALUES ('superadmin', 'likes', 'get-all-likes');

INSERT INTO permissions(user_type, resource, action) VALUES ('user', 'users', 'update');
INSERT INTO permissions(user_type, resource, action) VALUES ('user', 'users', 'get');
INSERT INTO permissions(user_type, resource, action) VALUES ('user', 'users', 'delete');
INSERT INTO permissions(user_type, resource, action) VALUES ('user', 'users', 'update-password');

INSERT INTO permissions(user_type, resource, action) VALUES ('user', 'categories', 'get-all');
INSERT INTO permissions(user_type, resource, action) VALUES ('user', 'categories', 'get');

INSERT INTO permissions(user_type, resource, action) VALUES ('user', 'posts', 'create');
INSERT INTO permissions(user_type, resource, action) VALUES ('user', 'posts', 'update');
INSERT INTO permissions(user_type, resource, action) VALUES ('user', 'posts', 'get');
INSERT INTO permissions(user_type, resource, action) VALUES ('user', 'posts', 'get-all');
INSERT INTO permissions(user_type, resource, action) VALUES ('user', 'posts', 'delete');

INSERT INTO permissions(user_type, resource, action) VALUES ('user', 'comments', 'create');
INSERT INTO permissions(user_type, resource, action) VALUES ('user', 'comments', 'update');
INSERT INTO permissions(user_type, resource, action) VALUES ('user', 'comments', 'get');
INSERT INTO permissions(user_type, resource, action) VALUES ('user', 'comments', 'get-all');
INSERT INTO permissions(user_type, resource, action) VALUES ('user', 'comments', 'delete');

INSERT INTO permissions(user_type, resource, action) VALUES ('user', 'likes', 'create');
INSERT INTO permissions(user_type, resource, action) VALUES ('user', 'likes', 'get');
INSERT INTO permissions(user_type, resource, action) VALUES ('user', 'likes', 'get-all-likes');