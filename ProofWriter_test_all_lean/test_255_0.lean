universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Dave : obj
constant Erin : obj

constant Kind : obj → Prop
constant Nice : obj → Prop
constant Quiet : obj → Prop
constant Round : obj → Prop
constant Furry : obj → Prop
constant Cold : obj → Prop
constant Young : obj → Prop

axiom A1 : Kind Anne
axiom A2 : Nice Anne
axiom A3 : Quiet Anne
axiom A4 : Round Anne
axiom A5 : ¬ Round Bob
axiom A6 : Furry Dave
axiom A7 : Nice Erin

-- Rule R1: If something is nice then it is quiet
axiom R1 : ∀ x : obj, Nice x → Quiet x

-- Rule R2: All nice, kind things are not young
axiom R2 : ∀ x : obj, Nice x ∧ Kind x → ¬ Young x

-- Rule R3: If something is furry then it is cold
axiom R3 : ∀ x : obj, Furry x → Cold x

-- Rule R4: Quiet, nice things are cold
axiom R4 : ∀ x : obj, Quiet x ∧ Nice x → Cold x

-- Rule R5: If Erin is young then Erin is not kind
axiom R5 : Young Erin → ¬ Kind Erin

-- Rule R6: Furry, quiet things are kind
axiom R6 : ∀ x : obj, Furry x ∧ Quiet x → Kind x

-- Rule R7: All cold things are kind
axiom R7 : ∀ x : obj, Cold x → Kind x

-- Rule R8: If Erin is young then Erin is not quiet
axiom R8 : Young Erin → ¬ Quiet Erin

-- Rule R9: If something is kind and not young then it is round
axiom R9 : ∀ x : obj, Kind x ∧ ¬ Young x → Round x


theorem erin_is_cold : Cold Erin :=
begin
  sorry
end


theorem not_cold_Erin : ¬ Cold Erin :=
begin
  sorry
end
