import Mathlib.Data.Nat.Basic

namespace HautevilleHouse
namespace FirstOrderArithmeticFragmentsCanonicalLaneLean

structure ProofSystem where
  axioms : List Prop
  rules : List (Prop → Prop → Prop)
  derivation : Prop → Prop
  consistency : Prop

def provabilityPredicate (S : ProofSystem) (phi : Prop) : Prop :=
  S.derivation phi

structure LobCondition (S : ProofSystem) where
  necessitation : ∀ phi, provabilityPredicate S phi → provabilityPredicate S (provabilityPredicate S phi)
  distributivity : ∀ phi psi, provabilityPredicate S (phi → psi) → provabilityPredicate S phi → provabilityPredicate S psi
  modalFixpoint : ∀ phi, provabilityPredicate S (provabilityPredicate S phi → phi) → provabilityPredicate S phi

def LobConditionClosed {S : ProofSystem} (L : LobCondition S) : Prop :=
  L.necessitation ∧ L.distributivity ∧ L.modalFixpoint

end FirstOrderArithmeticFragmentsCanonicalLaneLean
end HautevilleHouse