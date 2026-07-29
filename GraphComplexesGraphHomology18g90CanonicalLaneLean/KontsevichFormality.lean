import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphComplexesGraphHomology18g90CanonicalLaneLean

structure KontsevichFormalityPackage {G : GraphComplexPackage} {C : ChainComplexPackage G} {S : SpectralSequencePackage G C} where
  L_infinityStructure : Prop
  quasiIsomorphismToChevalleyEilenberg : Prop
  formalityTheorem : Prop
  L_infinityStructureTerm : L_infinityStructure
  quasiIsomorphismToChevalleyEilenbergTerm : quasiIsomorphismToChevalleyEilenberg
  formalityTheoremTerm : formalityTheorem

structure KontsevichFormalityEvidence {G : GraphComplexPackage} {C : ChainComplexPackage G} {S : SpectralSequencePackage G C} (K : KontsevichFormalityPackage G C S) where
  L_infinityStructureClosed : K.L_infinityStructure
  quasiIsomorphismToChevalleyEilenbergClosed : K.quasiIsomorphismToChevalleyEilenberg
  formalityTheoremClosed : K.formalityTheorem

def KontsevichFormalityClosed {G : GraphComplexPackage} {C : ChainComplexPackage G} {S : SpectralSequencePackage G C} (K : KontsevichFormalityPackage G C S) : Prop :=
  K.L_infinityStructure ∧ K.quasiIsomorphismToChevalleyEilenberg ∧ K.formalityTheorem

theorem kontsevich_formality_closed_from_evidence {G : GraphComplexPackage} {C : ChainComplexPackage G} {S : SpectralSequencePackage G C} (K : KontsevichFormalityPackage G C S) (E : KontsevichFormalityEvidence K) : KontsevichFormalityClosed K := by
  exact And.intro E.L_infinityStructureClosed (And.intro E.quasiIsomorphismToChevalleyEilenbergClosed E.formalityTheoremClosed)

end GraphComplexesGraphHomology18g90CanonicalLaneLean
end HautevilleHouse