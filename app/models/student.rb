require_relative 'instructor'
require_relative 'boatingtest'

class Student
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
    end

    def add_boating_test(boatingTest, boatingStatus, instructor)
        BoatingTest.new(self, boatingTest, boatingStatus, instructor)
    end

    def self.find_student(name)
        @@all.find{|students| students.name == name}
    end

    def grade_percentage
        tests = BoatingTest.all.select{|tests| tests.student == self}
        passedTests = tests.select{|tests| tests.boatingStatus == "passed"}
        failedTests = tests.select{|tests| tests.boatingStatus == "failed"}
        percent = ((passedTests.length).to_f/(failedTests.length + passedTests.length).to_f)*100
        percent.round(2)
    end

    def self.all
        @@all
    end
end
