class Map
    def initialize
        @map = []
    end

    def set(key, value)
        @map << [key, value]
    end

    def get(key)
        @map.select { |set| set.first === key }
    end

    def delete(key)
        @map = @map.select { |set| set.first != key }
    end

    def show
        @map
    end
end