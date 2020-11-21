/*
 
This module is designed to define formulas in propositional logic.
 
For example, the following piece of code creates an object representing (p v s).
 
formula1 = Or(Atom("p"), Atom("s"))
 
As another example, the piece of code below creates an object that represents (p → (p v s)).
 
formula2 = Implies(Atom("p"), Or(Atom("p"), Atom("s")))
 
*/

public protocol Formula {
    func getDescription() -> String
}

public class Atom: Formula {
    let name: String
    
    public init(_ name: String) {
        self.name = name
    }
    
    public func getDescription() -> String {
        return self.name
    }
}

public class Implies: Formula {
    public let left: Formula
    public let right: Formula
    
    public init(_ left: Formula, _ right: Formula) {
        self.left = left
        self.right = right
    }
    
    public func getDescription() -> String {
        return "(\(self.left.getDescription()) ⟶ \(self.right.getDescription()))"
    }
}

public class Not: Formula {
    public let inner: Formula
    
    public func getDescription() -> String {
        return "∼\(self.inner.getDescription())"
    }
    
    public init(_ inner: Formula) {
        self.inner = inner
    }
}

public class And: Formula {
    public let left: Formula
    public let right: Formula
    
    public init(_ left: Formula, _ right: Formula) {
        self.left = left
        self.right = right
    }
    
    public func getDescription() -> String {
        return "(\(self.left.getDescription()) ⋀ \(self.right.getDescription())"
    }
}

public class Or: Formula {
    public let left: Formula
    public let right: Formula
    
    public init(_ left: Formula, _ right: Formula) {
        self.left = left
        self.right = right
    }
    
    public func getDescription() -> String {
        return "(\(self.left.getDescription()) ⋁ \(self.right.getDescription())"
    }
}



