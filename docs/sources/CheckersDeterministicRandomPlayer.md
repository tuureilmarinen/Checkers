# CheckersDeterministicRandomPlayer

CheckersDeterministicRandomPlayer makes always a same move from same state of the game if the seed is same.

``` swift
public struct CheckersDeterministicRandomPlayer: CheckersPlayer 
```

## Inheritance

[`CheckersPlayer`](/CheckersPlayer)

## Initializers

### `init()`

``` swift
public init() 
```

## Properties

### `name`

``` swift
public var name: String 
```

### `seed`

``` swift
public var seed: UInt64 = 1
```

## Methods

### `provideMove(_:)`

``` swift
public func provideMove(_ state: GameState) -> GameState? 
```
