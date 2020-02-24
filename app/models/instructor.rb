class Instructor

    attr_reader :name
    @@all = [] 

    def initialize(name)
        @name = name 
        @@all.push(self)
    end 


    def find_student_tests(student)
       Boating_Test.all.select do |tests|
            tests.student == student
          end 
        
    end 


    def pass_student(student, test_name) #Updates the current test if it exists, if it does not creates one 
        y = false
        find_student_tests(student).each do |x|
             if x.boating_test == test_name 
                x.status = 'passed'
                y = true
             end 
        end 
        if y == false 
            Boating_Test.new(test_name, 'passed', student, self)
        end 
        find_student_tests(student).select do |tests|
            tests.boating_test == test_name 
        end 

    end 


    def fail_student(student, test_name) #Updates the test to fail if it exists, if it does not creates one
        y = false
        find_student_tests(student).each do |x|
             if x.boating_test == test_name 
                x.status = 'failed'
                y = true
             end 
        end 
        if y == false 
            Boating_Test.new(test_name, 'failed', student, self)
        end 
        find_student_tests(student).select do |tests|
            tests.boating_test == test_name 
        end 
    end 

    def self.all 
        @@all 
    end 





end 