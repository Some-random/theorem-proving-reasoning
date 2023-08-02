universe u

constant obj : Type u

constant Bear : obj
constant Lion : obj
constant Rabbit : obj
constant Squirrel : obj

constant Chases : obj → obj → Prop
constant Cold : obj → Prop
constant Nice : obj → Prop
constant Visits : obj → obj → Prop
constant Red : obj → Prop
constant Green : obj → Prop
constant Likes : obj → obj → Prop

axiom T1 : Chases Bear Lion
axiom T2 : Cold Bear
axiom T3 : Nice Bear
axiom T4 : Visits Bear Rabbit
axiom T5 : Red Lion
axiom T6 : Chases Rabbit Bear
axiom T7 : Green Rabbit
axiom T8 : Chases Squirrel Bear
axiom T9 : Likes Squirrel Bear
axiom T10 : Visits Squirrel Lion

axiom R1 : ∀ x : obj, Chases x Squirrel → Red Squirrel
axiom R2 : ∀ x : obj, Likes x Lion → Chases x Squirrel
axiom R3 : ∀ x : obj, Red x → Likes x Lion
axiom R4 : ∀ x : obj, Nice x ∧ Chases x Lion → Likes x Rabbit
axiom R5 : ∀ x : obj, Likes x Bear ∧ Likes Bear Rabbit → Green Bear
axiom R6 : ∀ x : obj, Visits Squirrel Rabbit ∧ Likes Rabbit Bear → Visits Bear Squirrel

theorem rabbit_likes_bear : Likes Rabbit Bear :=
begin
  sorry
end


theorem not_rabbit_likes_bear : ¬ Likes Rabbit Bear :=
begin
  sorry
end
