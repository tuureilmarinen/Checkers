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

### `optimalKnownMove`

When key state has black turn, value state has smallest possible value
if key state has white turn, value state has maximum possible value

``` swift
public var optimalKnownMove: [GameState: GameState] = [:]
```

### `knownValues`

``` swift
public var knownValues: [GameState: Double] = [:]
```

### `guessDepth`

How many turns had been evaluated when determining the best move without finding a way to sure win.

``` swift
public var guessDepth: [GameState: Int] = [:]
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
public var evaluator: MinMaxHeuristicEvaluator
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
