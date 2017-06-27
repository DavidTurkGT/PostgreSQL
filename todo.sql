-- Write the CREATE TABLE statement to make this table.
-- Each item should have the following fields:
--
-- id -- a serial primary key
-- title -- not optional, string up to 255 characters
-- details -- optional, holds a large amount of text
-- priority -- not optional, an integer. Default is 1.
-- created_at -- not optional. A date and time.
-- completed_at -- optional. A date a time.

CREATE TABLE todos(
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details TEXT NULL,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
);

-- Write INSERT statements to insert five todos into this table, with one of them completed.

INSERT INTO todos (title, details, priority, created_at) VALUES ('Do Laundry', 'The piles of laudry are too damn high and they must be washed', 1, DATE  '2017-06-27');
INSERT INTO todos (title, details, priority, created_at) VALUES ('Buy cat food', 'The cat food is running a little low. I should buy some new food at some point', 2, DATE '2017-06-20');
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Complete project', 'We have a daily project for PostgreSQL that needs to be done by 4PM', 1, DATE '2017-06-27', current_timestamp);
INSERT INTO todos (title, details, priority, created_at) VALUES ('Beat Zelda', 'Beat Zelda: Breath of the Wild', 3, DATE '2017-06-18');
INSERT INTO todos (title, details, priority, created_at) VALUES ('Make gold','Use the sorcerers stone to create gold from any item', 5, DATE '2000-01-19');

-- Write a SELECT statement to find all incomplete todos.

SELECT * FROM todos WHERE completed_at IS NULL;

-- Write a SELECT statement to find all todos with a priority above 1.

SELECT * FROM todos WHERE priority > 1;

-- Write an UPDATE statement to complete one todo by its id. Your ids may differ, so you will choose the id to up.

UPDATE todos SET completed_at = current_timestamp WHERE id = 1;

-- Write a DELETE statement to delete all completed todos.

DELETE FROM todos WHERE completed_at IS NOT NULL;
