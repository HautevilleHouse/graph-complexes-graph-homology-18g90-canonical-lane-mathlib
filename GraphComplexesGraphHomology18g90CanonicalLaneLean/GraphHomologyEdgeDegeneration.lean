import canonicalLaneMathlib.AdmissibleClass
import GraphComplexesGraphHomology18g90CanonicalLaneLean.GraphComplexDefinitions
import GraphComplexesGraphHomology18g90CanonicalLaneLean.GraphHomologyFiltration
import GraphComplexesGraphHomology18g90CanonicalLaneLean.GraphHomologySpectralSequence

namespace HautevilleHouse
namespace GraphComplexesGraphHomology18g90CanonicalLaneLean

structure EdgeDegenerationPackage {G : GraphComplexPackage} {F : GraphHomologyFiltration G}
    {S : SpectralSequencePackage F} where
  edgeDegenerationAtE2 : Prop
  collapseAtE2 : Prop
  abutmentIsGraphHomology : Prop
  homologicalDegeneration : Prop

structure EdgeDegenerationEvidence {G : GraphComplexPackage} {F : GraphHomologyFiltration G}
    {S : SpectralSequencePackage F} (D : EdgeDegenerationPackage S) where
  edgeDegenerationAtE2Closed : D.edgeDegenerationAtE2
  collapseAtE2Closed : D.collapseAtE2
  abutmentIsGraphHomologyClosed : D.abutmentIsGraphHomology
  homologicalDegenerationClosed : D.homologicalDegeneration

def EdgeDegenerationClosed {G : GraphComplexPackage} {F : GraphHomologyFiltration G}
    {S : SpectralSequencePackage F} (D : EdgeDegenerationPackage S) : Prop :=
  D.edgeDegenerationAtE2 ∧ D.collapseAtE2 ∧ D.abutmentIsGraphHomology ∧ D.homologicalDegeneration

theorem edge_degeneration_closed_from_evidence {G : GraphComplexPackage} {F : GraphHomologyFiltration G}
    {S : SpectralSequencePackage F} (D : EdgeDegenerationPackage S)
    (E : EdgeDegenerationEvidence D) : EdgeDegenerationClosed D := by
  exact And.intro E.edgeDegenerationAtE2Closed
    (And.intro E.collapseAtE2Closed
      (And.intro E.abutmentIsGraphHomologyClosed E.homologicalDegenerationClosed))

end GraphComplexesGraphHomology18g90CanonicalLaneLean
end HautevilleHouse
