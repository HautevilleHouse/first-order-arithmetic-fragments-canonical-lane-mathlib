import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FirstOrderArithmeticFragmentsCanonicalLaneLean

structure OrdinalAnalysisSignature where
  theory : String
  proofTheoreticOrdinal : Type
  ordinalRepresentation : Prop
  upperBound : Prop
  lowerBound : Prop

structure OrdinalAnalysisPackage (Σ : OrdinalAnalysisSignature) where
  theoryFormalized : Prop
  ordinalRepresentationClosed : Σ.ordinalRepresentation
  upperBoundClosed : Σ.upperBound
  lowerBoundClosed : Σ.lowerBound

structure OrdinalAnalysisEvidence {Σ : OrdinalAnalysisSignature} (O : OrdinalAnalysisPackage Σ) where
  theoryFormalizedClosed : O.theoryFormalized
  ordinalRepresentationClosedClosed : O.ordinalRepresentationClosed
  upperBoundClosedClosed : O.upperBoundClosed
  lowerBoundClosedClosed : O.lowerBoundClosed

def OrdinalAnalysisClosed {Σ : OrdinalAnalysisSignature} (O : OrdinalAnalysisPackage Σ) : Prop :=
  O.theoryFormalized ∧ O.ordinalRepresentationClosed ∧ O.upperBoundClosed ∧ O.lowerBoundClosed

theorem ordinal_analysis_closed_from_evidence
    {Σ : OrdinalAnalysisSignature} (O : OrdinalAnalysisPackage Σ) (E : OrdinalAnalysisEvidence O) :
    OrdinalAnalysisClosed O := by
  exact And.intro E.theoryFormalizedClosed (And.intro E.ordinalRepresentationClosedClosed (And.intro E.upperBoundClosedClosed E.lowerBoundClosedClosed))

end FirstOrderArithmeticFragmentsCanonicalLaneLean
end HautevilleHouse