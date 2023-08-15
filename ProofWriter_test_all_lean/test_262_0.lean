universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Charlie : obj
constant Gary : obj

constant Big : obj → Prop
constant Furry : obj → Prop
constant Blue : obj → Prop
constant Green : obj → Prop
constant Red : obj → Prop
constant Young : obj → Prop
constant Nice : obj → Prop

axiom A1 : Big Anne
axiom A2 : Furry Anne
axiom A3 : Blue Bob
axiom A4 : Green Bob
axiom A5 : Young Bob
axiom A6 : Furry Charlie
axiom A7 : Green Charlie
axiom A8 : Red Charlie
axiom A9 : Furry Gary
axiom A10 : Green Gary
axiom A11 : Young Gary

-- Rule R1: Furry and green things are blue
axiom R1 : ∀ x : obj, Furry x ∧ Green x → Blue x

-- Rule R2: All big things are green
axiom R2 : ∀ x : obj, Big x → Green x

-- Rule R3: Red and furry things are blue
axiom R3 : ∀ x : obj, Red x ∧ Furry x → Blue x

-- Rule R4: All big and blue things are nice
axiom R4 : ∀ x : obj, Big x ∧ Blue x → Nice x

-- Rule R5: If Bob is nice and big then Bob is red
axiom R5 : ∀ x : obj, Nice Bob ∧ Big Bob → Red Bob

-- Rule R6: If Gary is furry then Gary is blue
axiom R6 : ∀ x : obj, Furry Gary → Blue Gary

-- Rule R7: All nice and big things are young
axiom R7 : ∀ x : obj, Nice x ∧ Big x → Young x

-- Rule R8: All nice things are young
axiom R8 : ∀ x : obj, Nice x → Young x

-- Rule R9: Blue and young things are red
axiom R9 : ∀ x : obj, Blue x ∧ Young x → Red x


theorem gary_is_red : Red Gary :=
begin
  sorry
end


theorem not_red_Gary : ¬ Red Gary :=
begin
  sorry
end
