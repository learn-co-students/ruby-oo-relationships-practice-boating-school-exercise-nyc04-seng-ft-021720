require_relative 'instructor'
require_relative 'student'

class BoatingTest
    attr_accessor :student, :boatingTest, :boatingStatus, :instructor
    @@all = []

    def initialize(student, boatingTest, boatingStatus, instructor)
        @student = student
        @boatingTest = boatingTest
        @boatingStatus = boatingStatus
        @instructor = instructor
        @@all << self
    end

    def self.all
        @@all
    end

end
