universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Fiona : obj
constant Gary : obj

constant Smart : obj → Prop
constant Quiet : obj → Prop
constant Young : obj → Prop
constant Kind : obj → Prop
constant Rough : obj → Prop
constant Blue : obj → Prop
constant Furry : obj → Prop

axiom A1 : Smart Anne
axiom A2 : Quiet Bob
axiom A3 : Young Bob
axiom A4 : ¬ Quiet Fiona
axiom A5 : Kind Gary
axiom A6 : Rough Gary
axiom A7 : Smart Gary

-- Rule R1: Rough and kind people are blue
axiom R1 : ∀ x : obj, Rough x ∧ Kind x → Blue x

-- Rule R2: Young and kind people are rough
axiom R2 : ∀ x : obj, Young x ∧ Kind x → Rough x

-- Rule R3: If someone is furry then they are quiet
axiom R3 : ∀ x : obj, Furry x → Quiet x

-- Rule R4: Furry and young people are quiet
axiom R4 : ∀ x : obj, Furry x ∧ Young x → Quiet x

-- Rule R5: All quiet people are young
axiom R5 : ∀ x : obj, Quiet x → Young x

-- Rule R6: If someone is blue and kind then they are young
axiom R6 : ∀ x : obj, Blue x ∧ Kind x → Young x

-- Rule R7: If someone is smart then they are furry
axiom R7 : ∀ x : obj, Smart x → Furry x

-- Rule R8: If Fiona is blue then Fiona is not kind
axiom R8 : Blue Fiona → ¬ Kind Fiona

-- Rule R9: Young people are kind
axiom R9 : ∀ x : obj, Young x → Kind x


theorem not_young_Bob : ¬ Young Bob :=
begin
  sorry
end


theorem young_Bob : Young Bob :=
begin
  sorry
end
