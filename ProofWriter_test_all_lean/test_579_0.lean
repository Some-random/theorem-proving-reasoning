universe u

constant obj : Type u

constant Charlie : obj
constant Dave : obj
constant Erin : obj
constant Harry : obj

constant Round : obj → Prop
constant Young : obj → Prop
constant Rough : obj → Prop
constant Cold : obj → Prop
constant Big : obj → Prop
constant Furry : obj → Prop
constant White : obj → Prop

axiom A1 : Round Charlie
axiom A2 : ¬ Young Charlie
axiom A3 : Rough Dave
axiom A4 : ¬ Young Dave
axiom A5 : Cold Erin
axiom A6 : Young Erin
axiom A7 : Furry Harry

-- Rule R1: Round people are white
axiom R1 : ∀ x : obj, Round x → White x

-- Rule R2: If someone is young then they are white
axiom R2 : ∀ x : obj, Young x → White x

-- Rule R3: All round, rough people are big
axiom R3 : ∀ x : obj, Round x ∧ Rough x → Big x

-- Rule R4: All young, big people are not cold
axiom R4 : ∀ x : obj, Young x ∧ Big x → ¬ Cold x

-- Rule R5: Round, big people are not cold
axiom R5 : ∀ x : obj, Round x ∧ Big x → ¬ Cold x

-- Rule R6: Furry people are round
axiom R6 : ∀ x : obj, Furry x → Round x

-- Rule R7: White, round people are furry
axiom R7 : ∀ x : obj, White x ∧ Round x → Furry x

-- Rule R8: If Dave is furry and Dave is round then Dave is rough
axiom R8 : ∀ x : obj, Furry Dave ∧ Round Dave → Rough Dave

-- Rule R9: If someone is furry then they are rough
axiom R9 : ∀ x : obj, Furry x → Rough x


theorem not_cold_Charlie : ¬ Cold Charlie :=
begin
  sorry
end


theorem cold_Charlie : Cold Charlie :=
begin
  sorry
end
