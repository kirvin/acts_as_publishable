module ActsAsPublishable
  module Generators
    class MigrateGenerator < Rails::Generators::Base
      include Rails::Generators::Migration

      desc "Creates a migration file to add acts_as_publishable columns to the specified model"

      argument :model_name, :type => :string, :required => true
      
      def create_migration
        puts "Generate ActsAsPublishable migration for model #{model_name}"
      end
      
    end
  end
end