import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphComplexesGraphHomology18g90CanonicalLaneLean

structure GraphComplexPackage where
  graphType : Type u
  chainComplex : Type v
  differential : chainComplex → chainComplex
  homologyGroups : Nat → Type w
  finitelyGenerated : Prop
  torsionFree : Prop
  poincareDuality : Prop

structure GraphComplexEvidence (G : GraphComplexPackage) where
  finitelyGeneratedClosed : G.finitelyGenerated
  torsionFreeClosed : G.torsionFree
  poincareDualityClosed : G.poincareDuality

def GraphComplexClosed (G : GraphComplexPackage) : Prop :=
  G.finitelyGenerated ∧ G.torsionFree ∧ G.poincareDuality

theorem graph_complex_closed_from_evidence (G : GraphComplexPackage) (E : GraphComplexEvidence G) :
    GraphComplexClosed G := by
  exact And.intro E.finitelyGeneratedClosed (And.intro E.torsionFreeClosed E.poincareDualityClosed)

end GraphComplexesGraphHomology18g90CanonicalLaneLean
end HautevilleHouse