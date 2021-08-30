# EightByEightBoard

``` swift
public struct EightByEightBoard: Equatable, Hashable, Codable, Identifiable, CustomStringConvertible 
```

## Inheritance

`Codable`, `CustomStringConvertible`, `Equatable`, `Hashable`, `Identifiable`

## Initializers

### `init(dump:)`

``` swift
public init(dump: String) throws 
```

### `init(blackMen:blackKings:whiteMen:whiteKings:)`

``` swift
public init(blackMen: UInt64 = 0, blackKings: UInt64 = 0, whiteMen: UInt64 = 0, whiteKings: UInt64 = 0) 
```

### `init(blackMen:blackKings:whiteMen:whiteKings:)`

``` swift
public init(
        blackMen: PieceSet = PieceSet(0),
        blackKings: PieceSet = PieceSet(0),
        whiteMen: PieceSet = PieceSet(0),
        whiteKings: PieceSet = PieceSet(0)
    ) 
```

## Properties

### `blackMen`

``` swift
public var blackMen: PieceSet 
```

### `blackKings`

``` swift
public var blackKings: PieceSet 
```

### `whiteMen`

``` swift
public var whiteMen: PieceSet 
```

### `whiteKings`

``` swift
public var whiteKings: PieceSet 
```

### `suit`

``` swift
public var suit: [CheckersPiece: PieceSet] 
```

### `id`

``` swift
public var id: String 
```

### `description`

``` swift
public var description: String 
```

### `edges`

``` swift
public static let edges: PieceSet 
```

### `notEdges`

~edges

``` swift
public static let notEdges: PieceSet 
```

### `rightEdge`

``` swift
public static let rightEdge: PieceSet 
```

### `leftEdge`

``` swift
public static let leftEdge: PieceSet 
```

### `whiteEnd`

``` swift
public static let whiteEnd: PieceSet 
```

### `blackEnd`

0b0000\_0000\_0000\_.......1111\_1111

``` swift
public static let blackEnd: PieceSet 
```

### `darkSquares`

0b0101\_0101\_1010\_1010\_0101\_0101\_1010\_1010\_0101\_0101\_1010\_1010\_0101\_0101\_1010\_1010

``` swift
public static let darkSquares: PieceSet 
```

## Methods

### `encode(to:)`

``` swift
public func encode(to: String.Type) -> String 
```

### `turn(_:into:at:)`

``` swift
public func turn (_ pieces: CheckersPiece, into: CheckersPiece, at: PieceSet) -> EightByEightBoard 
```

### `turn(_:into:at:)`

``` swift
public func turn(_ pieces: CheckersPiece, into: CheckersPiece, at: [Int]?=nil) -> EightByEightBoard 
```

### `pieces(_:except:)`

``` swift
public func pieces(_ selection: CheckersPieceSelector, except: CheckersPieceSelector? = nil) -> PieceSet 
```

### `shift(_:)`

``` swift
public static func shift(_ d: Direction) -> Int 
```

### `remove(at:from:)`

``` swift
public func remove(at direction: Direction, from: PieceSet) -> EightByEightBoard 
```

### `remove(at:)`

``` swift
public func remove(at: PieceSet) -> EightByEightBoard 
```

### `move(back:_:)`

``` swift
public func move(back selection: CheckersPieceSelector, _ direction: Direction) -> EightByEightBoard 
```

### `move(_:_:)`

``` swift
public func move(_ selection: CheckersPieceSelector, _ direction: Direction) -> EightByEightBoard 
```
