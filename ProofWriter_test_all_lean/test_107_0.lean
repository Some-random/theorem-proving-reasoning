universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Charlie : obj
constant Gary : obj

constant Big : obj → Prop
constant Rough : obj → Prop
constant Young : obj → Prop
constant Cold : obj → Prop
constant Green : obj → Prop
constant Nice : obj → Prop
constant Quiet : obj → Prop

axiom A1 : Big Anne
axiom A2 : Rough Anne
axiom A3 : Young Anne
axiom A4 : Young Bob
axiom A5 : Cold Charlie
axiom A6 : Green Charlie
axiom A7 : Nice Charlie
axiom A8 : Young Charlie
axiom A9 : Green Gary
axiom A10 : Young Gary

-- Rule R1: Big and quiet people are green
axiom R1 : ∀ x : obj, Big x ∧ Quiet x → Green x

-- Rule R2: If someone is cold and young then they are nice
axiom R2 : ∀ x : obj, Cold x ∧ Young x → Nice x

-- Rule R3: If Bob is rough and green then Bob is cold
axiom R3 : ∀ x : obj, Rough Bob ∧ Green Bob → Cold Bob

-- Rule R4: Green people are nice
axiom R4 : ∀ x : obj, Green x → Nice x

-- Rule R5: All nice people are quiet
axiom R5 : ∀ x : obj, Nice x → Quiet x

-- Rule R6: Young people are cold
axiom R6 : ∀ x : obj, Young x → Cold x

-- Rule R7: If someone is quiet and nice then they are rough
axiom R7 : ∀ x : obj, Quiet x ∧ Nice x → Rough x

-- Rule R8: If someone is rough and young then they are cold
axiom R8 : ∀ x : obj, Rough x ∧ Young x → Cold x

-- Rule R9: All rough, nice people are big
axiom R9 : ∀ x : obj, Rough x ∧ Nice x → Big x


theorem gary_is_rough : Rough Gary :=
begin
  sorry
end


theorem not_rough_Gary : ¬ Rough Gary :=
begin
  sorry
end
