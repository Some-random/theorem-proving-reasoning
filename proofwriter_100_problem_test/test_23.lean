universe u

constant obj : Type u

constant Dave : obj
constant Erin : obj
constant Fiona : obj
constant Gary : obj

constant Cold : obj → Prop
constant Kind : obj → Prop
constant Quiet : obj → Prop
constant Green : obj → Prop
constant Round : obj → Prop
constant Young : obj → Prop

axiom T1 : Cold Dave
axiom T2 : Kind Dave
axiom T3 : Quiet Dave
axiom T4 : Green Erin
axiom T5 : Cold Fiona
axiom T6 : Green Fiona
axiom T7 : Quiet Fiona
axiom T8 : Round Fiona
axiom T9 : Cold Gary
axiom T10 : Kind Gary
axiom T11 : Young Gary

axiom R1 : ∀ x : obj, Kind x → Cold x
axiom R2 : ∀ x : obj, Green x → Quiet x
axiom R3 : ∀ x : obj, Green Erin ∧ Cold Erin → Round Erin
axiom R4 : ∀ x : obj, Cold x ∧ Kind x → Round x
axiom R5 : ∀ x : obj, Quiet x ∧ Kind x → Green x
axiom R6 : ∀ x : obj, Quiet x → Kind x
axiom R7 : ∀ x : obj, Round Erin → Young Erin

theorem gary_is_quiet : Quiet Gary :=
begin
end


theorem not_quiet_Gary : ¬ Quiet Gary :=
begin
end
