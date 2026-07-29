import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : BakerAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BakerWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse