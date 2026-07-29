import GraphComplexesGraphHomology18g90CanonicalLaneLean.GraphComplexesObjects

namespace HautevilleHouse
namespace GraphComplexesGraphHomology18g90CanonicalLaneLean

structure GraphComplexDeformation where
  baseSpace : GraphComplexSpace
  deformationParameter : Type
  deformedDifferential : (n : Nat) → (baseSpace.chainGroups n) → (baseSpace.chainGroups (n-1))
  deformationVanishesAtZero : Prop
  homotopyEquivalence : Prop

structure DeformationPackage where
  deformations : List GraphComplexDeformation
  compatibility : Prop
  spectralSequenceDegeneration : Prop

structure DeformationEvidence (D : DeformationPackage) where
  deformationVanishesAtZeroClosed : ∀ (d : GraphComplexDeformation), d ∈ D.deformations → d.deformationVanishesAtZero
  homotopyEquivalenceClosed : ∀ (d : GraphComplexDeformation), d ∈ D.deformations → d.homotopyEquivalence
  compatibilityClosed : D.compatibility
  spectralSequenceDegenerationClosed : D.spectralSequenceDegeneration

def DeformationClosed (D : DeformationPackage) : Prop :=
  (∀ (d : GraphComplexDeformation), d ∈ D.deformations → d.deformationVanishesAtZero ∧ d.homotopyEquivalence) ∧
  D.compatibility ∧ D.spectralSequenceDegeneration

theorem deformation_closed_from_evidence (D : DeformationPackage) (E : DeformationEvidence D) :
    DeformationClosed D := by
  refine And.intro ?_ (And.intro E.compatibilityClosed E.spectralSequenceDegenerationClosed)
  intro d hd
  exact And.intro (E.deformationVanishesAtZeroClosed d hd) (E.homotopyEquivalenceClosed d hd)

end GraphComplexesGraphHomology18g90CanonicalLaneLean
end HautevilleHouse