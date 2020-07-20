class Pokemon
  
  attr_accessor :id, :name, :type, :db
  
  def initialize(id:, name:, type:, db:) 
    @id = id
    @name = name
    @type = type 
    @db = db 
  end 
  
  def self.save(name, type, database_connection) 
    sql = <<-SQL 
    INSERT INTO pokemon (name, type)
    VALUES (?,?)
    SQL
    database_connection.execute(sql)
    
    #@id = DB[:conn].execute("MAX(ID) AS LastId FROM pokemons")[0][0]
  end 
  
  
  
  
end
