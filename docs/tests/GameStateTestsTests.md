# GameStateTestsTests

``` swift
final class GameStateTestsTests: XCTestCase 
```

## Inheritance

`XCTestCase`

## Properties

### `allTests`

``` swift
static var allTests = [
        ("testPiecesShouldStayInDarkSquares", testPiecesShouldStayInDarkSquares),
        ("testPieceCount", testPieceCount)
    ]
```

## Methods

### `testCorrectAmountOfChildren()`

``` swift
func testCorrectAmountOfChildren() 
```

### `testPiecesShouldNotOverlap()`

``` swift
func testPiecesShouldNotOverlap() 
```

### `testShouldMoveOnlyOnePiece()`

``` swift
func testShouldMoveOnlyOnePiece() 
```

### `testEncode()`

``` swift
func testEncode() 
```

### `testDecode()`

``` swift
func testDecode() 
```

### `testInternalStateValidator()`

Tests if GameState can validate itself correctly

``` swift
func testInternalStateValidator() 
```

### `testPiecesShouldStayInDarkSquares()`

Tests if pieces stay in the squares playable in the english draughts.

``` swift
func testPiecesShouldStayInDarkSquares() 
```

### `testPieceCount()`

Preforms simple tests with the piececounts.

``` swift
func testPieceCount() 
```

  - Tests that the total number of pieces does not increase.

  - The player in turn does not lose pieces during his own turn.

  - Men can turn into kings only during players own turn.

### `testNumberOf()`

``` swift
func testNumberOf() 
```

### `testMenTurnIntoKings()`

Tests that men turn into kings when and only when they reach the opposite end of the board.

``` swift
func testMenTurnIntoKings() 
```
