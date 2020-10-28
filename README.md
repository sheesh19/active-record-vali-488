## ActiveRecord Boilerplate

This is a starting point for the Activerecord Basics lecture using sqlite. During the lecture, you need to:

- Clone The project
- Run `bundle install`
- Explain `rake -T`
- Explain `config/database.yml`
- Run `rake db:create` / `rake db:drop`
- Create and run 2 migrations


### REVIEW

- Relational Database: tables representing data and tables can be related to one another through foreign keys (ids)

- Relationships: 1:N, N:N, 1:1

- SQL CRUD (characters as our table)

- SQL is the language for relational databases

### READ ALL for SQL
- SELECT * FROM characters;

### READ ONE for SQL
- SELECT * FROM characters WHERE id = 1;

### CREATE
- INSERT INTO

### UPDATE
- UPDATE SET

### DELETE
- DELETE FROM


### FILTERS
- ORDER BY << sorts results in order (ASC / DESC)
- COUNT << returns # of items that meet the criteria
- GROUP BY << groups results by specified column / criteria


### JOIN
JOIN table_name ON column_one.id = column_two.column_one_id



### ACTIVE RECORD
- Active Record: design pattern, allows you to interact with DB through Ruby methods which are inherited, ActiveRecord is a gem. Links one record in our database to one instance of our Class.

### RAKE TASKS
- CREATE: rake db:create
- DROP: rake db:drop
- MIGRATE: rake db:migrate

- Migrations: change the structure of the database / schema (add a table, new column, drop a table)

## ACTIVE RECORD CRUD (characters)


### READ ALL
- Character.all

### READ ONE
- Character.find(1)
- Character.find_by(name: 'Harry Potter') # returns first one

### FILTERED MANY
- Character.where(address: 'Hogwarts') # returns all as an ARRAY

### CREATE
- Character.create(name: 'Harry Potter')
- character = Character.new(name: 'Harry Potter')
- character.save

### UPDATE
- character = Character.find(1)
- character.name = 'Voldemort'
- character.save

### DELETE
- character = Character.find(1)
- character.destroy


### ADVANCED
- Character.last
- Character.first
- Character.first(5)
- Character.count














