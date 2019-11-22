class Jobs
  attr_accessor :title, :location, :content, :departments, :offices
  attr_reader :id, :absolute_url
  @@all = []

  def initialize(id, title, location, content, absolute_url, departments, offices)
    @id = id
    @title = title
    @location = location
    @content = content
    @absolute_url = absolute_url
    @departments = departments
    @offices = offices
    @@all << self
  end

  def self.all
    @@all
  end


end