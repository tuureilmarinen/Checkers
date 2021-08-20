# PortableDraughtsNotationTests

``` swift
final class PortableDraughtsNotationTests: XCTestCase 
```

## Inheritance

`XCTestCase`

## Properties

### `fenA`

``` swift
private let fenA="W:WK3:B1,K2"
```

### `fenAa`

``` swift
private let fenAa="W:B1,K2:WK3"
```

### `gameStateA`

``` swift
private let gameStateA
```

### `allTests`

``` swift
static var allTests = [
        ("testFentoState", testFentoState),
        ("testStatetoFen", testStatetoFen)
    ]
```

## Methods

### `testFentoState()`

Tests if state of the board is parsed correctly from FEN-string.

``` swift
func testFentoState() 
```

### `testStatetoFen()`

Tests if state of the board is encoded correctly into FEN-string.

``` swift
func testStatetoFen() 
```
