universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Gary : obj
constant Harry : obj

constant Green : obj → Prop
constant Young : obj → Prop
constant Big : obj → Prop
constant Blue : obj → Prop
constant Nice : obj → Prop
constant Quiet : obj → Prop
constant Smart : obj → Prop

axiom A1 : Green Bob
axiom A2 : Young Bob
axiom A3 : Big Charlie
axiom A4 : Blue Charlie
axiom A5 : Nice Charlie
axiom A6 : Green Gary
axiom A7 : Nice Gary
axiom A8 : Quiet Gary
axiom A9 : Smart Gary
axiom A10 : Blue Harry
axiom A11 : Smart Harry

-- Rule R1: All big things are smart
axiom R1 : ∀ x : obj, Big x → Smart x

-- Rule R2: All green things are big
axiom R2 : ∀ x : obj, Green x → Big x

-- Rule R3: If something is nice then it is young
axiom R3 : ∀ x : obj, Nice x → Young x

-- Rule R4: If something is green and blue then it is nice
axiom R4 : ∀ x : obj, Green x ∧ Blue x → Nice x

-- Rule R5: If Bob is smart and green then Bob is quiet
axiom R5 : Smart Bob ∧ Green Bob → Quiet Bob

-- Rule R6: If Charlie is blue then Charlie is nice
axiom R6 : Blue Charlie → Nice Charlie

-- Rule R7: If something is quiet and smart then it is blue
axiom R7 : ∀ x : obj, Quiet x ∧ Smart x → Blue x

-- Rule R8: Nice and blue things are quiet
axiom R8 : ∀ x : obj, Nice x ∧ Blue x → Quiet x


theorem not_blue_Bob : ¬ Blue Bob :=
begin
  sorry
end


theorem blue_Bob : Blue Bob :=
begin
  sorry
end
