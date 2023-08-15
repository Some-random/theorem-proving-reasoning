universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Dave : obj
constant Gary : obj

constant Rough : obj → Prop
constant Nice : obj → Prop
constant White : obj → Prop
constant Round : obj → Prop
constant Cold : obj → Prop
constant Quiet : obj → Prop
constant Young : obj → Prop

axiom T1 : Rough Bob
axiom T2 : Nice Charlie
axiom T3 : Rough Charlie
axiom T4 : White Charlie
axiom T5 : ¬ White Dave
axiom T6 : Cold Gary
axiom T7 : Quiet Gary

-- Rough, white things are quiet
axiom R1 : ∀ x : obj, Rough x ∧ White x → Quiet x
-- If Charlie is round and Charlie is quiet then Charlie is rough
axiom R2 : Round Charlie ∧ Quiet Charlie → Rough Charlie
-- All young things are round
axiom R3 : ∀ x : obj, Young x → Round x
-- Nice things are white
axiom R4 : ∀ x : obj, Nice x → White x
-- Rough, nice things are cold
axiom R5 : ∀ x : obj, Rough x ∧ Nice x → Cold x
-- If something is round and rough then it is nice
axiom R6 : ∀ x : obj, Round x ∧ Rough x → Nice x
-- If something is rough then it is young
axiom R7 : ∀ x : obj, Rough x → Young x


theorem charlie_is_quiet : Quiet Charlie :=
begin
  sorry
end


theorem not_quiet_Charlie : ¬ Quiet Charlie :=
begin
  sorry
end
