# frozen_string_literal: true

source "https://rubygems.org"

# git_source :github { "https://github.com/#{_1}.git" }

ruby "3.1.2"

gem "rails",                                    "~> 7.0.3"

gem "amazing_print",                            "~> 1.4",  require: false
gem "bootsnap",                                 "~> 1.13", require: false
gem "bootstrap",                                "~> 5.2"
gem "haml",                                     "~> 6.0"
gem "importmap-rails",                          "~> 1.1"
gem "kredis",                                   "~> 1.2"
gem "mini_racer",                               "~> 0.6" # Necessary for autoprefixer-rails, which is required by bootstrap.
gem "pg",                                       "~> 1.4"
gem "pry",                                      "~> 0.14", require: false
gem "puma",                                     "~> 5.6"
gem "rails_bootstrap_navbar",                   "~> 3.0"
gem "redis",                                    "~> 4.0"
gem "sassc-rails",                              "~> 2.1"
gem "sidekiq",                                  "~> 6.5"
gem "sprockets-rails",                          "~> 3.4"
gem "stimulus-rails",                           "~> 1.1"
gem "turbo-rails",                              "~> 1.1"
gem "services",                                 "~> 9.0"

group :development do
  gem "annotate",                               "~> 3.0", require: false
  gem "better_errors",                          "~> 2.8"
  gem "binding_of_caller",                      "~> 1.0"
  gem "database_consistency",                   "~> 1.0", require: false
  gem "letter_opener",                          "~> 1.2"
  gem "marginalia",                             "~> 1.4"
  gem "spring-watcher-listen",                  github: "fcheung/spring-watcher-listen", branch: "support-spring-4" # TODO: Use released gem once Spring 4 is supported: https://github.com/rails/spring-watcher-listen/pull/32
  gem "spring",                                 "~> 4.0"
end
