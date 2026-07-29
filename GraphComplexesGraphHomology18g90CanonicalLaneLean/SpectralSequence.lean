import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphComplexesGraphHomology18g90CanonicalLaneLean

structure SpectralSequencePackage (H : GraphHomologyPackage) where
  pages : ℕ → Type u
  differentials : (r : ℕ) → pages (r+1) → pages r
  convergence : pages 0 ≅ H.homologyGroups 0
  abutment : Prop

structure SpectralSequenceEvidence {H : GraphHomologyPackage}
    (S : SpectralSequencePackage H) where
  convergenceClosed : S.convergence
  abutmentClosed : S.abutment

def SpectralSequenceClosed {H : GraphHomologyPackage}
    (S : SpectralSequencePackage H) : Prop :=
  S.convergence ∧ S.abutment

theorem spectral_sequence_closed_from_evidence
    {H : GraphHomologyPackage} (S : SpectralSequencePackage H)
    (E : SpectralSequenceEvidence S) : SpectralSequenceClosed S := by
  exact And.intro E.convergenceClosed E.abutmentClosed

end GraphComplexesGraphHomology18g90CanonicalLaneLean
end HautevilleHouse