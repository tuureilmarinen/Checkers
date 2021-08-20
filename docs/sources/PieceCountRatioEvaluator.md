# PieceCountRatioEvaluator

Provides heuristic function for the CheckersMinMax by comparing ratios of pieces on the board.

``` swift
public struct PieceCountRatioEvaluator: MinMaxHeuristicEvaluator 
```

## Inheritance

[`MinMaxHeuristicEvaluator`](/MinMaxHeuristicEvaluator)

## Methods

### `evaluate(_:)`

It compares ratio of pieces on the board.
Number of white pieces is divided by number of black pieces, or number of black pieces divided by white pieces multiplied by -1 if number of black pieces on the board is greater.
Complexity is O(1).

``` swift
public static func evaluate(_ state: GameState) -> Double 
```

#### Parameters

  - state: GameState to be evaluated.

#### Returns

Positive value if situation if favorable for the white player, negative if it is not.
