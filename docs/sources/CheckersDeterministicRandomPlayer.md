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

### `init(seed:)`

``` swift
public init(seed: Int = 1) 
```

## Properties

### `defaultSeed`

``` swift
public static var defaultSeed: Int = 1
```

### `name`

``` swift
public var name: String 
```

### `seed`

``` swift
public var seed: Int
```

## Methods

### `provideMove(_:)`

``` swift
public mutating func provideMove(_ state: GameState) -> GameState? 
```
