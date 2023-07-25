universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Gary : obj
constant Harry : obj

constant Blue : obj → Prop
constant Green : obj → Prop
constant Young : obj → Prop
constant White : obj → Prop
constant Big : obj → Prop
constant Furry : obj → Prop
constant Red : obj → Prop

axiom T1 : Blue Bob
axiom T2 : Green Bob
axiom T3 : Young Bob
axiom T4 : White Charlie
axiom T5 : White Gary
axiom T6 : Young Gary
axiom T7 : Big Harry
axiom T8 : Furry Harry
axiom T9 : Red Harry
axiom T10 : White Harry

axiom R1 : ∀ x : obj, Red x → Blue x
axiom R2 : ∀ x : obj, Big x ∧ White x → Green x
axiom R3 : ∀ x : obj, Green x ∧ Red x → Big x
axiom R4 : ∀ x : obj, Blue x → Big x
axiom R5 : ∀ x : obj, White x → Furry x
axiom R6 : ∀ x : obj, Furry x → Red x

theorem gary_is_not_green : ¬ Green Gary :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Gary is green

theorem gary_is_green : Green Gary :=
begin
  apply R2,
  split,
  apply R4,
  apply R1,
  apply R6,
  apply R5,
  exact T5,
  exact T5,
end

-- It can be proven in Lean. So
-- The answer is False