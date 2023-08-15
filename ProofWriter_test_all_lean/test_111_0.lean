universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Gary : obj
constant Harry : obj

constant Furry : obj → Prop
constant Blue : obj → Prop
constant Cold : obj → Prop
constant Quiet : obj → Prop
constant Round : obj → Prop
constant Young : obj → Prop
constant Rough : obj → Prop

axiom A1 : Furry Anne
axiom A2 : Furry Bob
axiom A3 : Blue Gary
axiom A4 : Cold Gary
axiom A5 : Furry Gary
axiom A6 : Quiet Gary
axiom A7 : Round Gary
axiom A8 : Blue Harry
axiom A9 : Cold Harry
axiom A10 : Quiet Harry
axiom A11 : Round Harry
axiom A12 : Young Harry

-- Rule R1: Cold and blue things are quiet
axiom R1 : ∀ x : obj, Cold x ∧ Blue x → Quiet x

-- Rule R2: All round, furry things are quiet
axiom R2 : ∀ x : obj, Round x ∧ Furry x → Quiet x

-- Rule R3: If Bob is blue and round then Bob is young
axiom R3 : Blue Bob ∧ Round Bob → Young Bob

-- Rule R4: If something is round then it is blue
axiom R4 : ∀ x : obj, Round x → Blue x

-- Rule R5: If something is young and round then it is blue
axiom R5 : ∀ x : obj, Young x ∧ Round x → Blue x

-- Rule R6: If Harry is quiet and furry then Harry is blue
axiom R6 : Quiet Harry ∧ Furry Harry → Blue Harry

-- Rule R7: Furry things are cold
axiom R7 : ∀ x : obj, Furry x → Cold x

-- Rule R8: Cold things are round
axiom R8 : ∀ x : obj, Cold x → Round x

-- Rule R9: If something is young and furry then it is rough
axiom R9 : ∀ x : obj, Young x ∧ Furry x → Rough x


theorem harry_is_furry : Furry Harry :=
begin
  sorry
end


theorem not_furry_Harry : ¬ Furry Harry :=
begin
  sorry
end
