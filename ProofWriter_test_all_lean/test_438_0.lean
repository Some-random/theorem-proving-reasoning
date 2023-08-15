universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Charlie : obj
constant Erin : obj

constant Cold : obj → Prop
constant Round : obj → Prop
constant Big : obj → Prop
constant Nice : obj → Prop
constant Young : obj → Prop
constant Quiet : obj → Prop
constant Rough : obj → Prop

axiom A1 : Cold Anne
axiom A2 : Round Anne
axiom A3 : Big Bob
axiom A4 : Cold Charlie
axiom A5 : Nice Charlie
axiom A6 : Round Charlie
axiom A7 : Young Charlie
axiom A8 : Nice Erin
axiom A9 : ¬ Rough Erin
axiom A10 : Round Erin

-- Rule R1: If Charlie is cold then Charlie is not quiet
axiom R1 : ∀ x : obj, Cold Charlie → ¬ Quiet Charlie

-- Rule R2: If someone is cold and quiet then they are not big
axiom R2 : ∀ x : obj, Cold x ∧ Quiet x → ¬ Big x

-- Rule R3: All young, quiet people are not big
axiom R3 : ∀ x : obj, Young x ∧ Quiet x → ¬ Big x

-- Rule R4: Cold, big people are round
axiom R4 : ∀ x : obj, Cold x ∧ Big x → Round x

-- Rule R5: If Bob is round then Bob is nice
axiom R5 : ∀ x : obj, Round Bob → Nice Bob

-- Rule R6: If someone is nice and young then they are rough
axiom R6 : ∀ x : obj, Nice x ∧ Young x → Rough x

-- Rule R7: Big people are young
axiom R7 : ∀ x : obj, Big x → Young x

-- Rule R8: Young people are cold
axiom R8 : ∀ x : obj, Young x → Cold x


theorem not_rough_Bob : ¬ Rough Bob :=
begin
  sorry
end


theorem rough_Bob : Rough Bob :=
begin
  sorry
end
