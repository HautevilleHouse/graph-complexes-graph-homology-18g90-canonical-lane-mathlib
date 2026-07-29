import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphComplexesGraphHomology18g90CanonicalLaneLean

structure ChainComplexPackage (G : GraphComplexPackage) where
  chainGroups : Nat -> Type u
  boundaryMaps : (n : Nat) -> (chainGroups (n+1)) -> (chainGroups n)
  boundarySquared : (n : Nat) -> (boundaryMaps n ∘ boundaryMaps (n+1)) = 0
  homologyGroups : Nat -> Type u
  homologyWellDefined : Prop
  boundarySquaredTerm : boundarySquared
  homologyWellDefinedTerm : homologyWellDefined

structure ChainComplexEvidence {G : GraphComplexPackage} (C : ChainComplexPackage G) where
  boundarySquaredClosed : C.boundarySquared
  homologyWellDefinedClosed : C.homologyWellDefined

def ChainComplexClosed {G : GraphComplexPackage} (C : ChainComplexPackage G) : Prop :=
  C.boundarySquared ∧ C.homologyWellDefined

theorem chain_complex_closed_from_evidence {G : GraphComplexPackage} (C : ChainComplexPackage G) (E : ChainComplexEvidence C) : ChainComplexClosed C := by
  exact And.intro E.boundarySquaredClosed E.homologyWellDefinedClosed

end GraphComplexesGraphHomology18g90CanonicalLaneLean
end HautevilleHouse