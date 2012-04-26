#RMS-Solutions

###Web page corporativa

    `bundle install`
    `rake db:migrate`

    `config.assets.compile = true` en production.rb
    `bundle exec rake assets:precompile`

    `git push heroku master`
    `heroku run rake db:migrate`