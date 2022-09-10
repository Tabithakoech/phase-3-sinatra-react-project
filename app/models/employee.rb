class Employee < ActiveRecord::Base
    belongs_to :department
    has_many :tasks

    def returnNameAndAge
        "#{self.employee_name}-#{self.age}"
    end


    def print 
        puts "Name: #{self.employee_name}"
        puts "Age: #{self.age}"
        puts "Gender: #{self.gender}"
        puts "Phone number #{self.phone}"
        self.employee_name
    end 

    newValue = print()
end