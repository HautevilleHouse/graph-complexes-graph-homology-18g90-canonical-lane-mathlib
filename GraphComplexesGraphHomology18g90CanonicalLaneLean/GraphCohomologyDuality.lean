import GraphComplexesGraphHomology18g90CanonicalLaneLean.GraphComplexConstruction

namespace HautevilleHouse
namespace GraphComplexesGraphHomology18g90CanonicalLaneLean

structure DualityPackage where
  dualComplex : Type u
  pairing : Type v
  nondegenerate : Prop
  poincareDuality : Prop
  nondegenerateTerm : nondegenerate
  poincareDualityTerm : poincareDuality

structure DualityEvidence (D : DualityPackage) where
  nondegenerateClosed : D.nondegenerate
  poincareDualityClosed : D.poincareDuality

def DualityClosed (D : DualityPackage) : Prop :=
  D.nondegenerate ∧ D.poincareDuality

theorem duality_closed_from_evidence (D : DualityPackage) (E : DualityEvidence D) : DualityClosed D :=
  And.intro E.nondegenerateClosed E.poincareDualityClosed

end GraphComplexesGraphHomology18g90CanonicalLaneLean
end HautevilleHouse