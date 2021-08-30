# GameState

GameState contains state of the board.
It provides a way to get all legal moves from certain state.

``` swift
public struct GameState: Hashable, Codable, CustomStringConvertible, Identifiable 
```

## Inheritance

`Codable`, `CustomStringConvertible`, `Hashable`, `Identifiable`

## Initializers

### `init(dump:)`

``` swift
public init(dump: String) throws 
```

### `init(blackMen:blackKings:whiteMen:whiteKings:blackTurn:)`

The state of the board is represented by a bitboard.
Bit at the least significant position represents square at the leftmost square on the topmost square.

``` swift
public init(blackMen: UInt64, blackKings: UInt64, whiteMen: UInt64, whiteKings: UInt64, blackTurn: Bool) 
```

#### Parameters

  - blackMen: Bitboard of the black men on the board.
  - blackKings: Bitboard of the black men on the board.
  - whiteMen: Bitboard of the black men on the board.
  - whiteKings: Bitboard of the black men on the board.
  - blackTurn: True, if the player with the black pieces should make the next move.

### `init(board:turn:)`

``` swift
public init(board: EightByEightBoard, turn: CheckersColor) 
```

### `init(board:blackTurn:)`

``` swift
public init(board: EightByEightBoard, blackTurn: Bool) 
```

### `init(fen:)`

``` swift
public init(fen: String) throws 
```

## Properties

### `board`

``` swift
public var board: EightByEightBoard
```

### `id`

``` swift
public var id: String 
```

### `description`

``` swift
public var description: String 
```

### `valid`

``` swift
public var valid: Bool 
```

### `playableSquares`

ie. dark squares

``` swift
public static var playableSquares: PieceSet 
```

### `defaultStart`

Default starting position.
Both players have 12 pieces located on the dark squares closest to player's own side.
Black moves first.

``` swift
public static let defaultStart 
```

### `turn`

The information about who should make the next turn.

``` swift
public var turn: CheckersColor 
```

### `children`

Contains all legal states the current turn can lead to.
Property is calculated.
Complexity is O(n), where n is number of pieces which are able to move or capture.
Pieces that are unable to move do not affect the complexity.

``` swift
public var children: Set<GameState> 
```

The possible moves are calculated simultaneously as all pieces of the same type are stored in single variable.
Movable pieces are determined by

  - ANDing them with not edge depending on the intented move direction

  - shifting bits in variable to left or right by 7 or 9

  - preforming AND operation on NOT allPieces.
    Result has a mask of pieces that can move in specified direction.
    For each set bit a new state is created moving that specific piece.
    Complexity of moving pieces is O(n), where n is the count of set bits.
    Captures are determined in a similar way as the moves, except

  - AND operation is instead preformed on opponentPieces instead of not allPieces

  - AND-operation is preformed with notEdges.

  - After that bits are shifted in same direction and by same offset as in the first step.

  - Result has a mask of pieces that can capture pieces in that direction,
    which is then iterated in O(n) time, whre n is number of set bits.
    Piece is then checked, if it can preform another capture in O(a^b) time,
    where a is average count of directions in which piece can keep jumping.
    For kings: 0 \<= a \<= 3. For men 0\<=a\<=2. 0\<b\<16. However a and b are usually low 0 or 1.

## Methods

### `encode(to:)`

``` swift
public func encode(to: String.Type) -> String 
```

### `pieces(_:except:)`

``` swift
public func pieces(_ selection: CheckersPieceSelector, except: CheckersPieceSelector? = nil) -> PieceSet 
```

### `number(of:)`

``` swift
public func number(of pieces: CheckersPieceSelector) -> Int 
```

### `encode(to:)`

``` swift
public func encode(to: PortableDraughtsNotation.Type) -> String 
```

### `random(turn:blackMen:whiteMen:blackKings:whiteKings:)`

``` swift
public static func random(
        turn: CheckersColor?=nil,
        blackMen: Int=0,
        whiteMen: Int=0,
        blackKings: Int=0,
        whiteKings: Int=0
    ) -> GameState 
```

### `random(turn:blackMen:whiteMen:blackKings:whiteKings:using:)`

``` swift
public static func random<T>(
        turn: CheckersColor?=nil,
        blackMen: Int=0,
        whiteMen: Int=0,
        blackKings: Int=0,
        whiteKings: Int=0,
        using: inout T
    ) -> GameState where T: RandomNumberGenerator 
```
