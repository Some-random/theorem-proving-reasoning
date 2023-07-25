universe u

constant obj : Type u

constant Bob : obj
constant Dave : obj
constant Erin : obj
constant Harry : obj

constant Blue : obj → Prop
constant Round : obj → Prop
constant Nice : obj → Prop
constant Furry : obj → Prop
constant Green : obj → Prop
constant Quiet : obj → Prop
constant Young : obj → Prop

axiom T1 : Blue Bob
axiom T2 : Round Bob
axiom T3 : Blue Dave
axiom T4 : Nice Dave
axiom T5 : Blue Erin
axiom T6 : Furry Erin
axiom T7 : Green Erin
axiom T8 : Nice Erin
axiom T9 : Round Erin
axiom T10 : Green Harry
axiom T11 : Nice Harry
axiom T12 : Quiet Harry
axiom T13 : Round Harry
axiom T14 : Young Harry

axiom R1 : ∀ x : obj, Round x → Green x
axiom R2 : ∀ x : obj, Young x ∧ Furry x → Quiet x
axiom R3 : Round Bob ∧ Nice Bob → Green Bob
axiom R4 : ∀ x : obj, Round x → Blue x
axiom R5 : ∀ x : obj, Blue x ∧ Young x → Furry x
axiom R6 : ∀ x : obj, Nice x → Young x
axiom R7 : ∀ x : obj, Round x ∧ Nice x → Blue x
axiom R8 : ∀ x : obj, Quiet x → Young x
axiom R9 : ∀ x : obj, Quiet x → Round x

theorem dave_is_green : Green Dave :=
begin
  apply R1,
  apply R9,
  apply R2,
  split,
  apply R6,
  exact T4,
  apply R5,
  split,
  exact T3,
  apply R6,
  exact T4,
end

-- The answer is True