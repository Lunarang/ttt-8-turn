#display_board
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#position_taken?
def position_taken?(board, index)
    
    if board[index] == " " || board[index] == "" || board[index] == nil
        false
    else
        true
    end

end

#valid_move?
def valid_move?(board, index)

    if index.between?(0,8) == true && position_taken?(board, index) == false
        true
    else
        false
    end
end

#input_to_index
def input_to_index(input)
    index = input.to_i - 1
    index
end

#move
def move(board, index, playercharacter = "X")
    #replace board index with player character and return modified array
    board[index] = playercharacter
end

#turn method should:
# get input
# convert input to index
# if index is valid
#   make the move for input
# else
#   ask for input again until you get a valid input
# end 
def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)

    if valid_move?(board, index) == true
        puts "Nice move!"
        move(board, index, playercharacter = "X")
        display_board(board)
    else
        puts "Invalid move..."
        turn(board)
    end
end 
