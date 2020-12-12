require_relative "../config/environment.rb"

class Student

  attr_accessor :name, :grade, :id
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

  def initialize(name, grade, id=nil)
    @name = name
    @grade = grade 
    @id = id 
  end
  
  def self.create_table
    sql = <<-SQL
      CREATE TABLE students (
        name TEXT, 
        grade TEXT,
        id INTEGER PRIMARY KEY
      )
    SQL
    DB[:conn].execute(sql)
  end 
end
