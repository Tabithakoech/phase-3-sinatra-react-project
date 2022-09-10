class EmployeesController < ApplicationController

    #initiate fetch request targeting an API endpoint

    # Our API endpoint
    get '/employees' do
        # Employee.all.to_json
        employees = Employee.all.order(:employee_name)
        # #demand is sent to employee model
        # employees.to_json(only: [:employee_name, :age], include: :department)
        employees.to_json(include: :department)
    end

    #Retrieve individual employee via param (:id)
    get '/employees/:id' do
        Employee.find(params[:id]).to_json(include: :tasks)
    end

    post "/employees" do
        employee = Employee.create({employee_name:params[:name],
            age:params[:age], gender:params[:gender],
            phone:params[:phone], active:params[:active], 
            department_id:params[:department_id]})
            employee.to_json(include: :department)
    end

    patch "/employees/:id" do
        employee = Employee.find(params[:id])
        employee.update({employee_name:params[:name],
            age:params[:age], gender:params[:gender],
            phone:params[:phone], active:params[:active], 
            department_id:params[:department_id]})
            employee.to_json(include: :department)
    end

    delete "/employees/:id" do
        employee = Employee.find(params[:id])
        employee.destroy
        {message: 'employee deleted from our database'}.to_json
    end

end