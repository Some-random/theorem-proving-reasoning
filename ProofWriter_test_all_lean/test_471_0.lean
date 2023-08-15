universe u

constant obj : Type u

constant Anne : obj
constant Erin : obj
constant Fiona : obj
constant Gary : obj

constant Kind : obj → Prop
constant Smart : obj → Prop
constant Big : obj → Prop
constant Red : obj → Prop
constant Young : obj → Prop
constant Blue : obj → Prop
constant Round : obj → Prop

axiom A1 : Kind Anne
axiom A2 : Kind Erin
axiom A3 : Smart Erin
axiom A4 : Big Fiona
axiom A5 : Red Fiona
axiom A6 : Smart Fiona
axiom A7 : Big Gary
axiom A8 : Blue Gary
axiom A9 : ¬ Red Gary
axiom A10 : Young Gary

-- Rule R1: Red people are young
axiom R1 : ∀ x : obj, Red x → Young x

-- Rule R2: If Fiona is smart then Fiona is not round
axiom R2 : Smart Fiona → ¬ Round Fiona

-- Rule R3: All round people are red
axiom R3 : ∀ x : obj, Round x → Red x

-- Rule R4: If someone is blue and round then they are not big
axiom R4 : ∀ x : obj, Blue x ∧ Round x → ¬ Big x

-- Rule R5: If Anne is kind then Anne is round
axiom R5 : Kind Anne → Round Anne

-- Rule R6: If Erin is kind then Erin is smart
axiom R6 : Kind Erin → Smart Erin

-- Rule R7: All kind, young people are blue
axiom R7 : ∀ x : obj, Kind x ∧ Young x → Blue x

-- Rule R8: If Fiona is smart then Fiona is big
axiom R8 : Smart Fiona → Big Fiona


theorem anne_is_kind : Kind Anne :=
begin
  sorry
end


theorem not_kind_Anne : ¬ Kind Anne :=
begin
  sorry
end
