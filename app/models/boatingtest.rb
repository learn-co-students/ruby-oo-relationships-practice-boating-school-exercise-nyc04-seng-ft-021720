class Boating_Test

    attr_accessor :student, :boating_test, :instructor, :status
    
    @@all = [] 
    
    def initialize(boating_test, status, student, instructor)
        @boating_test = boating_test 
        @status = status 
        @student = student 
        @instructor = instructor 
        @@all.push(self) 
    end 
    
    def self.all 
        @@all 
    end 
    
    
    
    
    end 