import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

structure BakerAdmittedObject where
  linearForm : Type
  logarithms : List (Type → Type)
  coefficients : List ℚ
  lowerBound : ℚ
  conclusion : lowerBound > 0

structure AdmissibleClass where
  object : BakerAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse