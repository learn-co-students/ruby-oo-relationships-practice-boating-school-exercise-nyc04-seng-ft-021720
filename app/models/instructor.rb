require_relative 'student'
require_relative 'boatingtest'

class Instructor
    attr_accessor :name
    @@all

    def initialize(name)
        @name = name
    end

    def pass_student(student, boatingTest)
        test = BoatiingTest.all.find{|student| student.name == student && student.boatingTest == boatingTest}
        if test != nil
            test.boatingStatus = "passed"
        else
            test = BoatingTest.new(student, boatingTest, "passed", self)
        end
        test
    end

    def fail_student(student, boatingTest)
        test = BoatiingTest.all.find{|student| student.name == student && student.boatingTest == boatingTest}
        if test != nil
            test.boatingStatus = "failed"
        else
            test = BoatingTest.new(student, boatingTest, "failed", self)
        end
        test
    end

    def self.all
        @@all
    end
end
