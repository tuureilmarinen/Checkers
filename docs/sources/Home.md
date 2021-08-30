# Types

  - [CheckersMinMax](/CheckersMinMax)
  - [CheckersUtils](/CheckersUtils)
  - [CheckersColor](/CheckersColor)
  - [CheckersPiece](/CheckersPiece)
  - [CheckersPieceSelector](/CheckersPieceSelector)
  - [UpDown](/UpDown)
  - [LeftRight](/LeftRight)
  - [PortableDraughtsNotation](/PortableDraughtsNotation)
  - [CheckersDeterministicRandomPlayer](/CheckersDeterministicRandomPlayer):
    CheckersDeterministicRandomPlayer makes always a same move from same state of the game if the seed is same.
  - [CheckersRandomPlayer](/CheckersRandomPlayer)
  - [PieceCountRatioEvaluator](/PieceCountRatioEvaluator):
    Provides heuristic function for the CheckersMinMax by comparing ratios of pieces on the board.
  - [WeightedPieceCountRatioEvaluator](/WeightedPieceCountRatioEvaluator):
    Provides heuristic function for the CheckersMinMax
    by comparing ratios of pieces on the board but weighting the count of kings.
  - [CheckersMove](/CheckersMove)
  - [CaptureDirection](/CaptureDirection)
  - [Direction](/Direction)
  - [EightByEightBoard](/EightByEightBoard)
  - [GameState](/GameState):
    GameState contains state of the board.
    It provides a way to get all legal moves from certain state.
  - [PieceSet](/PieceSet)
  - [PseudoRandomNumberGenerator](/PseudoRandomNumberGenerator)
  - [RandomUtils](/RandomUtils)

# Protocols

  - [CheckersPlayer](/CheckersPlayer)
  - [MinMaxHeuristicEvaluator](/MinMaxHeuristicEvaluator)

# Extensions

  - [UInt64](/UInt64)
