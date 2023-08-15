universe u

constant obj : Type u

constant Charlie : obj
constant Dave : obj
constant Gary : obj
constant Harry : obj

constant Nice : obj → Prop
constant Quiet : obj → Prop
constant White : obj → Prop
constant Young : obj → Prop
constant Cold : obj → Prop
constant Furry : obj → Prop

axiom T1 : Nice Charlie
axiom T2 : Quiet Charlie
axiom T3 : White Charlie
axiom T4 : Young Charlie
axiom T5 : ¬ Furry Dave
axiom T6 : Quiet Gary
axiom T7 : Furry Harry

-- If something is nice and cold then it is quiet
axiom R1 : ∀ x : obj, Nice x ∧ Cold x → Quiet x
-- If something is cold then it is young
axiom R2 : ∀ x : obj, Cold x → Young x
-- Quiet, furry things are white
axiom R3 : ∀ x : obj, Quiet x ∧ Furry x → White x
-- All furry things are cold
axiom R4 : ∀ x : obj, Furry x → Cold x
-- If something is young then it is nice
axiom R5 : ∀ x : obj, Young x → Nice x


theorem not_white_Charlie : ¬ White Charlie :=
begin
  sorry
end


theorem white_Charlie : White Charlie :=
begin
  sorry
end
