class JobPost
  
  attr_accessor :title, :location, :content
  attr_reader :id, :absolute_url
  @@all = []

  def initialize(absolute_url, location, id, title, content)
    @id = id
    @title = title
    @location = location
    @content = content
    @absolute_url = absolute_url
    @@all << self
  end

  def self.all
    @@all
  end
  
end