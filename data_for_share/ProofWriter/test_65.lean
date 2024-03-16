universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Fiona : obj
constant Harry : obj

constant Nice : obj → Prop
constant Round : obj → Prop
constant White : obj → Prop
constant Blue : obj → Prop
constant Furry : obj → Prop
constant Smart : obj → Prop
constant Quiet : obj → Prop

axiom T1 : Nice Bob
axiom T2 : Round Bob
axiom T3 : White Bob
axiom T4 : Blue Charlie
axiom T5 : Nice Charlie
axiom T6 : Blue Fiona
axiom T7 : White Harry

axiom R1 : ∀ x : obj, Blue x → Furry x
axiom R2 : ∀ x : obj, Furry x ∧ Nice x → Smart x
axiom R3 : ∀ x : obj, Furry x ∧ White x → Nice x
axiom R4 : ∀ x : obj, White x → Blue x
axiom R5 : ∀ x : obj, Nice x ∧ Smart x → Quiet x
axiom R6 : ∀ x : obj, Round x → White x

theorem bob_is_quiet : Quiet Bob :=
begin
  sorry
end


theorem not_quiet_Bob : ¬ Quiet Bob :=
begin
  sorry
end
