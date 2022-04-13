# Recipe_app

> recipe_APP is a web application that allows you to create, edit delete and show recipes with their foods built with ruby on rails

# ERD (Entity Relationship Diagram)
- recipe_APP follows this diagram for creating migration files and database
![screenshot](./public/recipe_app_erd.png)

Additional description about the project and its features.

## Built With

- RUBY
- RUBY ON RAILS
- Devise
- Cancancan

## Gems Used

- Rubocop
- RAILS (v7)

## How to Setup

> You can simply clone or download [this repository](https://github.com/youmari/recipe.git), and use your favorite browser or code editor to run this program.

- To open this project using vs code ( for this example) or your favorite code editor, you can follow the guide below:
  > in your cmd or command line navigate to where this project is located, then:

```bash
cd recipe_app
```

> thereafter run

```bash
code .
```

## How to Run the App through terminal

- To run the application through trminal, make sure ruby and rails is installed in your computer then follow the guide below:
  > in your cmd or command line navigate to where this project is located, then;

```cmd
cd recipe_app
```

## Install Gems


```bash
bundle install
```

> thereafter run the below command to start the server on localhost

```bash
rails s 
```
## Set up database
> to create databases on your local machine follow the steps below :
1. First make sure that postgresql installed on your machine
2. make sure that postgresql server is runninng 
3. run the following command to create database on your machine
  ```bash
  rake db:create
  ```
  ### Update schema file and database
  - To run the migration files to update schema and databse simply run the following command :
  ```bash
  rails db:migrate
  ```

## Author

👤 **Youmari**

- GitHub: [@youmari](https://github.com/youmari)
- Twitter: [@yf_omari](https://twitter.com/yf_omari)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/yassine-omari-945114190/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!
