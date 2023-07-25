universe u

constant obj : Type u

constant Charlie : obj
constant Erin : obj
constant Fiona : obj
constant Gary : obj

constant Furry : obj → Prop
constant Green : obj → Prop
constant Round : obj → Prop
constant Blue : obj → Prop
constant White : obj → Prop
constant Red : obj → Prop
constant Smart : obj → Prop

axiom T1 : Furry Charlie
axiom T2 : Furry Erin
axiom T3 : Green Erin
axiom T4 : Round Erin
axiom T5 : Blue Fiona
axiom T6 : Furry Fiona
axiom T7 : Smart Gary

axiom R1 : ∀ x : obj, White x → Round x
axiom R2 : ∀ x : obj, Furry x ∧ Blue x → White x
axiom R3 : ∀ x : obj, Blue x ∧ Round x → Red x
axiom R4 : ∀ x : obj, Furry x → Blue x
axiom R5 : Red Charlie → Green Charlie

theorem charlie_is_green : Green Charlie :=
begin
  apply R5,
  apply R3,
  split,
  apply R4,
  exact T1,
  apply R1,
  apply R2,
  split,
  exact T1,
  apply R4,
  exact T1,
end

-- The answer is True