class AddPublishableColumnsTo<%= @target_class.pluralize %> < ActiveRecord::Migration

  def change
    add_column :<%= @table_name %>, :published_as, :string, :limit => 25, :default => 'draft'
  end

end