class Queue
    def initialize
        @queue = []
    end
    
    def enqueue(el)
        @queue.unshift(el)
    end

    def dequeue
        @queue.pop
    end

    def peek
        @queue.first
    end

end