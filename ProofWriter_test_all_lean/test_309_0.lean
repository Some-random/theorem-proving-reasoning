universe u

constant obj : Type u

constant Charlie : obj
constant Erin : obj
constant Fiona : obj
constant Gary : obj

constant Young : obj → Prop
constant Blue : obj → Prop
constant Kind : obj → Prop
constant White : obj → Prop
constant Furry : obj → Prop
constant Nice : obj → Prop
constant Smart : obj → Prop

axiom A1 : Young Charlie
axiom A2 : Blue Erin
axiom A3 : ¬ Kind Erin
axiom A4 : Blue Fiona
axiom A5 : White Fiona
axiom A6 : Blue Gary
axiom A7 : Kind Gary

-- Rule R1: Furry and nice things are white
axiom R1 : ∀ x : obj, Furry x ∧ Nice x → White x

-- Rule R2: If something is young and blue then it is smart
axiom R2 : ∀ x : obj, Young x ∧ Blue x → Smart x

-- Rule R3: All blue and smart things are furry
axiom R3 : ∀ x : obj, Blue x ∧ Smart x → Furry x

-- Rule R4: All smart and white things are furry
axiom R4 : ∀ x : obj, Smart x ∧ White x → Furry x

-- Rule R5: Young things are nice
axiom R5 : ∀ x : obj, Young x → Nice x

-- Rule R6: If Fiona is smart and young then Fiona is not furry
axiom R6 : ∀ x : obj, Smart Fiona ∧ Young Fiona → ¬ Furry Fiona

-- Rule R7: If Erin is kind then Erin is furry
axiom R7 : ∀ x : obj, Kind Erin → Furry Erin

-- Rule R8: If Gary is smart and white then Gary is not kind
axiom R8 : ∀ x : obj, Smart Gary ∧ White Gary → ¬ Kind Gary

-- Rule R9: If something is nice then it is blue
axiom R9 : ∀ x : obj, Nice x → Blue x


theorem charlie_is_young : Young Charlie :=
begin
  sorry
end


theorem not_young_Charlie : ¬ Young Charlie :=
begin
  sorry
end
