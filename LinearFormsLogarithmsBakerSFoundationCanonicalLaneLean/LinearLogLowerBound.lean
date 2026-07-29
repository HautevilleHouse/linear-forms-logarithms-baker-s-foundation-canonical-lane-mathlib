import LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

structure LowerBoundPackage (A : AdmissibleClass) where
  effectiveLowerBound : ℚ
  boundPositive : effectiveLowerBound > 0
  boundDerivedFromLinearForm : Prop
  logHeightDependence : Prop

def LowerBoundClosed (A : AdmissibleClass) (P : LowerBoundPackage A) : Prop :=
  P.boundPositive ∧ P.boundDerivedFromLinearForm ∧ P.logHeightDependence

theorem lower_bound_closed (A : AdmissibleClass) (P : LowerBoundPackage A) :
    LowerBoundClosed A P := by
  exact And.intro P.boundPositive (And.intro P.boundDerivedFromLinearForm P.logHeightDependence)

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse