# Types

  - [CheckersMinMax](/CheckersMinMax)
  - [CheckersUtils](/CheckersUtils)
  - [CheckersPiece](/CheckersPiece)
  - [CheckersColor](/CheckersColor)
  - [PortableDraughtsNotation](/PortableDraughtsNotation)
  - [CheckersDeterministicRandomPlayer](/CheckersDeterministicRandomPlayer):
    CheckersDeterministicRandomPlayer makes always a same move from same state of the game if the seed is same.
  - [CheckersRandomPlayer](/CheckersRandomPlayer)
  - [PieceCountRatioEvaluator](/PieceCountRatioEvaluator):
    Provides heuristic function for the CheckersMinMax by comparing ratios of pieces on the board.
  - [CheckersMove](/CheckersMove)
  - [GameState](/GameState):
    GameState contains state of the board.
    It provides a way to get all legal moves from certain state.

# Protocols

  - [CheckersPlayer](/CheckersPlayer)
  - [MinMaxHeuristicEvaluator](/MinMaxHeuristicEvaluator)
