universe u

constant obj : Type u

constant Charlie : obj
constant Erin : obj
constant Fiona : obj
constant Harry : obj

constant Green : obj → Prop
constant Kind : obj → Prop
constant Nice : obj → Prop
constant Rough : obj → Prop
constant Quiet : obj → Prop
constant Smart : obj → Prop
constant Blue : obj → Prop

axiom A1 : Green Charlie
axiom A2 : Kind Charlie
axiom A3 : Nice Charlie
axiom A4 : Rough Charlie
axiom A5 : Kind Erin
axiom A6 : Nice Erin
axiom A7 : Quiet Erin
axiom A8 : Quiet Fiona
axiom A9 : Rough Fiona
axiom A10 : Smart Harry

-- Rule R1: All rough, green people are quiet
axiom R1 : ∀ x : obj, Rough x ∧ Green x → Quiet x

-- Rule R2: If someone is green and rough then they are nice
axiom R2 : ∀ x : obj, Green x ∧ Rough x → Nice x

-- Rule R3: All kind, smart people are green
axiom R3 : ∀ x : obj, Kind x ∧ Smart x → Green x

-- Rule R4: If Erin is green and Erin is blue then Erin is quiet
axiom R4 : Green Erin ∧ Blue Erin → Quiet Erin

-- Rule R5: All quiet people are smart
axiom R5 : ∀ x : obj, Quiet x → Smart x

-- Rule R6: All kind people are green
axiom R6 : ∀ x : obj, Kind x → Green x

-- Rule R7: If someone is smart then they are kind
axiom R7 : ∀ x : obj, Smart x → Kind x

-- Rule R8: All rough, nice people are blue
axiom R8 : ∀ x : obj, Rough x ∧ Nice x → Blue x


theorem not_quiet_Charlie : ¬ Quiet Charlie :=
begin
  sorry
end


theorem quiet_Charlie : Quiet Charlie :=
begin
  sorry
end
