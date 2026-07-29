import GraphComplexesGraphHomology18g90CanonicalLaneLean.GraphComplexesObjects

namespace HautevilleHouse
namespace GraphComplexesGraphHomology18g90CanonicalLaneLean

structure GraphHomologyLattice where
  objects : Type
  morphisms : objects → objects → Type
  composition : {A B C : objects} → morphisms A B → morphisms B C → morphisms A C
  identity : (A : objects) → morphisms A A
  associativity : Prop
  identityLaw : Prop
  abelian : Prop

structure LatticePackage where
  lattice : GraphHomologyLattice
  inclusionMaps : Nat → GraphHomologyLattice.morphisms
  limitsExist : Prop
  colimitsExist : Prop

structure LatticeEvidence (L : LatticePackage) where
  associativityClosed : L.lattice.associativity
  identityLawClosed : L.lattice.identityLaw
  abelianClosed : L.lattice.abelian
  limitsExistClosed : L.limitsExist
  colimitsExistClosed : L.colimitsExist

def LatticeClosed (L : LatticePackage) : Prop :=
  L.lattice.associativity ∧ L.lattice.identityLaw ∧ L.lattice.abelian ∧
  L.limitsExist ∧ L.colimitsExist

theorem lattice_closed_from_evidence (L : LatticePackage) (E : LatticeEvidence L) :
    LatticeClosed L := by
  exact And.intro E.associativityClosed
    (And.intro E.identityLawClosed
      (And.intro E.abelianClosed
        (And.intro E.limitsExistClosed E.colimitsExistClosed)))

end GraphComplexesGraphHomology18g90CanonicalLaneLean
end HautevilleHouse