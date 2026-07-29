import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphComplexesGraphHomology18g90CanonicalLaneLean

structure GraphComplexPackage where
  vertexSet : Type u
  edgeSet : Type v
  orientation : Type w
  differential : (edgeSet → ℤ) → (vertexSet → ℤ)
  squareZero : differential ∘ differential = 0
  gradedVectorSpace : ℕ → Type u

structure GraphComplexEvidence (G : GraphComplexPackage) where
  squareZeroClosed : G.squareZero
  gradedVectorSpaceDefined : Prop

def GraphComplexClosed (G : GraphComplexPackage) : Prop :=
  G.squareZero

theorem graph_complex_closed_from_evidence
    (G : GraphComplexPackage) (E : GraphComplexEvidence G) :
    GraphComplexClosed G := by
  exact E.squareZeroClosed

end GraphComplexesGraphHomology18g90CanonicalLaneLean
end HautevilleHouse