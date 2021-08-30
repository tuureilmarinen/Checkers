# PieceSet

``` swift
public struct PieceSet: Equatable, Hashable, Codable, Identifiable 
```

## Inheritance

`Codable`, `Equatable`, `Hashable`, `Identifiable`

## Initializers

### `init(_:)`

``` swift
public init(_ pieces: UInt64) 
```

### `init(_:)`

``` swift
public init(_ indexes: [Int]) 
```

## Properties

### `id`

``` swift
public var id: UInt64 
```

### `pieces`

``` swift
public var pieces: UInt64
```

### `count`

``` swift
public var count: Int 
```

### `isEmpty`

``` swift
public var isEmpty: Bool 
```

### `isNotEmpty`

``` swift
public var isNotEmpty: Bool 
```

### `indexes`

``` swift
public var indexes: [Int] 
```

## Methods

### `and(not:)`

``` swift
public func and(not: PieceSet) -> PieceSet 
```

### `and(_:)`

``` swift
public func and(_ and: PieceSet) -> PieceSet 
```

### `or(_:)`

``` swift
public func or(_ other: PieceSet) -> PieceSet 
```
