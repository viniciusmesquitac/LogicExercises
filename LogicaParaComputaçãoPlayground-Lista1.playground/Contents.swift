import UIKit

let formula = Implies(Atom("a"), Atom("b"))
let formula2 = Implies(Atom("p"), Or(Atom("p"), Atom("s")))
print(formula2.getDescription())
