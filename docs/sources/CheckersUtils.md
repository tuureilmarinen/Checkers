# CheckersUtils

``` swift
public enum CheckersUtils 
```

## Methods

### `encode(dump:)`

``` swift
public static func encode(dump state: GameState) -> String 
```

### `decode(dump:)`

``` swift
public static func decode(dump: String) -> GameState? 
```

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
public static func getSetBitIndexes<T: FixedWidthInteger&BinaryInteger>(_ mask: T) -> [Int] 
```
