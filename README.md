# Phase 3 Project

## Requirements

1. Access a Sqlite3 database using Active Record.
2. You should have a minimum of two models with a one to many relationship.
3. You should build out a simple **React** frontend that incorporates at least
   one GET request and one non-GET request (POST, PATCH, DELETE).
      Example: A user should be able to build out a todo list. 
      A user should be able to create a new task, see all the tasks, 
      update a specific task and delete a task. Tasks can be grouped into many
      categories, so a task has many categories and categories have many tasks.
4. Use good OO design patterns. You should have separate classes for your
   models and incorporate instance and class method.

## Getting Started

Clone down this Sinatra repository.

First, `cd` into the the cloned repo and run `bundle install` in your backend
folder to install your gems.

The `app/controllers/application_controller.rb` is going to be the place where 
you write your controller methods to handle any incoming request to your Sinatra API.

**Start your server with:**

```sh
shotgun
```

> **Note:** This will run your server on port
> [http://localhost:9393](http://localhost:9393).
> [shotgun](https://github.com/rtomayko/shotgun) is a ruby gem that will
> automatically reload your Sinatra server. You may still need to refresh your
> browser to see changes.

Your backend and your frontend should be in two different repositories. Create a
new repository in a separate folder with a React app for your frontend using
[create-react-app][].

### Fetch Example

Your React app should make fetch requests to your Sinatra backend! Here's an
example:

```js
fetch("http://localhost:9393/test")
  .then((res) => res.json())
  .then(console.log);
```

[create-react-app]: https://create-react-app.dev/docs/getting-started
