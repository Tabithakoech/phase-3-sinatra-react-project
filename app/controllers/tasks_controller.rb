class TasksController < ApplicationController
    
    # get '/tasks/earliest' do
    #     Task.earliest.to_json
    # end

    # get '/tasks/latest' do
    #     Task.latest.to_json
    # end

    
    get '/tasks' do
        tasks = Task.all.order(:date).limit(50)
        
        tasks.to_json(
            only: [:date], 
            # include: { teacher: { only: [:teacher_name] }, 
            employee: { only: [:employee_name] } 
        )
    end 

    # /tasks/:id => Retrieve an Individual Task via Params (:id)
    get '/tasks/:id' do
        Task.find(params[:id]).to_json
    end 
end 