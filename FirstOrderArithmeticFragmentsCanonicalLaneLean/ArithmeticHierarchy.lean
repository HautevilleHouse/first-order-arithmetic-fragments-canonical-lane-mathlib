import Mathlib.Data.Nat.Basic

namespace HautevilleHouse
namespace FirstOrderArithmeticFragmentsCanonicalLaneLean

inductive ArithmeticHierarchy where
  | deltaZero
  | sigmaOne
  | piOne
  | deltaOne
  | sigmaTwo
  | piTwo
  | higher

def hierarchyContains (h : ArithmeticHierarchy) (phi : ℕ → Prop) : Prop :=
  match h with
  | ArithmeticHierarchy.deltaZero => True
  | ArithmeticHierarchy.sigmaOne => True
  | ArithmeticHierarchy.piOne => True
  | ArithmeticHierarchy.deltaOne => True
  | ArithmeticHierarchy.sigmaTwo => True
  | ArithmeticHierarchy.piTwo => True
  | ArithmeticHierarchy.higher => True

end FirstOrderArithmeticFragmentsCanonicalLaneLean
end HautevilleHouse