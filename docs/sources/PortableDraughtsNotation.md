# PortableDraughtsNotation

``` swift
public enum PortableDraughtsNotation 
```

## Methods

### `IntToPDN(_:)`

Returns the square number of a dark square in the format used in the Portable Draughts Notation

``` swift
public static func IntToPDN(_ index: Int) -> Int 
```

### `PDNToInt(_:)`

``` swift
public static func PDNToInt(_ pdnSquareNumber: Int) -> Int 
```

### `stateToFen(_:)`

``` swift
public static func stateToFen(_ state: GameState) -> String 
```

### `PDNfenToGameState(_:)`

``` swift
public static func PDNfenToGameState(_ fen: String?) -> GameState? 
```
