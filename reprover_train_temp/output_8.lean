universe u

constant obj : Type u

constant Dave : obj
constant Erin : obj
constant Gary : obj
constant Harry : obj

constant Big : obj → Prop
constant Furry : obj → Prop
constant Green : obj → Prop
constant White : obj → Prop
constant Round : obj → Prop
constant Smart : obj → Prop

axiom T1 : Big Dave
axiom T2 : Big Erin
axiom T3 : Furry Erin
axiom T4 : Green Erin
axiom T5 : White Erin
axiom T6 : Green Gary
axiom T7 : Round Harry

axiom R1 : ∀ x : obj, Big x ∧ Furry x → White x
axiom R2 : ∀ x : obj, Round x → Furry x
axiom R3 : ∀ x : obj, Smart x ∧ Furry x → Round x
axiom R4 : ∀ x : obj, White x ∧ Smart x → Big x
axiom R5 : ∀ x : obj, White x → Smart x
axiom R6 : ∀ x : obj, Furry x → White x
axiom R7 : ∀ x : obj, Green x → Round x

theorem gary_is_big : Big Gary :=
begin
  apply R4,
  split,
  apply R6,
  apply R2,
  apply R7,
  exact T6,
  apply R5,
  apply R6,
  apply R2,
  apply R7,
  exact T6,
end

-- The answer is True