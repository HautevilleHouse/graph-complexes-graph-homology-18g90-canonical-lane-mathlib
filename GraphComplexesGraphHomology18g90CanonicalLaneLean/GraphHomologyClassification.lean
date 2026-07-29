import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphComplexesGraphHomology18g90CanonicalLaneLean

structure GraphHomologyClassificationPackage {G : GraphComplexPackage} {C : ChainComplexPackage G} {S : SpectralSequencePackage G C} {K : KontsevichFormalityPackage G C S} where
  graphHomologyGroups : Nat -> Type u
  classificationTheorem : Prop
  vanishingCondition : Prop
  graphHomologyGroupsDefined : Prop
  classificationTheoremTerm : classificationTheorem
  vanishingConditionTerm : vanishingCondition
  graphHomologyGroupsDefinedTerm : graphHomologyGroupsDefined

structure GraphHomologyClassificationEvidence {G : GraphComplexPackage} {C : ChainComplexPackage G} {S : SpectralSequencePackage G C} {K : KontsevichFormalityPackage G C S} (HC : GraphHomologyClassificationPackage G C S K) where
  classificationTheoremClosed : HC.classificationTheorem
  vanishingConditionClosed : HC.vanishingCondition
  graphHomologyGroupsDefinedClosed : HC.graphHomologyGroupsDefined

def GraphHomologyClassificationClosed {G : GraphComplexPackage} {C : ChainComplexPackage G} {S : SpectralSequencePackage G C} {K : KontsevichFormalityPackage G C S} (HC : GraphHomologyClassificationPackage G C S K) : Prop :=
  HC.classificationTheorem ∧ HC.vanishingCondition ∧ HC.graphHomologyGroupsDefined

theorem graph_homology_classification_closed_from_evidence {G : GraphComplexPackage} {C : ChainComplexPackage G} {S : SpectralSequencePackage G C} {K : KontsevichFormalityPackage G C S} (HC : GraphHomologyClassificationPackage G C S K) (E : GraphHomologyClassificationEvidence HC) : GraphHomologyClassificationClosed HC := by
  exact And.intro E.classificationTheoremClosed (And.intro E.vanishingConditionClosed E.graphHomologyGroupsDefinedClosed)

end GraphComplexesGraphHomology18g90CanonicalLaneLean
end HautevilleHouse