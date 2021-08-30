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

### `encode(_:)`

``` swift
public static func encode(_ state: GameState) -> String 
```

### `decode(_:)`

``` swift
public static func decode(_ fen: String?) -> GameState? 
```
