import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphComplexesGraphHomology18g90CanonicalLaneLean

structure KontsevichGraphPackage where
  vertices : ℕ
  edges : ℕ
  orientation : Set (Fin vertices → Fin vertices)
  weightSystem : (orientation → ℚ) → ℚ
  antiSymmetry : ∀ f : orientation → ℚ, weightSystem f = - weightSystem (λ o => - f o)

structure KontsevichGraphEvidence (K : KontsevichGraphPackage) where
  antiSymmetryClosed : ∀ f : K.orientation → ℚ, K.weightSystem f = - K.weightSystem (λ o => - f o)

def KontsevichGraphClosed (K : KontsevichGraphPackage) : Prop :=
  ∀ f : K.orientation → ℚ, K.weightSystem f = - K.weightSystem (λ o => - f o)

theorem kontsevich_graph_closed_from_evidence
    (K : KontsevichGraphPackage) (E : KontsevichGraphEvidence K) :
    KontsevichGraphClosed K := by
  exact E.antiSymmetryClosed

end GraphComplexesGraphHomology18g90CanonicalLaneLean
end HautevilleHouse