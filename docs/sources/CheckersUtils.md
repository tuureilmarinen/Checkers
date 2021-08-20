# CheckersUtils

``` swift
public enum CheckersUtils 
```

## Methods

### `getMove(_:_:)`

``` swift
public static func getMove(_ previousState: GameState, _ newState: GameState) -> CheckersMove 
```

### `getMoves(_:)`

``` swift
public static func getMoves(_ state: GameState) -> [Int: [CheckersMove]] 
```

### `getSetBitIndexes(_:)`

``` swift
public static func getSetBitIndexes(_ mask: UInt64) -> [Int] 
```

### `getRandomBitsSet(_:_:)`

``` swift
public static func getRandomBitsSet<T: FixedWidthInteger>(_ choices: T, _ count: Int) -> T 
```

### `getRandomGameState(turn:blackMen:whiteMen:blackKings:whiteKings:)`

``` swift
public static func getRandomGameState(
        turn: CheckersColor?=nil,
        blackMen: Int=0,
        whiteMen: Int=0,
        blackKings: Int=0,
        whiteKings: Int=0
    ) -> GameState 
```
