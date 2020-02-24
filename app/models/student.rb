class Student

    @@all = [] 

    attr_reader :first_name

    def initialize(first_name)
        @first_name = first_name
        @@all.push(self)
    end 


    def self.all 
        @@all
    end 

    def add_boating_test(test_name, test_status, instructor)
        Boating_Test.new(test_name, test_status, self, instructor)
    end 

    def self.find_student(name) #This will output the object of the name, not the name 
        self.all.select do |students|
            students.first_name == name 
        end 
    end 


    
    def student_tests
        Boating_Test.all.select do |tests|
            tests.student == self 
        end 
    end 

    def grade_percentage #Returns the percentage that a student has passed tests.
        #This has to count the total amount of tests the student has taken and divide passed/total
       x = student_tests.select do |tests|
             tests.status == 'failed'
        end 
        y = student_tests.select do |tests|
                tests.status == 'passed'
        end 

        average = y.count.to_f/(x.count.to_f + y.count.to_f)
        p average * 100
        

    end 






end 