universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Dave : obj
constant Harry : obj

constant Big : obj → Prop
constant Blue : obj → Prop
constant Rough : obj → Prop
constant Cold : obj → Prop
constant Green : obj → Prop
constant White : obj → Prop
constant Young : obj → Prop

axiom A1 : Big Anne
axiom A2 : Blue Anne
axiom A3 : Rough Anne
axiom A4 : Cold Bob
axiom A5 : Green Bob
axiom A6 : Rough Bob
axiom A7 : White Bob
axiom A8 : Blue Dave
axiom A9 : White Dave
axiom A10 : Young Harry

-- Rule R1: If Bob is big then Bob is white
axiom R1 : Big Bob → White Bob

-- Rule R2: Young people are white
axiom R2 : ∀ x : obj, Young x → White x

-- Rule R3: Cold, young people are rough
axiom R3 : ∀ x : obj, Cold x ∧ Young x → Rough x

-- Rule R4: If Anne is green and Anne is young then Anne is white
axiom R4 : Green Anne ∧ Young Anne → White Anne

-- Rule R5: White, big people are blue
axiom R5 : ∀ x : obj, White x ∧ Big x → Blue x

-- Rule R6: All blue people are green
axiom R6 : ∀ x : obj, Blue x → Green x

-- Rule R7: If someone is young and white then they are big
axiom R7 : ∀ x : obj, Young x ∧ White x → Big x

-- Rule R8: Blue people are cold
axiom R8 : ∀ x : obj, Blue x → Cold x


theorem not_big_Anne : ¬ Big Anne :=
begin
  sorry
end


theorem big_Anne : Big Anne :=
begin
  sorry
end
