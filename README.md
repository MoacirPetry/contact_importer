<a href="https://www.ruby-lang.org/">
  <img alt="Ruby" src="https://img.shields.io/badge/Ruby-2.5.8-brightgreen" target="_blank">
</a>
<a href="https://rubyonrails.org/">
  <img alt="Ruby on Rails" src="https://img.shields.io/badge/Rails-5.2.6-brightgreen" target="_blank">
</a>

### Contact Importer

This is an application that allow users to upload contact files in CSV format.

### Heroku Demo

https://contactimporter.herokuapp.com/

> **Note**: You can access with the user **john@john.com** and password **123456**, or you can create an account on the link **Sign up**.

### How to use in local environment

1 - Git Clone

`git clone git@github.com:MoacirPetry/contact_importer.git`

2 - Bundle Install

`bundle install`

3 - Setup the Database

**Please set up your DB environment with the access in your machine, especially with the user and password**:

```ruby
username: postgres
password: <%= ENV['CONTACT_IMPORTER_DATABASE_PASSWORD'] %>
```

4 - Run the Testings

`rspec spec`

5 - Run the Application

`rails s`

Check it out on http://0.0.0.0:3000

6 - Use and test regarding the information in **Contact_Importer_Assignment.pdf** file.

7 - The file **contacts001.csv** here in the root directory, has some data to test.
