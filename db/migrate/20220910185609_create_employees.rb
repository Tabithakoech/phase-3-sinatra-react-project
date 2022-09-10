class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :employee_name
      t.integer :age
      t.string :gender
      t.string :phone
      t.boolean :active
      t.integer :department_id
      t.timestamps
    end
  end
end