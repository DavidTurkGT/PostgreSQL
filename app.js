const express = require('express');

const app = express();
const models = require('./models');

models.todos.create({
  title: 'Do Laundry',
  title: 'The piles of laudry are too damn high and they must be washed',
  priority: 1
}).then(function(item){
  console.log("Created laundry todo");
});

models.todos.create({
  title: 'Buy cat food',
  details: 'The cat food is running a little low. I should buy some new food at some point',
  priority: 2
}).then(function(item){
  console.log("Create cat food todo");
});

models.todos.create({
  title:'Complete project',
  details: 'We have a daily project for PostgreSQL that needs to be done by 4PM',
  priority: 1
});

models.todos.create({
  title: 'Beat Zelda',
  details: 'Beat Zelda: Breath of the Wild',
  priority: 3
});

models.todos.create({
  title: 'Make gold',
  details: 'Use the sorcerers stone to create gold from any item',
  priority: 5
});

app.get("/", function(req, res){
  res.send("You made it!");
});

app.listen(3000, function(){
  console.log("App running on localhost:3000")
});
