import canonicalLaneMathlib.AdmissibleClass
import GraphComplexesGraphHomology18g90CanonicalLaneLean.GraphComplexDefinitions

namespace HautevilleHouse
namespace GraphComplexesGraphHomology18g90CanonicalLaneLean

structure GraphHomologyFiltration (G : GraphComplexPackage) where
  filtrationDegree : Type u
  filteredChainComplex : Type v
  associatedGraded : Type w
  filtrationExhaustive : Prop
  filtrationBoundedBelow : Prop
  spectralSequenceInput : Prop

structure FiltrationEvidence {G : GraphComplexPackage} (F : GraphHomologyFiltration G) where
  filtrationExhaustiveClosed : F.filtrationExhaustive
  filtrationBoundedBelowClosed : F.filtrationBoundedBelow
  spectralSequenceInputClosed : F.spectralSequenceInput

def FiltrationClosed {G : GraphComplexPackage} (F : GraphHomologyFiltration G) : Prop :=
  F.filtrationExhaustive ∧ F.filtrationBoundedBelow ∧ F.spectralSequenceInput

theorem filtration_closed_from_evidence {G : GraphComplexPackage} (F : GraphHomologyFiltration G)
    (E : FiltrationEvidence F) : FiltrationClosed F := by
  exact And.intro E.filtrationExhaustiveClosed
    (And.intro E.filtrationBoundedBelowClosed E.spectralSequenceInputClosed)

end GraphComplexesGraphHomology18g90CanonicalLaneLean
end HautevilleHouse
