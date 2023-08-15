universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Erin : obj
constant Gary : obj

constant Blue : obj → Prop
constant White : obj → Prop
constant Green : obj → Prop
constant Quiet : obj → Prop
constant Round : obj → Prop
constant Cold : obj → Prop
constant Big : obj → Prop

axiom A1 : Blue Bob
axiom A2 : White Bob
axiom A3 : Green Charlie
axiom A4 : Quiet Charlie
axiom A5 : Round Charlie
axiom A6 : White Charlie
axiom A7 : Blue Erin
axiom A8 : Cold Erin
axiom A9 : Green Erin
axiom A10 : Big Gary
axiom A11 : Blue Gary
axiom A12 : Cold Gary
axiom A13 : Green Gary
axiom A14 : Quiet Gary
axiom A15 : Round Gary
axiom A16 : White Gary

-- Rule R1: White things are cold
axiom R1 : ∀ x : obj, White x → Cold x

-- Rule R2: If something is blue then it is white
axiom R2 : ∀ x : obj, Blue x → White x

-- Rule R3: If something is cold then it is round
axiom R3 : ∀ x : obj, Cold x → Round x

-- Rule R4: If something is green then it is quiet
axiom R4 : ∀ x : obj, Green x → Quiet x

-- Rule R5: All round, big things are green
axiom R5 : ∀ x : obj, Round x ∧ Big x → Green x

-- Rule R6: If Bob is round then Bob is big
axiom R6 : ∀ x : obj, Round Bob → Big Bob

-- Rule R7: All white, quiet things are big
axiom R7 : ∀ x : obj, White x ∧ Quiet x → Big x

-- Rule R8: If something is big then it is cold
axiom R8 : ∀ x : obj, Big x → Cold x

-- Rule R9: If something is blue and quiet then it is cold
axiom R9 : ∀ x : obj, Blue x ∧ Quiet x → Cold x


theorem not_quiet_Bob : ¬ Quiet Bob :=
begin
  sorry
end


theorem quiet_Bob : Quiet Bob :=
begin
  sorry
end
