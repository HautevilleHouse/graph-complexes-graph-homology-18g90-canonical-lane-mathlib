import GraphComplexesGraphHomology18g90CanonicalLaneLean.GraphHomologySpectralSequence

namespace HautevilleHouse
namespace GraphComplexesGraphHomology18g90CanonicalLaneLean

structure BGGResolutionPackage where
  resolution : Type u
  differentials : ℕ → resolution → resolution
  acyclicity : Prop
  acyclicityTerm : acyclicity

structure BGGResolutionEvidence (B : BGGResolutionPackage) where
  acyclicityClosed : B.acyclicity

def BGGResolutionClosed (B : BGGResolutionPackage) : Prop :=
  B.acyclicity

theorem bgg_resolution_closed_from_evidence (B : BGGResolutionPackage) (E : BGGResolutionEvidence B) : BGGResolutionClosed B :=
  E.acyclicityClosed

end GraphComplexesGraphHomology18g90CanonicalLaneLean
end HautevilleHouse