import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

structure LogarithmsPackage where
  base : ℕ
  arguments : List ℚ
  logValues : List ℚ
  linearRelation : Prop
  linearRelationClosed : linearRelation

structure LogarithmsEvidence (L : LogarithmsPackage) where
  linearRelationClosed : L.linearRelation

def LogarithmsClosed (L : LogarithmsPackage) : Prop :=
  L.linearRelation

theorem logarithms_closed_from_evidence (L : LogarithmsPackage) (E : LogarithmsEvidence L) : LogarithmsClosed L := by
  exact E.linearRelationClosed

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse