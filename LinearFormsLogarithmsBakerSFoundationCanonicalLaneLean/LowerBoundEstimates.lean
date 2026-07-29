import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

structure LowerBoundEstimatesPackage where
  linearFormValue : ℂ
  lowerBound : ℝ
  lowerBoundPositive : lowerBound > 0
  absoluteValueBound : |linearFormValue| ≥ lowerBound
  abcConjectureInput : Prop

structure LowerBoundEstimatesEvidence (L : LowerBoundEstimatesPackage) where
  lowerBoundPositiveClosed : L.lowerBoundPositive
  absoluteValueBoundClosed : L.absoluteValueBound
  abcConjectureInputClosed : L.abcConjectureInput

def LowerBoundEstimatesClosed (L : LowerBoundEstimatesPackage) : Prop :=
  L.lowerBoundPositive ∧ L.absoluteValueBound ∧ L.abcConjectureInput

theorem lower_bound_estimates_closed_from_evidence (L : LowerBoundEstimatesPackage) (E : LowerBoundEstimatesEvidence L) :
    LowerBoundEstimatesClosed L := by
  exact And.intro E.lowerBoundPositiveClosed (And.intro E.absoluteValueBoundClosed E.abcConjectureInputClosed)

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse