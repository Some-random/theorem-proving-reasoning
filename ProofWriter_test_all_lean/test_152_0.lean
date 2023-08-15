universe u

constant obj : Type u

constant Anne : obj
constant Erin : obj
constant Fiona : obj
constant Harry : obj

constant Kind : obj → Prop
constant Nice : obj → Prop
constant Quiet : obj → Prop
constant Round : obj → Prop
constant Cold : obj → Prop
constant Rough : obj → Prop
constant Smart : obj → Prop

axiom A1 : Kind Anne
axiom A2 : Nice Anne
axiom A3 : Quiet Anne
axiom A4 : Round Anne
axiom A5 : Cold Erin
axiom A6 : Nice Erin
axiom A7 : Rough Erin
axiom A8 : Smart Erin
axiom A9 : Kind Fiona
axiom A10 : Nice Fiona
axiom A11 : Kind Harry
axiom A12 : Nice Harry
axiom A13 : Quiet Harry
axiom A14 : Rough Harry
axiom A15 : Round Harry
axiom A16 : Smart Harry

-- Rule R1: If someone is rough then they are cold
axiom R1 : ∀ x : obj, Rough x → Cold x

-- Rule R2: If someone is quiet and nice then they are round
axiom R2 : ∀ x : obj, Quiet x ∧ Nice x → Round x

-- Rule R3: If Harry is cold then Harry is rough
axiom R3 : ∀ x : obj, Cold Harry → Rough Harry

-- Rule R4: Rough people are quiet
axiom R4 : ∀ x : obj, Rough x → Quiet x

-- Rule R5: Quiet people are round
axiom R5 : ∀ x : obj, Quiet x → Round x

-- Rule R6: Kind and nice people are quiet
axiom R6 : ∀ x : obj, Kind x ∧ Nice x → Quiet x

-- Rule R7: If someone is round then they are rough
axiom R7 : ∀ x : obj, Round x → Rough x

-- Rule R8: All cold people are nice
axiom R8 : ∀ x : obj, Cold x → Nice x

-- Rule R9: All kind, cold people are smart
axiom R9 : ∀ x : obj, Kind x ∧ Cold x → Smart x


theorem not_rough_Anne : ¬ Rough Anne :=
begin
  sorry
end


theorem rough_Anne : Rough Anne :=
begin
  sorry
end
