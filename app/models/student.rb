

class Student < ActiveRecord::Base
after_initialize :student_active


  def to_s
    self.first_name + " " + self.last_name
  end

  def student_active
    self.active = false if self.active == nil
  end

  
end