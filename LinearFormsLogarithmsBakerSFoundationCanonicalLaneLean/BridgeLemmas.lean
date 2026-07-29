import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BakerLinearFormClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse