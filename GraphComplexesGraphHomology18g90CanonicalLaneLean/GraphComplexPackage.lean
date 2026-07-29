import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphComplexesGraphHomology18g90CanonicalLaneLean

structure GraphComplexPackage where
  edgeSet : Type u
  vertexSet : Type v
  orientation : Prop
  internalDegree : Prop
  antisymmetry : Prop
  differential : (edgeSet) -> Prop
  edgeSetFinite : Prop
  vertexSetFinite : Prop
  orientationTerm : orientation
  internalDegreeTerm : internalDegree
  antisymmetryTerm : antisymmetry
  differentialTerm : differential

structure GraphComplexEvidence (G : GraphComplexPackage) where
  edgeSetFiniteClosed : G.edgeSetFinite
  vertexSetFiniteClosed : G.vertexSetFinite
  orientationClosed : G.orientation
  internalDegreeClosed : G.internalDegree
  antisymmetryClosed : G.antisymmetry
  differentialClosed : G.differential

def GraphComplexClosed (G : GraphComplexPackage) : Prop :=
  G.edgeSetFinite ∧ G.vertexSetFinite ∧ G.orientation ∧ G.internalDegree ∧ G.antisymmetry ∧ G.differential

theorem graph_complex_closed_from_evidence (G : GraphComplexPackage) (E : GraphComplexEvidence G) : GraphComplexClosed G := by
  exact And.intro E.edgeSetFiniteClosed
    (And.intro E.vertexSetFiniteClosed
      (And.intro E.orientationClosed
        (And.intro E.internalDegreeClosed
          (And.intro E.antisymmetryClosed E.differentialClosed))))

end GraphComplexesGraphHomology18g90CanonicalLaneLean
end HautevilleHouse