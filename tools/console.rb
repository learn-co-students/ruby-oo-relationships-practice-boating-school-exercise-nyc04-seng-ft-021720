require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# STUDENTS
spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
 
# INSTRUCTORS
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
 
# BOATING TESTS
no_crashing = spongebob.add_boating_test("Don't Crash 101", "passed", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "passed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)
no_crashing = patrick.add_boating_test("Don't Crash 101", "failed", puff)
parking = spongebob.add_boating_test("Parallel Parking", "passed", puff)


binding.pry
#leave this here to ensure binding.pry isn't the last line\