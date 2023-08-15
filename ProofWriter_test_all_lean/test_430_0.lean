universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Dave : obj
constant Fiona : obj

constant Green : obj → Prop
constant Rough : obj → Prop
constant Round : obj → Prop
constant Cold : obj → Prop
constant Kind : obj → Prop
constant Furry : obj → Prop
constant Quiet : obj → Prop

axiom A1 : Green Anne
axiom A2 : Rough Anne
axiom A3 : Green Bob
axiom A4 : Round Bob
axiom A5 : Green Dave
axiom A6 : Rough Dave
axiom A7 : Cold Fiona

-- Rule R1: All kind things are furry
axiom R1 : ∀ x : obj, Kind x → Furry x

-- Rule R2: Green things are round
axiom R2 : ∀ x : obj, Green x → Round x

-- Rule R3: If something is cold then it is kind
axiom R3 : ∀ x : obj, Cold x → Kind x

-- Rule R4: If something is furry then it is green
axiom R4 : ∀ x : obj, Furry x → Green x

-- Rule R5: If Dave is quiet then Dave is not furry
axiom R5 : Quiet Dave → ¬ Furry Dave

-- Rule R6: Round things are not quiet
axiom R6 : ∀ x : obj, Round x → ¬ Quiet x

-- Rule R7: If something is quiet and not kind then it is not rough
axiom R7 : ∀ x : obj, Quiet x ∧ ¬ Kind x → ¬ Rough x

-- Rule R8: All round, cold things are rough
axiom R8 : ∀ x : obj, Round x ∧ Cold x → Rough x


theorem not_kind_Bob : ¬ Kind Bob :=
begin
  sorry
end


theorem kind_Bob : Kind Bob :=
begin
  sorry
end
