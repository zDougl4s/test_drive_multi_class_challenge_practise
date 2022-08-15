require 'todo'
require 'todo_list'



RSpec.describe "testing both clases" do
    it "return list with task no completed"  do
        create_task = Todo.new("wash clothes")
        new_list = TodoList.new
        new_list.add(create_task)
        expect(new_list.incomplete).to eq "wash clothes"
    end

    it "returns list with task completed" do
        create_task = Todo.new("study ruby")
        create_task.mark_done! # call method to make it true
        new_list = TodoList.new
        new_list.add(create_task)
        expect(new_list.complete).to eq "study ruby"
    end
end