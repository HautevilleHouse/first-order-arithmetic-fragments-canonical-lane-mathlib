import Mathlib.Data.Nat.Basic

namespace HautevilleHouse
namespace FirstOrderArithmeticFragmentsCanonicalLaneLean

structure InductionSchema (P : PeanoStructure) where
  phi : P.carrier → Prop
  baseCase : phi P.zero
  stepCase : ∀ (n : P.carrier), phi n → phi (P.succ n)
  conclusion : ∀ (n : P.carrier), phi n

def InductionSchemaClosed {P : PeanoStructure} (I : InductionSchema P) : Prop :=
  I.conclusion

end FirstOrderArithmeticFragmentsCanonicalLaneLean
end HautevilleHouse