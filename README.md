# swift-delegate-sample
This is a basic implementation of the delegation pattern in a swift 4.0 project.

In this example I use the delegation pattern to show how can you "delegate" a method call to a different class or object from the object that implements it.

# When do I need that?
everytime you build an object that depends on the action of another object but one does not inherit the other.

#Simple implementation

```swift
protocol WashingMachineDelegate {
  didEndWashing(message: String)
}
```
A protocol is used to indicate a set of rules that should be followed by whom abides to it.
Pretty much is: if you agree with this protocol you must follow the rules stated in it.

```swift
class DishWasher {
    var delegate : WashingMachineDelegate!
    var pieces: Int
    
    init (pieces: Int) {
      self.pieces = pieces
    }
    
}
```
