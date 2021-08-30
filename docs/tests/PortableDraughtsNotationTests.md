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

### `gamestateB`

``` swift
private let gamestateB 
```

### `gamestateC`

``` swift
let gamestateC 
```

### `fenCa`

``` swift
let fenCa = "W:WK10,K22,K23:BK2"
```

### `fenCb`

``` swift
let fenCb = "W:BK2:WK10,K22,K23"
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

### `testInternalSquareNotationToPDNSquareNumber()`

``` swift
func testInternalSquareNotationToPDNSquareNumber() 
```

### `testPDNSquareNumberToInternalSquareNotation()`

``` swift
func testPDNSquareNumberToInternalSquareNotation() 
```
