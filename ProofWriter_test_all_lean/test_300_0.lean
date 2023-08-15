universe u

constant obj : Type u

constant Anne : obj
constant Erin : obj
constant Gary : obj
constant Harry : obj

constant Round : obj → Prop
constant Young : obj → Prop
constant Cold : obj → Prop
constant Kind : obj → Prop
constant Quiet : obj → Prop
constant Smart : obj → Prop
constant White : obj → Prop

axiom A1 : Round Anne
axiom A2 : Young Anne
axiom A3 : Cold Erin
axiom A4 : Kind Erin
axiom A5 : Quiet Erin
axiom A6 : Round Erin
axiom A7 : Smart Erin
axiom A8 : White Erin
axiom A9 : Young Erin
axiom A10 : Smart Gary
axiom A11 : Quiet Harry
axiom A12 : Young Harry

-- Rule R1: If someone is white and quiet then they are smart
axiom R1 : ∀ x : obj, White x ∧ Quiet x → Smart x

-- Rule R2: If someone is smart and cold then they are round
axiom R2 : ∀ x : obj, Smart x ∧ Cold x → Round x

-- Rule R3: If someone is kind then they are white
axiom R3 : ∀ x : obj, Kind x → White x

-- Rule R4: Young people are quiet
axiom R4 : ∀ x : obj, Young x → Quiet x

-- Rule R5: Quiet, smart people are round
axiom R5 : ∀ x : obj, Quiet x ∧ Smart x → Round x

-- Rule R6: Kind, quiet people are round
axiom R6 : ∀ x : obj, Kind x ∧ Quiet x → Round x

-- Rule R7: If someone is smart then they are kind
axiom R7 : ∀ x : obj, Smart x → Kind x

-- Rule R8: If someone is kind then they are young
axiom R8 : ∀ x : obj, Kind x → Young x

-- Rule R9: All round, white people are cold
axiom R9 : ∀ x : obj, Round x ∧ White x → Cold x


theorem not_kind_Harry : ¬ Kind Harry :=
begin
  sorry
end


theorem kind_Harry : Kind Harry :=
begin
  sorry
end
