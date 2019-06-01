# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
types = ['Software Development', 'Research Science', 'Data Science', 'Blockchain', 'Product Management', 'Machine Learning', 'Management']
types.each do |t|
    JobType.create(description: t)
end

(1..10).each do |c|
    dsc = %Q("Looking for #{Faker::Job.seniority.downcase} #{Faker::Job.title}.
        Job Type: #{Faker::Job.employment_type.downcase}"
    )
    Job.create(title: Faker::Job.title, description: dsc, 
        company_name: Faker::Company.name, company_url: Faker::Internet.url, 
        posted_on: Faker::Date.backward(90), job_type: JobType.all.sample)
end
