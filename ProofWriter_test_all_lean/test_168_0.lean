universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Dave : obj
constant Harry : obj

constant Quiet : obj → Prop
constant Round : obj → Prop
constant Young : obj → Prop
constant Blue : obj → Prop
constant Smart : obj → Prop
constant Kind : obj → Prop
constant Rough : obj → Prop

axiom A1 : Quiet Anne
axiom A2 : ¬ Round Anne
axiom A3 : Young Anne
axiom A4 : ¬ Quiet Charlie
axiom A5 : Young Charlie
axiom A6 : Blue Dave
axiom A7 : ¬ Smart Dave
axiom A8 : Blue Harry
axiom A9 : Kind Harry
axiom A10 : Young Harry

-- Rule R1: All blue, kind things are rough
axiom R1 : ∀ x : obj, Blue x ∧ Kind x → Rough x

-- Rule R2: Rough, kind things are quiet
axiom R2 : ∀ x : obj, Rough x ∧ Kind x → Quiet x

-- Rule R3: Round things are kind
axiom R3 : ∀ x : obj, Round x → Kind x

-- Rule R4: If Anne is round then Anne is kind
axiom R4 : Round Anne → Kind Anne

-- Rule R5: If Anne is smart and Anne is quiet then Anne is not round
axiom R5 : Smart Anne ∧ Quiet Anne → ¬ Round Anne

-- Rule R6: All blue things are round
axiom R6 : ∀ x : obj, Blue x → Round x

-- Rule R7: If something is kind and not round then it is young
axiom R7 : ∀ x : obj, Kind x ∧ ¬ Round x → Young x

-- Rule R8: If something is quiet and not blue then it is young
axiom R8 : ∀ x : obj, Quiet x ∧ ¬ Blue x → Young x

-- Rule R9: Quiet things are young
axiom R9 : ∀ x : obj, Quiet x → Young x


theorem not_quiet_Harry : ¬ Quiet Harry :=
begin
  sorry
end


theorem quiet_Harry : Quiet Harry :=
begin
  sorry
end
