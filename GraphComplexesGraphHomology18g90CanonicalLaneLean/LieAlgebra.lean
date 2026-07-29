import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphComplexesGraphHomology18g90CanonicalLaneLean

structure LieAlgebraPackage where
  underlyingVectorSpace : Type u
  bracket : underlyingVectorSpace → underlyingVectorSpace → underlyingVectorSpace
  jacobiIdentity : ∀ x y z : underlyingVectorSpace,
    bracket (bracket x y) z + bracket (bracket y z) x + bracket (bracket z x) y = 0
  anticommutativity : ∀ x y : underlyingVectorSpace, bracket x y = - bracket y x

structure LieAlgebraEvidence (L : LieAlgebraPackage) where
  jacobiIdentityClosed : ∀ x y z : L.underlyingVectorSpace,
    L.bracket (L.bracket x y) z + L.bracket (L.bracket y z) x + L.bracket (L.bracket z x) y = 0
  anticommutativityClosed : ∀ x y : L.underlyingVectorSpace, L.bracket x y = - L.bracket y x

def LieAlgebraClosed (L : LieAlgebraPackage) : Prop :=
  (∀ x y z : L.underlyingVectorSpace,
    L.bracket (L.bracket x y) z + L.bracket (L.bracket y z) x + L.bracket (L.bracket z x) y = 0) ∧
  (∀ x y : L.underlyingVectorSpace, L.bracket x y = - L.bracket y x)

theorem lie_algebra_closed_from_evidence
    (L : LieAlgebraPackage) (E : LieAlgebraEvidence L) :
    LieAlgebraClosed L := by
  exact And.intro E.jacobiIdentityClosed E.anticommutativityClosed

end GraphComplexesGraphHomology18g90CanonicalLaneLean
end HautevilleHouse