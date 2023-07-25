universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Dave : obj
constant Gary : obj

constant Red : obj → Prop
constant White : obj → Prop
constant Big : obj → Prop
constant Furry : obj → Prop
constant Green : obj → Prop
constant Young : obj → Prop
constant Rough : obj → Prop

axiom T1 : Red Anne
axiom T2 : White Anne
axiom T3 : Big Charlie
axiom T4 : Red Charlie
axiom T5 : White Charlie
axiom T6 : Furry Dave
axiom T7 : Big Gary
axiom T8 : Furry Gary
axiom T9 : Green Gary
axiom T10 : Young Gary

axiom R1 : ∀ x : obj, Big x ∧ Rough x → Green x
axiom R2 : ∀ x : obj, Green x → White x
axiom R3 : ∀ x : obj, Big x → Young x
axiom R4 : ∀ x : obj, White x → Young x
axiom R5 : ∀ x : obj, Furry x → Big x
axiom R6 : ∀ x : obj, Red x ∧ Green x → Young x
axiom R7 : ∀ x : obj, Young x → Rough x

theorem dave_is_not_white : ¬ White Dave :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Dave is white

theorem dave_is_white : White Dave :=
begin
  apply R2,
  apply R1,
  split,
  apply R5,
  exact T6,
  apply R7,
  apply R3,
  apply R5,
  exact T6,
end

-- It can be proven in Lean. So
-- The answer is False