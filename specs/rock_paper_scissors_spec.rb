require ('minitest/autorun')
require ('minitest/reporters')

require_relative '../models/rock_paper_scissors'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestRockPaperScissors < Minitest::Test

  def test_scissors_paper
    assert_equal("Player 1 (Scissors) wins!", RockPaperScissors.game("scissors", "paper"))
  end

  def test_scissors_rock
    assert_equal("Player 2 (Rock) wins!", RockPaperScissors.game("scissors", "rock"))
  end

  def test_scissors_scissors
    assert_equal("It's a tie!", RockPaperScissors.game("scissors", "scissors2"))
  end

  def test_rock_paper
    assert_equal("Player 2 (Paper) wins!", RockPaperScissors.game("rock", "paper"))
  end

  def test_rock_scissors
    assert_equal("Player 1 (Rock) wins!", RockPaperScissors.game("rock", "scissors"))
  end

  def test_rock_rock
    assert_equal("It's a tie!", RockPaperScissors.game("rock", "rock2"))
  end

  def test_paper_scissors
    assert_equal("Player 2 (Scissors) wins!", RockPaperScissors.game("paper", "scissors"))
  end

  def test_paper_rock
    assert_equal("Player 1 (Paper) wins!", RockPaperScissors.game("paper", "rock"))
  end

  def test_paper_paper
    assert_equal("It's a tie!", RockPaperScissors.game("paper", "paper2"))
  end
end
