# CheckersMinMaxPlayerTests

``` swift
final class CheckersMinMaxPlayerTests: XCTestCase 
```

## Inheritance

`XCTestCase`

## Properties

### `allTests`

``` swift
static var allTests = [
        ("testPerformance", testPerformance),
        ("testProvidesLegalMove", testProvidesLegalMove),
        ("testMinMaxWinsIfWinCanForcedInSearchDepth", testMinMaxWinsIfWinCanForcedInSearchDepth)
    ]
```

## Methods

### `testPerformance()`

Tests that the MinMax-algorithm preforms significantly better than a player making completely random moves.
MinMaxPlayer should win at least 80% percent of games.

``` swift
func testPerformance() 
```

### `testProvidesLegalMove()`

The provideMove-method should always return a position that is one move away from the state
ie. it does not return illegal moves.

``` swift
func testProvidesLegalMove() 
```

### `testMinMaxWinsIfWinCanForcedInSearchDepth()`

Tests wheter player wins from state from which it can force win.

``` swift
func testMinMaxWinsIfWinCanForcedInSearchDepth() 
```
