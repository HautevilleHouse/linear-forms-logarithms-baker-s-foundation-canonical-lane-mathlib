import linearFormsLogarithmsBakerSFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LinearFormLogWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.lowerBoundEstablishedTerm

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse