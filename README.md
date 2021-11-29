# Coodesh Code Challenge

This is an open source API developed for a Code Challenge provided by coodesh.com

**STACK**

- Rails 6.1.4.1
- Postgresql
- Jbuilder for rendering

**How to use it?**

The application is consuming an external API (api.spaceflightnewsapi.net) and has currently two endpoints allowing users to make CRUD operations.

**Building Application**

1. Postgres installed.
2. Ruby >= 2.5.0 installed(minimum required Rails version is 6.1.4.1, the version we are working with).
3. Run Bundle install
 ```bundle install```

 **Manually building everything**

```rails db:create```
```rails db:migrate```
```rails db:seed```
```rails s```

If you would like to run tests

```bundle exec rspec```





