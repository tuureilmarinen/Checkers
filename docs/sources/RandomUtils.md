# RandomUtils

``` swift
public struct RandomUtils 
```

## Methods

### `getRandomBitsSet(_:_:)`

``` swift
public static func getRandomBitsSet<T: FixedWidthInteger>(_ choices: T, _ count: Int) -> T 
```

### `getRandomBitsSet(_:_:using:)`

``` swift
public static func getRandomBitsSet<E, T: FixedWidthInteger>(
        _ choices: T,
        _ count: Int,
        using: inout E
    ) -> T where E: RandomNumberGenerator 
```
