universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Erin : obj
constant Harry : obj

constant Blue : obj → Prop
constant Smart : obj → Prop
constant Green : obj → Prop
constant Round : obj → Prop
constant Rough : obj → Prop
constant Cold : obj → Prop
constant Kind : obj → Prop

axiom T1 : Blue Anne
axiom T2 : Smart Anne
axiom T3 : Green Bob
axiom T4 : Round Bob
axiom T5 : Rough Erin
axiom T6 : Cold Harry
axiom T7 : Kind Harry

axiom R1 : ∀ x : obj, Kind x → Round x
axiom R2 : ∀ x : obj, Rough x → Round x
axiom R3 : ∀ x : obj, Cold x → Round x
axiom R4 : ∀ x : obj, Round x → Cold x
axiom R5 : ∀ x : obj, Kind x → Green x
axiom R6 : ∀ x : obj, Smart x → Rough x
axiom R7 : ∀ x : obj, Cold x ∧ ¬ Blue x → Rough x
axiom R8 : Smart Bob → ¬ Green Bob
axiom R9 : ∀ x : obj, Smart x ∧ Cold x → Kind x

theorem erin_is_smart : Smart Erin :=
begin
  sorry
end


theorem not_smart_Erin : ¬ Smart Erin :=
begin
  sorry
end
