<<<<<<< HEAD
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
=======
# Sistema Lupa    

Projeto para tcc IFMS.

O sistema Lupa tem como objetivo avaliar os dispositivos móveis (Smartphones, Tablets) através de um questionário para saber se os aparelhos permitem que usuários com necessidades especiais visuais usem a tecnologia móvel.
>>>>>>> 06bd80de00265842297bfebf74763c7eea639716
