login: &login
  adapter: mysql
  host: localhost
  username: deploy
  password: melorbode

development:
  database: mephisto_development
  <<: *login

test:
  database: mephisto_test
  <<: *login

production:
  database: mephisto_production
  <<: *login

