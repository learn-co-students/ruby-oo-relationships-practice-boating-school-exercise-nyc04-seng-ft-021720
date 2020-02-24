class Student
    attr_accessor :first_name

    @@all = []
    
    # should initialize with first_name
    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    # Student.all should return all of the student instances
    def self.all
        @@all
    end

    # initialize a new boating test with a Student (Object), a boating 
    # test name (String), a boating test status (String), and an Instructor (Object)
    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    # take in a first name and output the student (Object) with that name
    def self.find_student(first_name)
        self.all.find {|student| student.first_name}
    end

    # return the percentage of tests that the student has passed, a Float (so if a 
    # student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33
    def grade_percentage
        total_tests = BoatingTest.all.select{|test| test.student == self}.count
        passed_tests = BoatingTest.all.select{|test| test.test_status == "passed"}.count
        percentage = (total_tests * 100) / passed_tests
        percentage.to_f
    end

end