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

axiom A1 : Cold Anne
axiom A2 : ¬ Green Anne
axiom A3 : ¬ Kind Anne
axiom A4 : Quiet Anne
axiom A5 : Round Anne
axiom A6 : Kind Bob
axiom A7 : Round Bob
axiom A8 : Cold Charlie
axiom A9 : Quiet Charlie
axiom A10 : Round Charlie
axiom A11 : Furry Erin

-- Rule R1: If something is quiet then it is rough
axiom R1 : ∀ x : obj, Quiet x → Rough x

-- Rule R2: Cold things are round
axiom R2 : ∀ x : obj, Cold x → Round x

-- Rule R3: If something is green then it is quiet
axiom R3 : ∀ x : obj, Green x → Quiet x

-- Rule R4: All cold things are quiet
axiom R4 : ∀ x : obj, Cold x → Quiet x

-- Rule R5: Green things are quiet
axiom R5 : ∀ x : obj, Green x → Quiet x

-- Rule R6: If something is kind and green then it is furry
axiom R6 : ∀ x : obj, Kind x ∧ Green x → Furry x

-- Rule R7: Furry things are green
axiom R7 : ∀ x : obj, Furry x → Green x

-- Rule R8: If Bob is kind then Bob is not rough
axiom R8 : Kind Bob → ¬ Rough Bob

-- Rule R9: If something is rough and green then it is cold
axiom R9 : ∀ x : obj, Rough x ∧ Green x → Cold x


theorem not_quiet_Bob : ¬ Quiet Bob :=
begin
  sorry
end


theorem quiet_Bob : Quiet Bob :=
begin
  sorry
end
