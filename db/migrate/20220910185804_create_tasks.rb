class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.references :teacher
      t.references :employee
      t.date :date
    end
  end
end