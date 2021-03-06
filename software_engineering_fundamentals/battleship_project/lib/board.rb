class Board
  attr_reader :size # getter methods  

  def initialize (n)
    board = Array.new(n) # take in the number
    n.times do |row_idx|
        board[row_idx] = Array.new(n) # 2D array
        n.times do |col_idx|
            board[row_idx][col_idx] = :N # each element will be N
        end
    end
    @grid = board
    @size = @grid.length * @grid.length # length times width
  end

  def [](pos) # syntactic sugar
    row = pos[0]
    col = pos[1]
    @grid[row][col] # returns the element at this position
  end

  def []= (pos, val) # syntactic sugar
    row = pos[0]
    col = pos[1]
    @grid[row][col] = val # set element at position to new value
  end

  def num_ships
    @grid.count { |ele| ele.include?(:S)}  
  end

  def attack (pos)
    row = pos[0]
    col = pos[1]
    position = pos.flatten
    if self[position] == :S
        puts 'you sunk my battleship!'
        # @grid[row][col]
        self[position]= :H 
        return true # indicate attack hit a ship
    else
        # @grid[row][col] 
        self[position]= :X # missed hit marked by X
        return false # indicate attack missed
    end
  end

  def place_random_ships
    totalShips = @size * 0.25 # 25% of the ships
    
    while self.num_ships < totalShips
      randomRow = rand(0...@grid.length)
      randomCol = rand(0...@grid.length)
      pos = [ randomRow, randomCol ] # we can pass this pos into #[]
      self[pos] = :S
    end

  end

  def hidden_ships_grid
    (0..size).each do |row|
        (0..size).each do |col|
            self[row, col]= :N
        end
    end

  end

  def self.print_grid(grid)
     (0..grid.length).each do |row_idx|
        rowEle = grid[row_idx] 
        puts "#{rowEle} "
        (0..grid[row_idx].length).each do |col_idx|
            
        end
    end
  end

  def cheat
    self.print_grid(@grid)
  end

  def print
    self.print_grid(self.hidden_ships_grid)
  end

end
