class Student
    attr_reader :first_name, :status, :instructor
  
    @@all = []
  
    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end
  
    def Student.all
      @@all
    end
  
    def add_boating_test(test_name, status, instructor)
      BoatingTest.new(self, test_name, status, instructor)
    end
  
    def Student.find_student(first_name)
      self.all.select { |student|  student.first_name == first_name}
    end
  
    def find_test
      BoatingTest.all.select { |test| test.student == self}
    end

    def passing_test
      find_test.select { |test| test.status == "passed"}
    end

    def grade_percentage
      passing_test.length.to_f/find_test.length.to_f
    end
    


end
