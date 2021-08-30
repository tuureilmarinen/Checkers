# WeightedPieceCountRatioEvaluator

Provides heuristic function for the CheckersMinMax
by comparing ratios of pieces on the board but weighting the count of kings.

``` swift
public struct WeightedPieceCountRatioEvaluator: MinMaxHeuristicEvaluator 
```

## Inheritance

[`MinMaxHeuristicEvaluator`](/MinMaxHeuristicEvaluator)

## Initializers

### `init(piece:king:turn:remainingMen:remainingKings:)`

``` swift
public init(piece: Double=24, king: Double=2, turn: Double=1, remainingMen: Double = .infinity, remainingKings: Double = .infinity) 
```

## Properties

### `piece`

``` swift
public var piece: Double
```

### `king`

``` swift
public var king: Double
```

### `turn`

``` swift
public var turn: Double
```

### `remainingMen`

``` swift
public var remainingMen: Double
```

### `remainingKings`

``` swift
public var remainingKings: Double
```

## Methods

### `evaluate(_:)`

``` swift
public func evaluate(_ state: GameState) -> Double 
```
