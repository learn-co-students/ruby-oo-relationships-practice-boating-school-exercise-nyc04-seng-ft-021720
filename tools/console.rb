require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

spongebob = Student.new('spongebob')
patrick = Student.new('patrick')
puff = Instructor.new('mrs. puff')
krabs = Instructor.new('mr. krabs')

final_exam = BoatingTest.new(spongebob, 'final exam', 'failed', puff)
pop_quiz = BoatingTest.new(patrick, 'pop quiz', 'failed', krabs)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

