import FirstOrderArithmeticFragmentsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace FirstOrderArithmeticFragmentsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "arithmetic-fragments-canonical-lane",
  theoremName := "arithmetic-fragments-canonical-lane",
  theoremObject := "First-order arithmetic fragments, including PA, IΣ₁, and IΣ₂",
  classicalBoundary := "Source boundary carried by Formalization.carriedRemainder",
  constrainedStatement := "Constrained theorem certificate internalized through induction axiom closure",
  certificateLane := "induction_constrained",
  carriedRemainder := "Unrestricted classical boundary carried outside closure"
}

end FirstOrderArithmeticFragmentsCanonicalLaneLean
end HautevilleHouse
