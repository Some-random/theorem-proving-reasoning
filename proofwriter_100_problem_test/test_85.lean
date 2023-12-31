universe u

constant obj : Type u

constant Bear : obj
constant Squirrel : obj
constant Rabbit : obj
constant Lion : obj

constant Sees : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Likes : obj → obj → Prop
constant Round : obj → Prop
constant Big : obj → Prop
constant Kind : obj → Prop

axiom T1 : Sees Bear Squirrel
axiom T2 : Visits Bear Rabbit
axiom T3 : ¬ Round Lion
axiom T4 : ¬ Likes Lion Rabbit
axiom T5 : Visits Lion Bear
axiom T6 : ¬ Big Rabbit
axiom T7 : Kind Rabbit
axiom T8 : Likes Rabbit Squirrel
axiom T9 : Sees Rabbit Bear
axiom T10 : ¬ Visits Rabbit Bear
axiom T11 : Visits Squirrel Lion

axiom R1 : ∀ x : obj, Big x ∧ Visits x Lion → Visits Lion Rabbit
axiom R2 : ∀ x : obj, Sees x Lion → ¬ Likes x Lion
axiom R3 : ∀ x : obj, Likes x Squirrel → Visits Squirrel Rabbit
axiom R4 : ∀ x : obj, Sees x Squirrel ∧ Visits x Squirrel → ¬ Sees Squirrel Lion
axiom R5 : ∀ x : obj, Visits x Lion → ¬ Round Lion
axiom R6 : ∀ x : obj, Sees x Lion ∧ ¬ Sees x Bear → Sees x Squirrel
axiom R7 : ∀ x : obj, Visits x Rabbit → Sees x Lion
axiom R8 : ∀ x : obj, Sees x Lion → Big x

theorem not_sees_squirrel_bear : ¬ Sees Squirrel Bear :=
begin
  sorry
end


theorem sees_squirrel_bear : Sees Squirrel Bear :=
begin
  sorry
end
