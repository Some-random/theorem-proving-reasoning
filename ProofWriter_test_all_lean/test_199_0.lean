universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Fiona : obj
constant Gary : obj

constant Cold : obj → Prop
constant Furry : obj → Prop
constant Red : obj → Prop
constant Round : obj → Prop
constant Blue : obj → Prop
constant Quiet : obj → Prop
constant Smart : obj → Prop

axiom A1 : Cold Anne
axiom A2 : ¬ Furry Anne
axiom A3 : Red Anne
axiom A4 : Round Anne
axiom A5 : Red Bob
axiom A6 : ¬ Round Fiona
axiom A7 : Furry Gary

-- Rule R1: If someone is red then they are round
axiom R1 : ∀ x : obj, Red x → Round x

-- Rule R2: Red people are round
axiom R2 : ∀ x : obj, Red x → Round x

-- Rule R3: Furry, blue people are round
axiom R3 : ∀ x : obj, Furry x ∧ Blue x → Round x

-- Rule R4: If someone is cold and not blue then they are not red
axiom R4 : ∀ x : obj, Cold x ∧ ¬ Blue x → ¬ Red x

-- Rule R5: If someone is round and red then they are quiet
axiom R5 : ∀ x : obj, Round x ∧ Red x → Quiet x

-- Rule R6: If someone is cold then they are smart
axiom R6 : ∀ x : obj, Cold x → Smart x

-- Rule R7: If someone is blue and smart then they are not cold
axiom R7 : ∀ x : obj, Blue x ∧ Smart x → ¬ Cold x

-- Rule R8: If someone is quiet and round then they are cold
axiom R8 : ∀ x : obj, Quiet x ∧ Round x → Cold x

-- Rule R9: Round, smart people are not furry
axiom R9 : ∀ x : obj, Round x ∧ Smart x → ¬ Furry x


theorem not_red_Fiona : ¬ Red Fiona :=
begin
  sorry
end


theorem red_Fiona : Red Fiona :=
begin
  sorry
end
