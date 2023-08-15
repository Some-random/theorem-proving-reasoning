universe u

constant obj : Type u

constant Charlie : obj
constant Dave : obj
constant Gary : obj
constant Harry : obj

constant Nice : obj → Prop
constant Quiet : obj → Prop
constant White : obj → Prop
constant Young : obj → Prop
constant Furry : obj → Prop
constant Cold : obj → Prop
constant Round : obj → Prop

axiom A1 : Nice Charlie
axiom A2 : Quiet Charlie
axiom A3 : White Charlie
axiom A4 : Young Charlie
axiom A5 : ¬ Furry Dave
axiom A6 : Quiet Gary
axiom A7 : Furry Harry

-- Rule R1: If something is nice and cold then it is quiet
axiom R1 : ∀ x : obj, Nice x ∧ Cold x → Quiet x

-- Rule R2: If something is cold then it is young
axiom R2 : ∀ x : obj, Cold x → Young x

-- Rule R3: Quiet and furry things are white
axiom R3 : ∀ x : obj, Quiet x ∧ Furry x → White x

-- Rule R4: All furry things are cold
axiom R4 : ∀ x : obj, Furry x → Cold x

-- Rule R5: If something is young then it is nice
axiom R5 : ∀ x : obj, Young x → Nice x


theorem harry_is_round : Round Harry :=
begin
  sorry
end


theorem not_round_Harry : ¬ Round Harry :=
begin
  sorry
end
