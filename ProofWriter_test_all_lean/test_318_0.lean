universe u

constant obj : Type u

constant Erin : obj
constant Fiona : obj
constant Gary : obj
constant Harry : obj

constant Smart : obj → Prop
constant Quiet : obj → Prop
constant Blue : obj → Prop
constant Kind : obj → Prop
constant Red : obj → Prop
constant Green : obj → Prop
constant Furry : obj → Prop

axiom A1 : Smart Erin
axiom A2 : Quiet Fiona
axiom A3 : Blue Gary
axiom A4 : Kind Gary
axiom A5 : Quiet Gary
axiom A6 : Red Gary
axiom A7 : Smart Harry

-- Rule R1: If Harry is smart then Harry is kind
axiom R1 : ∀ x : obj, Smart Harry → Kind Harry

-- Rule R2: Quiet and smart things are blue
axiom R2 : ∀ x : obj, Quiet x ∧ Smart x → Blue x

-- Rule R3: If something is green and smart then it is not blue
axiom R3 : ∀ x : obj, Green x ∧ Smart x → ¬ Blue x

-- Rule R4: Kind things are quiet
axiom R4 : ∀ x : obj, Kind x → Quiet x

-- Rule R5: All blue and green things are smart
axiom R5 : ∀ x : obj, Blue x ∧ Green x → Smart x

-- Rule R6: Red things are furry
axiom R6 : ∀ x : obj, Red x → Furry x

-- Rule R7: If Harry is smart and blue then Harry is red
axiom R7 : ∀ x : obj, Smart Harry ∧ Blue Harry → Red Harry


theorem not_kind_Erin : ¬ Kind Erin :=
begin
  sorry
end


theorem kind_Erin : Kind Erin :=
begin
  sorry
end
