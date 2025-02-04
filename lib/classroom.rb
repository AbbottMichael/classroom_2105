class Classroom
  attr_reader :subject, :capacity, :students, :capitalized_names

  def initialize(subject, capacity)
    @subject = subject
    @capacity = capacity
    @students = []
  end

  def add_student(name)
    students << name
  end

  def yell_at_students
    capitalized_names = []
    students.each do |name|
      capitalized_names << name.upcase
    end
    capitalized_names
  end

  def over_capacity?
    if students.length > capacity
      true
    else
      false
    end
  end

  def kick_out
    if over_capacity? == true
      students.shift
    end
  end

end
