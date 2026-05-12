SET search_path TO security, public;

INSERT INTO security.role (name, description, status)
SELECT 'ADMINISTRATOR', 'Full access demo role', 'ACTIVE'::configuration.record_status
WHERE NOT EXISTS (
  SELECT 1
  FROM security.role r
  WHERE r.name = 'ADMINISTRATOR'
);

INSERT INTO security.app_user (person_id, username, password_hash, last_access_at, locked, status)
SELECT p.id,
       'ariel5253',
       crypt('ariel5253', gen_salt('bf')),
       now(),
       false,
       'ACTIVE'::configuration.record_status
FROM configuration.person p
WHERE p.document_number = '52530001'
  AND NOT EXISTS (
    SELECT 1
    FROM security.app_user au
    WHERE au.username = 'ariel5253'
  );

INSERT INTO security.app_user_role (app_user_id, role_id, status)
SELECT au.id,
       r.id,
       'ACTIVE'::configuration.record_status
FROM security.app_user au
JOIN security.role r ON r.name = 'ADMINISTRATOR'
WHERE au.username = 'ariel5253'
  AND NOT EXISTS (
    SELECT 1
    FROM security.app_user_role aur
    WHERE aur.app_user_id = au.id
      AND aur.role_id = r.id
  );
