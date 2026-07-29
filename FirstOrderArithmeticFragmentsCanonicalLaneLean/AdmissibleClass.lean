import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FirstOrderArithmeticFragmentsCanonicalLaneLean

structure AdmissibleClass where
  object : ArithmeticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ArithmeticWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FirstOrderArithmeticFragmentsCanonicalLaneLean
end HautevilleHouse
