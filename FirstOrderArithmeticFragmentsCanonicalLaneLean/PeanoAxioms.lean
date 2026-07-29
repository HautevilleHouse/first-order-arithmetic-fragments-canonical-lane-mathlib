import Mathlib.Data.Nat.Basic

namespace HautevilleHouse
namespace FirstOrderArithmeticFragmentsCanonicalLaneLean

structure PeanoStructure where
  carrier : Type
  zero : carrier
  succ : carrier → carrier
  inductionSchema : Prop
  zeroNotSucc : Prop
  succInjective : Prop

def peanoAxioms (P : PeanoStructure) : Prop :=
  P.inductionSchema ∧ P.zeroNotSucc ∧ P.succInjective

end FirstOrderArithmeticFragmentsCanonicalLaneLean
end HautevilleHouse