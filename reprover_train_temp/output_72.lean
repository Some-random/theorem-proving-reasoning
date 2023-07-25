universe u

constant obj : Type u

constant Erin : obj
constant Fiona : obj
constant Gary : obj
constant Harry : obj

constant Nice : obj → Prop
constant White : obj → Prop
constant Quiet : obj → Prop
constant Cold : obj → Prop
constant Green : obj → Prop
constant Round : obj → Prop
constant Smart : obj → Prop

axiom T1 : Nice Erin
axiom T2 : White Erin
axiom T3 : Quiet Fiona
axiom T4 : White Gary
axiom T5 : Cold Harry
axiom T6 : Green Harry
axiom T7 : Nice Harry
axiom T8 : Quiet Harry
axiom T9 : Round Harry
axiom T10 : White Harry

axiom R1 : ∀ x : obj, Quiet x → Round x
axiom R2 : Round Erin → Green Erin
axiom R3 : ∀ x : obj, Nice x → Cold x
axiom R4 : ∀ x : obj, Quiet x ∧ Nice x → Cold x
axiom R5 : ∀ x : obj, Round x → Nice x
axiom R6 : ∀ x : obj, Cold x → Quiet x
axiom R7 : Quiet Gary → ¬ White Gary
axiom R8 : ∀ x : obj, Nice x ∧ Green x → Smart x

theorem erin_is_smart : Smart Erin :=
begin
  apply R8,
  split,
  exact T1,
  apply R2,
  apply R1,
  apply R6,
  apply R3,
  exact T1,
end

-- The answer is True