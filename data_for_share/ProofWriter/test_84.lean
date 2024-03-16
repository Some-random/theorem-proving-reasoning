universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Charlie : obj
constant Erin : obj

constant Cold : obj → Prop
constant Green : obj → Prop
constant Kind : obj → Prop
constant Quiet : obj → Prop
constant Round : obj → Prop
constant Rough : obj → Prop
constant Furry : obj → Prop

axiom T1 : Cold Anne
axiom T2 : ¬ Green Anne
axiom T3 : ¬ Kind Anne
axiom T4 : Quiet Anne
axiom T5 : Round Anne
axiom T6 : Kind Bob
axiom T7 : Round Bob
axiom T8 : Cold Charlie
axiom T9 : Quiet Charlie
axiom T10 : Round Charlie
axiom T11 : Furry Erin

axiom R1 : ∀ x : obj, Quiet x → Rough x
axiom R2 : ∀ x : obj, Cold x → Round x
axiom R3 : ∀ x : obj, Green x → Quiet x
axiom R4 : ∀ x : obj, Cold x → Quiet x
axiom R5 : ∀ x : obj, Green x → Quiet x
axiom R6 : ∀ x : obj, Kind x ∧ Green x → Furry x
axiom R7 : ∀ x : obj, Furry x → Green x
axiom R8 : ∀ x : obj, Kind Bob → ¬ Rough Bob
axiom R9 : ∀ x : obj, Rough x ∧ Green x → Cold x

theorem erin_is_quiet : Quiet Erin :=
begin
  sorry
end


theorem not_quiet_Erin : ¬ Quiet Erin :=
begin
  sorry
end
