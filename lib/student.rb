class Student
    @@all = []
  
    def self.all
    @@all
    end
    
    def self.create_from_collection(students_array)
    students_array.each do |s|
      Student.new(s)
    end
  end
  
  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url, :facebook

  def initialize(student_hash)
    student_hash.each do |k,v|
      self.send("#{k}=",v)
    end
    @@all << self
  end

  def add_student_attributes(attributes_hash)
    attributes_hash.each do |k,v|
      self.send("#{k}=",v)
    end
  end
end