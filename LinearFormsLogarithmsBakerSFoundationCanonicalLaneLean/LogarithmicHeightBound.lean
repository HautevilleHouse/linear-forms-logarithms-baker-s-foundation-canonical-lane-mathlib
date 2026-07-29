import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

structure LogarithmicHeightBoundPackage where
  algebraicNumber : ℂ
  height : ℝ
  heightPositive : height > 0
  logHeight : ℝ
  logHeightPositive : logHeight > 0
  heightBound : Prop

structure LogarithmicHeightBoundEvidence (H : LogarithmicHeightBoundPackage) where
  heightPositiveClosed : H.heightPositive
  logHeightPositiveClosed : H.logHeightPositive
  heightBoundClosed : H.heightBound

def LogarithmicHeightBoundClosed (H : LogarithmicHeightBoundPackage) : Prop :=
  H.heightPositive ∧ H.logHeightPositive ∧ H.heightBound

theorem logarithmic_height_bound_closed_from_evidence (H : LogarithmicHeightBoundPackage) (E : LogarithmicHeightBoundEvidence H) :
    LogarithmicHeightBoundClosed H := by
  exact And.intro E.heightPositiveClosed (And.intro E.logHeightPositiveClosed E.heightBoundClosed)

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse