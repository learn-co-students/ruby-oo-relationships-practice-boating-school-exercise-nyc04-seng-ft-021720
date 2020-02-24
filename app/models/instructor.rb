class Instructor
  attr_reader :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student, boating_test_name)
    test = BoatingTest.all.find{ |test| test.student == student && test.boating_test_name == boating_test_name}
      if !test
        puts "false"
        BoatingTest.new(student, boating_test_name, 'passed', self)
      else
        puts 'true'
        test.boating_test_status = 'passed'
        test
      end
  end

  def fail_student(student, boating_test_name)
    test = BoatingTest.all.find{ |test| test.student == student && test.boating_test_name == boating_test_name}
    if !test
      BoatingTest.new(student, boating_test_name, 'failed', self)
    else
      test.boating_test_status = 'failed'
    end
  end

end
