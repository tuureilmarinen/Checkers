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
        ("testCache", testCache),
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

### `testCache()`

Tests cache.

``` swift
func testCache() 
```

  - found values should be stored in cache

  - if value is in the cache, it should be returned

  - best found move should be the one stored in cache

### `testValueOutsideOfAcceptableCacheDepthIsNotReturnedFromCache()`

``` swift
func testValueOutsideOfAcceptableCacheDepthIsNotReturnedFromCache() 
```

### `testValueWithinAcceptableCacheDepthIsReturnedFromCache()`

``` swift
func testValueWithinAcceptableCacheDepthIsReturnedFromCache() 
```

### `testMinMaxWinsIfWinCanForcedInSearchDepth()`

Tests wheter player wins from state from which it can force win.

``` swift
func testMinMaxWinsIfWinCanForcedInSearchDepth() 
```

### `testPerformanceProvideMove5()`

``` swift
func testPerformanceProvideMove5() throws 
```

### `testPerformanceProvideMove7()`

``` swift
func testPerformanceProvideMove7() throws 
```

### `testPerformanceProvideMove9()`

``` swift
func testPerformanceProvideMove9() throws 
```

### `testPerformanceProvideMove11()`

``` swift
func testPerformanceProvideMove11() throws 
```

### `testPerformanceProvideMove13()`

``` swift
func testPerformanceProvideMove13() throws 
```

### `testPerformanceProvideMove15()`

``` swift
func testPerformanceProvideMove15() throws 
```
