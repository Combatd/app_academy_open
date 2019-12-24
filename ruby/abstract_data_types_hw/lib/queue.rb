class Queue
    def initialize
        @queue = []
    end
    
    def enqueue(el)
        @queue.unshift(el)
    end

    def dequeue(el)
        @queue.shift
    end

    def peek

    end

end