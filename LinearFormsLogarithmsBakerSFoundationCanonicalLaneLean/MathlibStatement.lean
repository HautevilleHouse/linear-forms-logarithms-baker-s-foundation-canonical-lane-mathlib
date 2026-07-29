import HautevilleHouse.LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "Baker's Foundation",
  theoremObject := "Linear Forms in Logarithms",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

def theoremSpecificEndgamePilotClosed : Prop :=
  ∀ A : AdmissibleClass, ConstrainedTheoremClosure A

theorem theorem_specific_endgame_pilot_checked :
    theoremSpecificEndgamePilotClosed := by
  intro A
  exact constrained_theorem_endgame A

end LinearFormsLogarithmsBakerSFoundationCanonicalLaneLean
end HautevilleHouse