require 'todo'


RSpec.describe Todo do
    it "return the task" do
        create_task = Todo.new("watch tv")
        expect(create_task.task).to eq "watch tv"
    end

    it " marks done the task" do 
        create_task = Todo.new("watch tv")
        expect(create_task.mark_done!).to eq true
    end

    it "check if task is done" do 
        create_task = Todo.new("watch tv")
        create_task.mark_done!
        expect(create_task.done?).to eq true
    end
end