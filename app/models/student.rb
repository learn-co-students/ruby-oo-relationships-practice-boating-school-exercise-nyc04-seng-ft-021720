class Student
  attr_reader :first_name, :instructor

  @@all = []
  
  def initialize(first_name)
    @first_name = first_name
    
    @@all <<self
  end

  def self.all
    @@all
  end

  def add_boating_test
    BoatingTest.new(self, boating_test_name, boating_test_status, instructor)
  end

  def self.find_student(first_name)
    @@all.find{|student| 
      student.first_name = first_name
    }
  end

  def grade_percentage

  end


end
