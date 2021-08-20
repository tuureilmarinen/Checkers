# CheckersMinMax

``` swift
public class CheckersMinMax: CheckersPlayer 
```

## Inheritance

[`CheckersPlayer`](/CheckersPlayer)

## Initializers

### `init()`

``` swift
required public init() 
```

## Properties

### `knownStateValues`

``` swift
public var knownStateValues: [GameState: (Double, GameState?)] 
```

### `searchDepth`

initial search depth

``` swift
public var searchDepth = 8
```

### `cacheDepth`

how many moves deep must evaluation have taken place, in order to accept result from cache, Int.max disables.

``` swift
public var cacheDepth = 5
```

### `evaluator`

``` swift
public var evaluator: MinMaxHeuristicEvaluator.Type = PieceCountRatioEvaluator.self
```

### `name`

``` swift
public var name: String 
```

## Methods

### `provideMove(_:)`

Provides method to provide move from certain state.
Implements CheckersPlayer protocol

``` swift
public func provideMove(_ state: GameState) -> GameState? 
```

#### Parameters

  - state: The current state of the game.

#### Returns

The best found move found by the algorithm.
