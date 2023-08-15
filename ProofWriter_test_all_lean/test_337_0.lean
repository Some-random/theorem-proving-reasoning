universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Erin : obj
constant Gary : obj

constant Big : obj → Prop
constant Furry : obj → Prop
constant Green : obj → Prop
constant Kind : obj → Prop
constant Red : obj → Prop
constant Round : obj → Prop
constant Blue : obj → Prop

axiom A1 : Big Anne
axiom A2 : Furry Anne
axiom A3 : Green Anne
axiom A4 : ¬ Kind Anne
axiom A5 : Furry Bob
axiom A6 : Green Bob
axiom A7 : Red Bob
axiom A8 : ¬ Blue Erin
axiom A9 : Red Erin
axiom A10 : ¬ Furry Gary

-- Rule R1: Big people are round
axiom R1 : ∀ x : obj, Big x → Round x

-- Rule R2: All blue people are not round
axiom R2 : ∀ x : obj, Blue x → ¬ Round x

-- Rule R3: If someone is big and round then they are green
axiom R3 : ∀ x : obj, Big x ∧ Round x → Green x

-- Rule R4: If Bob is not red then Bob is not big
axiom R4 : ¬ Red Bob → ¬ Big Bob

-- Rule R5: If Bob is round then Bob is big
axiom R5 : Round Bob → Big Bob

-- Rule R6: Red people are kind
axiom R6 : ∀ x : obj, Red x → Kind x

-- Rule R7: If Gary is not blue then Gary is furry
axiom R7 : ¬ Blue Gary → Furry Gary

-- Rule R8: If someone is kind and green then they are furry
axiom R8 : ∀ x : obj, Kind x ∧ Green x → Furry x

-- Rule R9: Kind people are big
axiom R9 : ∀ x : obj, Kind x → Big x


theorem bob_is_round : Round Bob :=
begin
  sorry
end


theorem not_round_Bob : ¬ Round Bob :=
begin
  sorry
end
