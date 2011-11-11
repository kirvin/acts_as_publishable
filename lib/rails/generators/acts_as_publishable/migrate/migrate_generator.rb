module ActsAsPublishable
  module Generators
    class MigrateGenerator < Rails::Generators::Base
      include Rails::Generators::Migration

      desc "Creates a migration file to add acts_as_publishable columns to the specified model"

      argument :model_name, :type => :string, :required => true

      def self.source_root
        @_publishable_source_root ||= File.expand_path("../templates", __FILE__)
      end  

      def self.next_migration_number(dirname)
        Time.now.strftime("%Y%m%d%H%M%S")
      end

      def create_migration
        #puts "Generating ActsAsPublishable migration for model #{model_name}"
        begin
          #puts model_name.camelcase
          model_name.camelcase.constantize
        rescue Exception => ex
          raise "#{model_name} is not a valid class in this application."
        end

        begin
          @table_name = model_name.to_s.downcase.pluralize
          @target_class = model_name.to_s.capitalize
          dest = "db/migrate/add_publishable_columns_to_#{model_name.downcase.pluralize}.rb"
          #puts " - write migration file to #{dest}"
          migration_template("publishable_columns.rb", dest)
        rescue Exception => ex
          #puts "EX: #{ex}"
          #puts ex.backtrace
          raise "Error while writing migration file: #{ex}"
        end

      end
      
    end
  end
end