import GraphComplexesGraphHomology18g90CanonicalLaneLean.GraphComplexesObjects

namespace HautevilleHouse
namespace GraphComplexesGraphHomology18g90CanonicalLaneLean

structure SpectralSequencePackage where
  page : Nat → Type
  differential : (p q : Nat) → page p → page (p+1)
  pageZeroDefined : Prop
  pageZeroIsChainComplex : Prop
  convergenceCondition : Prop

structure SpectralSequenceEvidence (S : SpectralSequencePackage) where
  pageZeroDefinedClosed : S.pageZeroDefined
  pageZeroIsChainComplexClosed : S.pageZeroIsChainComplex
  convergenceConditionClosed : S.convergenceCondition

def SpectralSequenceClosed (S : SpectralSequencePackage) : Prop :=
  S.pageZeroDefined ∧ S.pageZeroIsChainComplex ∧ S.convergenceCondition

theorem spectral_sequence_closed_from_evidence (S : SpectralSequencePackage) (E : SpectralSequenceEvidence S) :
    SpectralSequenceClosed S := by
  exact And.intro E.pageZeroDefinedClosed
    (And.intro E.pageZeroIsChainComplexClosed E.convergenceConditionClosed)

end GraphComplexesGraphHomology18g90CanonicalLaneLean
end HautevilleHouse