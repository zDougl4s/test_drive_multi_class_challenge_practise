class TodoList
    def initialize
        @tasks = []
    end
  
    def add(todo) # todo is an instance of Todo
      # Returns nothing
       @tasks << todo
    end
  
    def incomplete
      # Returns all non-done todos
      return  @tasks.select {|task| task.done? == false}.map{|task| task.task}.join
    end
  
    def complete
      # Returns all complete todos
      return  @tasks.select {|task| task.done? == true}.map{|task| task.task}.join
    end
  
    def give_up!
      # Marks all todos as complete
        return @tasks.map {|task| task.mark_done!}
    end
  end