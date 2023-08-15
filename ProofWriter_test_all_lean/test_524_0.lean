universe u

constant obj : Type u

constant Bob : obj
constant Dave : obj
constant Erin : obj
constant Gary : obj

constant Nice : obj → Prop
constant Round : obj → Prop
constant Young : obj → Prop
constant Big : obj → Prop
constant Red : obj → Prop
constant White : obj → Prop
constant Quiet : obj → Prop

axiom A1 : Nice Bob
axiom A2 : Round Bob
axiom A3 : Young Bob
axiom A4 : Round Dave
axiom A5 : Big Erin
axiom A6 : Red Erin
axiom A7 : Young Gary

-- Rule R1: All round things are nice
axiom R1 : ∀ x : obj, Round x → Nice x

-- Rule R2: All nice, big things are white
axiom R2 : ∀ x : obj, Nice x ∧ Big x → White x

-- Rule R3: If something is big and white then it is round
axiom R3 : ∀ x : obj, Big x ∧ White x → Round x

-- Rule R4: Young things are nice
axiom R4 : ∀ x : obj, Young x → Nice x

-- Rule R5: Big, red things are young
axiom R5 : ∀ x : obj, Big x ∧ Red x → Young x

-- Rule R6: All nice things are quiet
axiom R6 : ∀ x : obj, Nice x → Quiet x

-- Rule R7: All quiet things are big
axiom R7 : ∀ x : obj, Quiet x → Big x

-- Rule R8: Young, quiet things are red
axiom R8 : ∀ x : obj, Young x ∧ Quiet x → Red x


theorem gary_is_big : Big Gary :=
begin
  sorry
end


theorem not_big_Gary : ¬ Big Gary :=
begin
  sorry
end
