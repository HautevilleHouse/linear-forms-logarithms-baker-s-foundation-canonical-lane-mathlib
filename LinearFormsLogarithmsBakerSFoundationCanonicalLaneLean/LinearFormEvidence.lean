import HautevilleHouse.LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean.Noncollapsing

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

structure LinearFormsAnalyticCertificate (N : NoncollapsingPackage) where
  nonzeroCondition : Prop
  lowerBoundDefined : Prop
  heightBound : Prop
  combinationReduced : Prop
  nonzeroConditionClosed : nonzeroCondition
  lowerBoundDefinedClosed : lowerBoundDefined
  heightBoundClosed : heightBound
  combinationReducedClosed : combinationReduced
  noncollapsingEvidence : NoncollapsingEvidence N

def LinearFormsAnalyticCertificateClosed {N : NoncollapsingPackage} (C : LinearFormsAnalyticCertificate N) : Prop :=
  C.nonzeroCondition ∧ C.lowerBoundDefined ∧ C.heightBound ∧ C.combinationReduced ∧ NoncollapsingClosed N

theorem linear_forms_analytic_certificate_closed {N : NoncollapsingPackage} (C : LinearFormsAnalyticCertificate N) :
    LinearFormsAnalyticCertificateClosed C := by
  exact And.intro C.nonzeroConditionClosed
    (And.intro C.lowerBoundDefinedClosed
      (And.intro C.heightBoundClosed
        (And.intro C.combinationReducedClosed
          (noncollapsing_closed_from_evidence N C.noncollapsingEvidence))))

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse