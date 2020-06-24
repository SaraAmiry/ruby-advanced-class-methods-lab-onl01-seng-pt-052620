class Song
  attr_accessor :name, :artist_name
  @@all = []

  #def initialize
    
  #end 
  def self.all
    @@all
  end

  def save
    self.class.all << self
    self 
  end
  
  def self.create
    song = self.new.save
  end
  def self.new_by_name(name)
    song = Song.new 
    song.name = name 
    song 
  end
  def self.create_by_name(name)
    song = Song.new_by_name(name).save
  end 
  def self.destroy_all
    @@all.clear 
  end
end
