# Skeleton Rails 5

It's based on Rails 5.0.0 and Ruby 2.3.1.

## How to use

```
cp config/database.example.yml config/database.yml &&
cp config/application.example.yml config/application.yml &&
cp config/secrets.example.yml config/secrets.yml &&
value=`cat .ruby-gemset` &&
sed -i "s/db/$value/g" config/database.yml &&
gem install bundle &&
bundle install &&
rake db:create &&
rake db:migrate &&
rake db:seed
```