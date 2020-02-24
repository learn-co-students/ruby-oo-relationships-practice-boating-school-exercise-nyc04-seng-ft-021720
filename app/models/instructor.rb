class Instructor
    attr_accessor :name

    @@all = []

    # initialize with a name
    def initialize(name)
        @name = name
        @@all << self
    end

    # Instructor.all should return all instructors
    def self.all
        @@all
    end

    # Instructor#pass_student should take in a student instance and test name. If there is a BoatingTest whose 
    # name and student match the values passed in, this method should update the status of that BoatingTest 
    # to 'passed'. If there is no matching test, this method should create a test with the student, that boat 
    # test name, and the status 'passed'. Either way, it should return the BoatingTest instance.
    def pass_student(student, test_name)
        test = BoatingTest.all.find {|btest| btest.student == student && btest.test_name == test_name}
        if !test
            student.add_boating_test(test_name, "passed", self)
        else
            test.test_status = "passed"
        end
        BoatingTest.all.find {|btest| btest.student == student && btest.test_name == test_name}
    end

    # Instructor#fail_student should take in a student instance and test name. Like #pass_student, it should try to 
    # find a matching BoatingTest and update its status to 'failed'. If it cannot find an existing BoatingTest, 
    # it should create one with the name, the matching student, and the status 'failed'.
    def fail_student(student, test_name)
        test = BoatingTest.all.find {|btest| btest.student == student && btest.test_name == test_name}
        if !test
            student.add_boating_test(test_name, "failed", self)
        else
            test.test_status = "failed"
        end
        BoatingTest.all.find {|btest| btest.student == student && btest.test_name == test_name}
    end

end
