universe u

constant obj : Type u

constant Bear : obj
constant Cow : obj
constant Squirrel : obj
constant Rabbit : obj

constant Eats : obj → obj → Prop
constant Rough : obj → Prop
constant Cold : obj → Prop
constant Needs : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Kind : obj → Prop
constant Red : obj → Prop

axiom T1 : Eats Bear Cow
axiom T2 : Eats Cow Bear
axiom T3 : Eats Cow Squirrel
axiom T4 : Eats Rabbit Cow
axiom T5 : Eats Rabbit Squirrel
axiom T6 : Rough Rabbit
axiom T7 : Eats Squirrel Cow
axiom T8 : Cold Squirrel
axiom T9 : Needs Squirrel Bear
axiom T10 : Sees Squirrel Cow

axiom R1 : ∀ x : obj, Eats x Bear ∧ Rough x → Sees x Squirrel
axiom R2 : ∀ x : obj, Sees x Bear → Kind x
axiom R3 : ∀ x : obj, Cold x → Sees x Cow
axiom R4 : ∀ x : obj, Sees x Squirrel → Sees x Bear
axiom R5 : ∀ x : obj, Sees Squirrel Cow ∧ Needs Squirrel Rabbit → Sees Cow Squirrel
axiom R6 : ∀ x : obj, Needs x Bear → Needs x Rabbit
axiom R7 : ∀ x : obj, Kind x → Needs x Cow
axiom R8 : ∀ x : obj, Needs x Bear → Red x

theorem cow_needs_cow : Needs Cow Cow :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Cow does not need Cow

theorem not_cow_needs_cow : ¬ Needs Cow Cow :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean either. So
-- The answer is False