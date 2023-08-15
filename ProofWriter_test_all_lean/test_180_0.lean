universe u

constant obj : Type u

constant Bob : obj
constant Dave : obj
constant Gary : obj
constant Harry : obj

constant Big : obj → Prop
constant Nice : obj → Prop
constant Quiet : obj → Prop
constant Green : obj → Prop
constant Red : obj → Prop
constant Round : obj → Prop
constant Smart : obj → Prop

axiom A1 : Big Bob
axiom A2 : Nice Bob
axiom A3 : Quiet Bob
axiom A4 : Green Dave
axiom A5 : Quiet Dave
axiom A6 : Green Gary
axiom A7 : Red Gary
axiom A8 : Round Gary
axiom A9 : Green Harry
axiom A10 : Red Harry
axiom A11 : Round Harry

-- Rule R1: Nice and quiet people are big
axiom R1 : ∀ x : obj, Nice x ∧ Quiet x → Big x

-- Rule R2: If someone is red and round then they are smart
axiom R2 : ∀ x : obj, Red x ∧ Round x → Smart x

-- Rule R3: All quiet people are round
axiom R3 : ∀ x : obj, Quiet x → Round x

-- Rule R4: If someone is big and nice then they are quiet
axiom R4 : ∀ x : obj, Big x ∧ Nice x → Quiet x

-- Rule R5: If someone is big and red then they are nice
axiom R5 : ∀ x : obj, Big x ∧ Red x → Nice x

-- Rule R6: If someone is quiet and round then they are red
axiom R6 : ∀ x : obj, Quiet x ∧ Round x → Red x

-- Rule R7: If Bob is green then Bob is big
axiom R7 : ∀ x : obj, Green Bob → Big Bob

-- Rule R8: All quiet, smart people are nice
axiom R8 : ∀ x : obj, Quiet x ∧ Smart x → Nice x


theorem not_nice_Dave : ¬ Nice Dave :=
begin
  sorry
end


theorem nice_Dave : Nice Dave :=
begin
  sorry
end
