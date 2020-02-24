class Instructor
    attr_accessor :status, :name, :student, :test_name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def Instructor.all
        @@all
    end

    def pass_student(student, test_name)
        passing = BoatingTest.all.select do |test|
            test.student == student && test.test_name == test_name
        end
        passing.map { |test| test.status = "passed"}
         BoatingTest.new(student, test_name, "passed", self) if passing.length == 0
    end


    def fail_student(student, test_name)
        failing = BoatingTest.all.select do |test|
            test.student == student && test.test_name == test_name
        end
        failing.map { |test| test.status = "failed"}
         BoatingTest.new(student, test_name, "failed", self) if failing.length == 0
    end

end