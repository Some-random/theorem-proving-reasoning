universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Fiona : obj
constant Gary : obj

constant Nice : obj → Prop
constant Smart : obj → Prop
constant Green : obj → Prop
constant Blue : obj → Prop
constant Red : obj → Prop
constant Big : obj → Prop
constant Kind : obj → Prop

axiom A1 : Nice Anne
axiom A2 : Smart Anne
axiom A3 : Nice Bob
axiom A4 : Green Fiona
axiom A5 : Nice Fiona
axiom A6 : Blue Gary
axiom A7 : Smart Gary

-- All red things are nice
axiom R1 : ∀ x : obj, Red x → Nice x
-- Big things are kind
axiom R2 : ∀ x : obj, Big x → Kind x
-- If Bob is smart then Bob is green
axiom R3 : Smart Bob → Green Bob
-- Blue things are green
axiom R4 : ∀ x : obj, Blue x → Green x
-- Green, smart things are big
axiom R5 : ∀ x : obj, Green x ∧ Smart x → Big x
-- If something is red and blue then it is big
axiom R6 : ∀ x : obj, Red x ∧ Blue x → Big x
-- Nice things are red
axiom R7 : ∀ x : obj, Nice x → Red x
-- All kind things are red
axiom R8 : ∀ x : obj, Kind x → Red x


theorem bob_is_smart : Smart Bob :=
begin
  sorry
end


theorem not_smart_Bob : ¬ Smart Bob :=
begin
  sorry
end
