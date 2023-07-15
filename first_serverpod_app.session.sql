--
-- Class Task as table task
--

CREATE TABLE "task" (
  "id" serial,
  "taskTitle" text NOT NULL,
  "taskDateTime" text NOT NULL,
  "isTaskDone" boolean NOT NULL
);

ALTER TABLE ONLY "task"
  ADD CONSTRAINT task_pkey PRIMARY KEY (id);


