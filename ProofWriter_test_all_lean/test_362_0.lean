universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Gary : obj
constant Harry : obj

constant Big : obj → Prop
constant Blue : obj → Prop
constant Cold : obj → Prop
constant Red : obj → Prop
constant Rough : obj → Prop
constant Green : obj → Prop
constant Quiet : obj → Prop

axiom A1 : Big Bob
axiom A2 : Blue Bob
axiom A3 : Cold Bob
axiom A4 : Red Bob
axiom A5 : Rough Bob
axiom A6 : ¬ Cold Charlie
axiom A7 : Green Charlie
axiom A8 : Blue Gary
axiom A9 : Cold Harry
axiom A10 : Rough Harry

-- Rule R1: If someone is quiet and blue then they are big
axiom R1 : ∀ x : obj, Quiet x ∧ Blue x → Big x

-- Rule R2: If someone is rough and quiet then they are red
axiom R2 : ∀ x : obj, Rough x ∧ Quiet x → Red x

-- Rule R3: Green people are rough
axiom R3 : ∀ x : obj, Green x → Rough x

-- Rule R4: If someone is big and blue then they are green
axiom R4 : ∀ x : obj, Big x ∧ Blue x → Green x

-- Rule R5: Blue people are quiet
axiom R5 : ∀ x : obj, Blue x → Quiet x

-- Rule R6: If Gary is not blue then Gary is big
axiom R6 : ∀ x : obj, ¬ Blue Gary → Big Gary


theorem not_blue_Bob : ¬ Blue Bob :=
begin
  sorry
end


theorem blue_Bob : Blue Bob :=
begin
  sorry
end
