  class Stack
    attr_reader = :array

    def initialize
      # create ivar to store stack here!
      @array = []
    end

    def push(el)
      # adds an element to the stack
      @array << el
    end

    def pop
      # removes one element from the stack
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
    end
  end