import GraphComplexesGraphHomology18g90CanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GraphComplexesGraphHomology18g90CanonicalLaneLean

structure GraphComplexPackage where
  targetDimension : ℕ
  graphSpecies : Type u
  chainComplex : Type v
  differential : chainComplex → chainComplex
  homologyGroups : Type w
  invarianceUnderGraphHomotopy : Prop
  invarianceUnderGraphHomotopyTerm : invarianceUnderGraphHomotopy

structure GraphComplexEvidence (G : GraphComplexPackage) where
  differentialSquaresToZero : Prop
  homologyWellDefined : Prop
  invarianceClosed : G.invarianceUnderGraphHomotopy

def GraphComplexClosed (G : GraphComplexPackage) : Prop :=
  G.invarianceUnderGraphHomotopy

theorem graph_complex_closed_from_evidence (G : GraphComplexPackage) (E : GraphComplexEvidence G) : GraphComplexClosed G :=
  E.invarianceClosed

end GraphComplexesGraphHomology18g90CanonicalLaneLean
end HautevilleHouse