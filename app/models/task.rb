class Task < ActiveRecord::Base
    belongs_to :employee
    def self.earliest
        self.all.pluck(:date).min
    end

    def self.latest
        self.all.pluck(:date).max
    end
end