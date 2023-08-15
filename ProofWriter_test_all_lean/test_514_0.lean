universe u

constant obj : Type u

constant Erin : obj
constant Fiona : obj
constant Gary : obj
constant Harry : obj

constant Big : obj → Prop
constant Green : obj → Prop
constant Kind : obj → Prop
constant Quiet : obj → Prop
constant Red : obj → Prop
constant Smart : obj → Prop
constant Rough : obj → Prop

axiom A1 : Big Erin
axiom A2 : Green Erin
axiom A3 : Kind Erin
axiom A4 : Quiet Erin
axiom A5 : Red Erin
axiom A6 : Smart Erin
axiom A7 : Big Fiona
axiom A8 : Rough Gary
axiom A9 : Quiet Harry
axiom A10 : Smart Harry

-- Rule R1: All smart people are kind
axiom R1 : ∀ x : obj, Smart x → Kind x

-- Rule R2: If Harry is rough and red then Harry is quiet
axiom R2 : ∀ x : obj, Rough Harry ∧ Red Harry → Quiet Harry

-- Rule R3: If someone is green then they are smart
axiom R3 : ∀ x : obj, Green x → Smart x

-- Rule R4: All kind people are quiet
axiom R4 : ∀ x : obj, Kind x → Quiet x

-- Rule R5: If someone is rough and big then they are green
axiom R5 : ∀ x : obj, Rough x ∧ Big x → Green x

-- Rule R6: Rough people are big
axiom R6 : ∀ x : obj, Rough x → Big x


theorem erin_is_red : Red Erin :=
begin
  sorry
end


theorem not_red_Erin : ¬ Red Erin :=
begin
  sorry
end
