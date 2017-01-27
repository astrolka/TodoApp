# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

config = HashWithIndifferentAccess.new(YAML.load(File.read(File.expand_path('../seeds.yml', __FILE__))))

config[:projects].each do |projectAttributes|
    project = Project.create(title: projectAttributes[:title])
    
    projectAttributes[:todos].each do |todoAttributes|
        todo = Todo.create(text: todoAttributes[:text], isCompleted: todoAttributes[:isCompleted], project: project)
    end
    
end
