import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

structure LinearFormLogAdmittedObject where
  linearForm : Type u
  field : Type v
  charZero : Prop
  logarithmsIndependent : Prop
  bakerBound : ℕ
  lowerBoundEstablished : Prop
  lowerBoundEstablishedTerm : lowerBoundEstablished

structure AdmissibleClass where
  object : LinearFormLogAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LinearFormLogWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse