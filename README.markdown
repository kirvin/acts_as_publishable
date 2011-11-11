# ACTS_AS_PUBLISHABLE Gem

This gem is derived from the acts_as_publishable plugin in [bborn's communityengine](https://github.com/bborn/communityengine)

It allows an ActiveRecord model to move through publishing stages (draft, live, deleted, etc.).

## Installation

1.  Add the gem to your Gemfile:

    gem 'acts_as_publishable'

2.  Add the acts_as_publishable macro to your model, e.g.

    class BlogPost < ActiveRecord::Base
      # requires _at least_ :draft and :live as arguments
      acts_as_publishable(:draft, :live, :deleted)
    end

3.  Generate a migration for the additional columns

    rails g acts_as_publishable:migrate [model]

4.  Migrate your database schema

    rake db:migrate
