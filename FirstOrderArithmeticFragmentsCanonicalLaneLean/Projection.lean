import FirstOrderArithmeticFragmentsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FirstOrderArithmeticFragmentsCanonicalLaneLean

def arithmeticFragmentsProjection : Projection ArithmeticFragmentsEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem arithmeticFragments_projection_idempotent (x : ArithmeticFragmentsEndgameState) :
    arithmeticFragmentsProjection.toFun (arithmeticFragmentsProjection.toFun x) = arithmeticFragmentsProjection.toFun x := by
  exact arithmeticFragmentsProjection.idempotent x

end FirstOrderArithmeticFragmentsCanonicalLaneLean
end HautevilleHouse