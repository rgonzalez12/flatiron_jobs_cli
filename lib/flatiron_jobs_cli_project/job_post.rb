class JobPost
  
  attr_accessor :title, :location, :content
  attr_reader :id, :absolute_url
  @@all = []

  def initialize(absolute_url, location, id, title, content)
    @absolute_url = absolute_url
    @location = location
    @id = id
    @title = title
    @content = content
    save
  end
  
  def save
    @@all << self
  end

  def self.all
    @@all
  end
  
end