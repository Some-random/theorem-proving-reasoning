universe u

constant obj : Type u

constant Bear : obj
constant Cow : obj
constant Lion : obj
constant Tiger : obj

constant Blue : obj → Prop
constant Round : obj → Prop
constant Sees : obj → obj → Prop
constant Rough : obj → Prop
constant Likes : obj → obj → Prop
constant Cold : obj → Prop
constant Chases : obj → obj → Prop

axiom T1 : Blue Bear
axiom T2 : Round Bear
axiom T3 : Sees Bear Cow
axiom T4 : Blue Cow
axiom T5 : Rough Lion
axiom T6 : Likes Lion Tiger
axiom T7 : Sees Lion Bear
axiom T8 : Cold Tiger
axiom T9 : Round Tiger
axiom T10 : Sees Tiger Bear
axiom T11 : Sees Tiger Cow

axiom R1 : ∀ x : obj, Blue x → Likes x Tiger
axiom R2 : Blue Cow → Chases Cow Lion
axiom R3 : ∀ x : obj, Likes x Tiger ∧ Sees Tiger Bear → Chases x Lion
axiom R4 : ∀ x : obj, Likes x Lion → Chases Lion Tiger
axiom R5 : ∀ x : obj, Cold x ∧ Chases Cow Bear → Chases Bear Tiger
axiom R6 : ∀ x : obj, Chases x Cow ∧ Chases x Lion → Chases x Bear
axiom R7 : ∀ x : obj, Rough x → Chases x Cow
axiom R8 : ∀ x : obj, Cold x → Blue x
axiom R9 : ∀ x : obj, Blue x ∧ Chases x Lion → Rough x

theorem bear_chases_bear : Chases Bear Bear :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Bear does not chase Bear

theorem not_bear_chases_bear : ¬ Chases Bear Bear :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean either.
-- The answer is False