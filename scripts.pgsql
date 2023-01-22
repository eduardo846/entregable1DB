INSERT INTO users (
    name,
    email,
    password,
    age)
    VALUES (
    'user1', 
    'user1@gmail.com', 
    'passuser1',
    19);
INSERT INTO users (
    name,
    email,
    password,
    age)
    VALUES (
    'user2', 
    'user2@gmail.com', 
    'passuser2',
    37);

INSERT INTO categories (name) VALUES ('Drama');
INSERT INTO categories (name) VALUES ('Terror');

INSERT INTO courses (
    users_id,
    title,
    description,
    level,
    teacher
)
VALUES (
1,
'Curso terror 1',
'Curso de terror 1 medio para nuevos alumnos',
'prinicipiante',
'Pedro Perez'
);
INSERT INTO courses (
    users_id,
    title,
    description,
    level,
    teacher
)
VALUES (
2,
'Curso terror 2',
'Curso de terror 2 avanzado para alumnos antiguos',
'Avanzados',
'Oscar Jimenez'
);

INSERT INTO course_video (
categories_id,
courses_id,
title,
url
)
VALUES(
1,
2,
'Inscribete en curso Terror',
'https://duckduckgo.com/?q=tardutor&atb=v314-1&ia=web'
);
INSERT INTO course_video (
categories_id,
courses_id,
title,
url
)
VALUES(
2,
1,
'Inscribete en curso Terror 2',
'https://duckduckgo.com/?q=tardutor&atb=v314-1&ia=web'
);

SELECT *from categories;
SELECT *from courses;
SELECT *from users;
SELECT *from course_video;