class RockPaperScissors

  def RockPaperScissors.game(player1, player2)
    case player1
    when "scissors"
      case player2
      when "paper"
        return "Player 1 (Scissors) wins!"
      when "rock"
        return "Player 2 (Rock) wins!"
      when "scissors2"
        return "It's a tie!"
      end
    when "rock"
      case player2
      when "paper"
        return "Player 2 (Paper) wins!"
      when "scissors"
        return "Player 1 (Rock) wins!"
      when "rock2"
        return "It's a tie!"
      end
    when "paper"
      case player2
      when "rock"
        return "Player 1 (Paper) wins!"
      when "scissors"
        return "Player 2 (Scissors) wins!"
      when "paper2"
        return "It's a tie!"
      end
    end
  end

end
