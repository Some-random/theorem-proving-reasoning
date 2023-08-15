universe u

constant obj : Type u

constant Bob : obj
constant Dave : obj
constant Fiona : obj
constant Harry : obj

constant Big : obj → Prop
constant Blue : obj → Prop
constant Cold : obj → Prop
constant Quiet : obj → Prop
constant Rough : obj → Prop
constant Smart : obj → Prop
constant White : obj → Prop

axiom A1 : Big Bob
axiom A2 : Blue Bob
axiom A3 : Cold Bob
axiom A4 : Quiet Bob
axiom A5 : Rough Bob
axiom A6 : Smart Bob
axiom A7 : White Bob
axiom A8 : Rough Dave
axiom A9 : Blue Fiona
axiom A10 : Big Harry
axiom A11 : Cold Harry

-- Rule R1: If someone is blue then they are cold
axiom R1 : ∀ x : obj, Blue x → Cold x

-- Rule R2: If someone is big then they are white
axiom R2 : ∀ x : obj, Big x → White x

-- Rule R3: If Bob is rough and blue then Bob is big
axiom R3 : ∀ x : obj, Rough Bob ∧ Blue Bob → Big Bob

-- Rule R4: All blue, smart people are big
axiom R4 : ∀ x : obj, Blue x ∧ Smart x → Big x

-- Rule R5: If someone is blue and rough then they are quiet
axiom R5 : ∀ x : obj, Blue x ∧ Rough x → Quiet x

-- Rule R6: All smart people are blue
axiom R6 : ∀ x : obj, Smart x → Blue x

-- Rule R7: Cold people are rough
axiom R7 : ∀ x : obj, Cold x → Rough x

-- Rule R8: If someone is quiet then they are big
axiom R8 : ∀ x : obj, Quiet x → Big x


theorem fiona_is_big : Big Fiona :=
begin
  sorry
end


theorem not_big_Fiona : ¬ Big Fiona :=
begin
  sorry
end
