import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

structure LinearFormsAdmissibleClass where
  object : LinearFormPackage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : LinearFormsAdmissibleClass) : Prop :=
  BakerLinearFormClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse