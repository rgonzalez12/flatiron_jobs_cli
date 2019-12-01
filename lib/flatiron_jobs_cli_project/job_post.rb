class JobPost
  attr_accessor :title, :location, :content
  attr_reader :id, :absolute_url
  @@all = []

  def initialize(id:, title:, location:, content:, absolute_url:)
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