class Project

  attr_accessor :title
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all 
    @@all
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    backers = ProjectBacker.all.select {|project| project.project == self}

    backers.collect {|project| project.backer}
  end
end