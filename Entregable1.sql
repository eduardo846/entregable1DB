CREATE TABLE "users" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar NOT NULL,
  "password" varchar NOT NULL,
  "age" int NOT NULL
);

CREATE TABLE "courses" (
  "id" serial PRIMARY KEY,
  "users_id" int,
  "title" varchar NOT NULL,
  "description" varchar NOT NULL,
  "level" varchar NOT NULL,
  "teacher" varchar NOT NULL
);

CREATE TABLE "course_video" (
  "id" serial PRIMARY KEY,
  "categories_id" int,
  "courses_id" int,
  "title" varchar NOT NULL,
  "url" varchar NOT NULL
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL
);

ALTER TABLE "courses" ADD FOREIGN KEY ("users_id") REFERENCES "users" ("id");

ALTER TABLE "course_video" ADD FOREIGN KEY ("categories_id") REFERENCES "categories" ("id");

ALTER TABLE "course_video" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");
