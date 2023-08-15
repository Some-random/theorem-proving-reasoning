universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Dave : obj
constant Fiona : obj

constant Red : obj → Prop
constant Nice : obj → Prop
constant Smart : obj → Prop
constant Cold : obj → Prop
constant Big : obj → Prop
constant Green : obj → Prop
constant Rough : obj → Prop

axiom A1 : Red Bob
axiom A2 : Nice Charlie
axiom A3 : Smart Charlie
axiom A4 : Cold Dave
axiom A5 : Smart Dave
axiom A6 : Big Fiona
axiom A7 : Red Fiona

-- Rule R1: All green people are rough
axiom R1 : ∀ x : obj, Green x → Rough x

-- Rule R2: Red and smart people are green
axiom R2 : ∀ x : obj, Red x ∧ Smart x → Green x

-- Rule R3: If Bob is green and rough then Bob is red
axiom R3 : Green Bob ∧ Rough Bob → Red Bob

-- Rule R4: If someone is rough then they are big
axiom R4 : ∀ x : obj, Rough x → Big x

-- Rule R5: If someone is smart and big then they are cold
axiom R5 : ∀ x : obj, Smart x ∧ Big x → Cold x

-- Rule R6: If someone is green and big then they are nice
axiom R6 : ∀ x : obj, Green x ∧ Big x → Nice x

-- Rule R7: All smart and nice people are cold
axiom R7 : ∀ x : obj, Smart x ∧ Nice x → Cold x

-- Rule R8: All nice and rough people are big
axiom R8 : ∀ x : obj, Nice x ∧ Rough x → Big x

-- Rule R9: If Dave is cold then Dave is red
axiom R9 : Cold Dave → Red Dave


theorem not_red_Dave : ¬ Red Dave :=
begin
  sorry
end


theorem red_Dave : Red Dave :=
begin
  sorry
end
