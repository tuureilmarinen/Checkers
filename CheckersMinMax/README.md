#  Checkers

## GameState
A instance of the GameState represents the state of the game at a certain moment.
The locations of the pieces on the board are stored in four UInt64-type variable.
The least significant bit in UInt64 corresponds with checkers square with smallest number.
Every square on the board has it's own unique place wheter its reachable or not.

This board
```
-XX-01-XX-02-XX-03-XX-04-
-05-XX-06-XX-07-XX-08-XX-
-XX-09-XX-10-XX-11-XX-12-
-13-XX-14-XX-15-XX-16-XX-
-XX-17-XX-18-XX-19-XX-20-
-21-XX-22-XX-23-XX-24-XX-
-XX-25-XX-26-XX-27-XX-28-
-29-XX-30-XX-31-XX-32-XX-
```
is stored like this:
```
-00-01-02-03-04-05-06-07-
-08-09-10-11-12-13-14-15-
-16-17-18-19-20-21-22-23-
-24-25-26-27-28-29-30-31-
-32-33-34-35-36-37-38-39-
-40-41-42-43-44-45-46-47-
-48-49-50-51-52-53-54-55-
-56-57-58-59-60-61-62-63-
```

The information about which player is playing is stored in a boolean variable.
### InstanceProperties
blackMen: UInt64
blackKings: UInt64
whiteMen: UInt64
whiteKings: UInt64
blackTurn: Bool





## GameController

## CheckersPlayer
CheckersPlayer is a protocol that all players adopt.
### Methods
#### provideMove(state:GameState)->GameState06

### Adopting classes
#### CheckersHumanPlayer

#### CheckersMinMax
CheckersMinMax provides an algori

