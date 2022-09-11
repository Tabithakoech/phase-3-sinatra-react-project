puts "🌱 Seeding spices..."

#Create Departments

s1 = Department.create({department_name:'Robotics Department', address:'4444 7th Manhattan NY 12345', phone: '123-456-7890'})
s2 = Department.create({department_name:'Digital factory Department', address:'3526 2th Seattle WA 35355', phone: '111-444-6666'})
s3 = Department.create({department_name:'Enterprise Architechture Department', address:'3224 123w Los Angeles CA 25233', phone: '435-134-6426'})

gender = ['male', 'female']

# Create Employees
30.times {
    Employee.create(
        gender:gender.sample, 
        employee_name:Faker::Name.first_name , 
        age:rand(1..18), 
        phone:Faker::PhoneNumber.cell_phone , 
        active:true, 
        department_id:Department.all.sample.id
)}

# Create Tasks
150.times {
    Task.create(
        employee_id:Employee.all.sample.id, 
        date:Faker::Date.between(from: 2.days.ago, to: Date.today)
)}
puts "✅ Done seeding!"
