import HautevilleHouse.LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean.LocalLemmaPackage

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

structure NoncollapsingPackage where
  scaleInvariantBound : Prop
  curvatureScaleControl : Prop
  blowupLimitNoncollapsed : Prop
  lowerBoundNonzero : Prop

structure NoncollapsingEvidence (N : NoncollapsingPackage) where
  scaleInvariantBoundClosed : N.scaleInvariantBound
  curvatureScaleControlClosed : N.curvatureScaleControl
  blowupLimitNoncollapsedClosed : N.blowupLimitNoncollapsed
  lowerBoundNonzeroClosed : N.lowerBoundNonzero

def NoncollapsingClosed (N : NoncollapsingPackage) : Prop :=
  N.scaleInvariantBound ∧ N.curvatureScaleControl ∧ N.blowupLimitNoncollapsed ∧ N.lowerBoundNonzero

theorem noncollapsing_closed_from_evidence (N : NoncollapsingPackage) (E : NoncollapsingEvidence N) :
    NoncollapsingClosed N := by
  exact And.intro E.scaleInvariantBoundClosed
    (And.intro E.curvatureScaleControlClosed
      (And.intro E.blowupLimitNoncollapsedClosed E.lowerBoundNonzeroClosed))

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse