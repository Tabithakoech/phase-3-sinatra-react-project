class DepartmentsController < ApplicationController
    get '/departments' do

        Department.all.to_json

        # departments = Department.all
        # departments.to_json(include: :employees)
        # departments.to_json(
        #     only: [:department_name], 
        #     include: { employees: 
        #         { only: [:employee_name, :gender] }
        # }) 
    end

    get '/departments/:id' do
        department = Department.find(params[:id])
        department.to_json(include: :employees)
    end
end