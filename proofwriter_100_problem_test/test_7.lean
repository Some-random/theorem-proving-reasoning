universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Erin : obj
constant Harry : obj

constant Quiet : obj → Prop
constant Smart : obj → Prop
constant Kind : obj → Prop
constant White : obj → Prop
constant Blue : obj → Prop
constant Green : obj → Prop
constant Furry : obj → Prop

axiom T1 : Quiet Bob
axiom T2 : Smart Bob
axiom T3 : Kind Charlie
axiom T4 : Smart Charlie
axiom T5 : White Charlie
axiom T6 : Blue Erin
axiom T7 : Green Harry

axiom R1 : ∀ x : obj, White x ∧ Green x → Smart x
axiom R2 : ∀ x : obj, Smart x ∧ Quiet x → White x
axiom R3 : ∀ x : obj, Quiet x ∧ Kind x → White x
axiom R4 : ∀ x : obj, Kind Erin ∧ Blue Erin → White Erin
axiom R5 : ∀ x : obj, Kind x → Quiet x
axiom R6 : ∀ x : obj, White x → Quiet x
axiom R7 : ∀ x : obj, Green x → Kind x
axiom R8 : ∀ x : obj, White x ∧ Smart x → Furry x

theorem not_white_Harry : ¬ White Harry :=
begin
  sorry
end


theorem white_Harry : White Harry :=
begin
  sorry
end
