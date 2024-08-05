# README

This is a Ruby on Rails version 7 repository, procede at your own risks. 

I deployed this to production whith Fly.io, despite using a SQLite database thanks to this tutorial: [SQLite & Rails in Production](https://fly.io/ruby-dispatch/sqlite-and-rails-in-production/). I directly run tasks in production, I'm definitely yoloing, thanks to this tutorial: [Running Tasks & Consoles
](https://fly.io/docs/rails/the-basics/run-tasks-and-consoles/). You can read more on Fly.io, their deployment and SQLite here: [Dockerfiles and fly.toml
](https://fly.io/docs/rails/getting-started/dockerfiles/#shelling-in).

My aim with this repository is to make available places in Paris which are fresh during the hot summer I'm coding this. I use open data from [Paris Data](https://opendata.paris.fr/).

If you'd like to download it, you'd need `ruby 3.2.2` and `rails 7.1.3`.

You know the drill (I guess ?)

`bundle install`

`rails db:create`

`rails db:migrate`

`rails db:seed`

I have different jobs to check and run under `app/jobs`. You need to open the rails console ( `rails c`) and perform the jobs like this: `ImportFreshPlacesJob.perform_async`.
