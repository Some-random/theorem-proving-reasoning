universe u

constant obj : Type u

constant Erin : obj
constant Fiona : obj
constant Gary : obj
constant Harry : obj

constant Smart : obj → Prop
constant Quiet : obj → Prop
constant Blue : obj → Prop
constant Kind : obj → Prop
constant Red : obj → Prop
constant Green : obj → Prop
constant Furry : obj → Prop

axiom T1 : Smart Erin
axiom T2 : Quiet Fiona
axiom T3 : Blue Gary
axiom T4 : Kind Gary
axiom T5 : Quiet Gary
axiom T6 : Red Gary
axiom T7 : Smart Harry

axiom R1 : Smart Harry → Kind Harry
axiom R2 : ∀ x : obj, Quiet x ∧ Smart x → Blue x
axiom R3 : ∀ x : obj, Green x ∧ Smart x → ¬ Blue x
axiom R4 : ∀ x : obj, Kind x → Quiet x
axiom R5 : ∀ x : obj, Blue x ∧ Green x → Smart x
axiom R6 : ∀ x : obj, Red x → Furry x
axiom R7 : ∀ x : obj, Smart Harry ∧ Blue Harry → Red Harry

theorem harry_is_furry : Furry Harry :=
begin
  sorry
end


theorem not_furry_Harry : ¬ Furry Harry :=
begin
  sorry
end
