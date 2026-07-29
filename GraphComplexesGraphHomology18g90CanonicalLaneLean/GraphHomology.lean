import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphComplexesGraphHomology18g90CanonicalLaneLean

structure GraphHomologyPackage where
  graphComplex : GraphComplexPackage
  chainGroups : ℕ → Type u
  boundaryMaps : (n : ℕ) → (chainGroups (n+1) → chainGroups n)
  homologyGroups : ℕ → Type u
  homologyComputed : Prop

structure GraphHomologyEvidence (H : GraphHomologyPackage) where
  boundaryMapsDefined : ∀ n, (H.boundaryMaps n) ∘ (H.boundaryMaps (n+1)) = 0
  homologyComputedClosed : H.homologyComputed

def GraphHomologyClosed (H : GraphHomologyPackage) : Prop :=
  (∀ n, (H.boundaryMaps n) ∘ (H.boundaryMaps (n+1)) = 0) ∧ H.homologyComputed

theorem graph_homology_closed_from_evidence
    (H : GraphHomologyPackage) (E : GraphHomologyEvidence H) :
    GraphHomologyClosed H := by
  exact And.intro E.boundaryMapsDefined E.homologyComputedClosed

end GraphComplexesGraphHomology18g90CanonicalLaneLean
end HautevilleHouse