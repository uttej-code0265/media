* It is a media application which includes users,posts,comments
* ruby version - ruby '2.6.6'
* rails version - gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
* sqlite version - 'sqlite3', '~> 1.4'
* other gems used
    gem 'devise' (for user authentication)
    gem 'devise-bootstrap-views', '~> 1.0' (for bootstrap user views)
     gem 'rspec-rails', ">= 3.9.0"  (for testing)

* There is a user authentication system and users can create many posts and posts can have many comments

* Associations
    user -> has many comments,has many posts
    post -> has many comments,belongs to user
    comments -> belongs to user,belongs to post

* validation tests are also performed using rspec-rails