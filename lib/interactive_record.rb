require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord

  def self.table_name
    self.to_s.downcase.pluralize
  end

  def self.drop_table
    sql = "DROP TABLE IF EXISTS #{self.table_name}"
    DB:[:conn}.execute](sql)
  end

end
