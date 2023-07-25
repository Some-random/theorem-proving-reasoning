universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Erin : obj
constant Gary : obj

constant Big : obj → Prop
constant Cold : obj → Prop
constant Smart : obj → Prop
constant Young : obj → Prop
constant Kind : obj → Prop
constant Furry : obj → Prop
constant Rough : obj → Prop

axiom T1 : Big Bob
axiom T2 : Cold Bob
axiom T3 : Smart Bob
axiom T4 : Young Bob
axiom T5 : Kind Charlie
axiom T6 : Young Charlie
axiom T7 : Big Erin
axiom T8 : Cold Erin
axiom T9 : Furry Erin
axiom T10 : Smart Erin
axiom T11 : Furry Gary
axiom T12 : Smart Gary

axiom R1 : ∀ x : obj, Young x → Smart x
axiom R2 : ∀ x : obj, Furry x → Cold x
axiom R3 : ∀ x : obj, Furry x ∧ Kind x → Rough x
axiom R4 : ∀ x : obj, Rough x → Smart x
axiom R5 : ∀ x : obj, Cold x → Furry x
axiom R6 : ∀ x : obj, Big x → Cold x
axiom R7 : Young Charlie ∧ Smart Charlie → Big Charlie

theorem charlie_is_not_rough : ¬ Rough Charlie :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Charlie is rough

theorem charlie_is_rough : Rough Charlie :=
begin
  apply R3,
  split,
  apply R5,
  apply R6,
  apply R7,
  split,
  exact T6,
  apply R1,
  exact T6,
  exact T5,
end

-- It can be proven in Lean. So
-- The answer is False