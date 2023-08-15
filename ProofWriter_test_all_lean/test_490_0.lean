universe u

constant obj : Type u

constant Charlie : obj
constant Dave : obj
constant Erin : obj
constant Gary : obj

constant Blue : obj → Prop
constant Quiet : obj → Prop
constant Green : obj → Prop
constant Round : obj → Prop
constant White : obj → Prop
constant Cold : obj → Prop
constant Furry : obj → Prop

axiom A1 : Blue Charlie
axiom A2 : Quiet Charlie
axiom A3 : ¬ Blue Dave
axiom A4 : Green Dave
axiom A5 : Quiet Dave
axiom A6 : Round Dave
axiom A7 : ¬ White Dave
axiom A8 : Blue Erin
axiom A9 : Green Erin
axiom A10 : Quiet Erin
axiom A11 : Green Gary
axiom A12 : Quiet Gary

-- Rule R1: If someone is blue and not quiet then they are round
axiom R1 : ∀ x : obj, Blue x ∧ ¬ Quiet x → Round x

-- Rule R2: If someone is green then they are round
axiom R2 : ∀ x : obj, Green x → Round x

-- Rule R3: Blue, cold people are green
axiom R3 : ∀ x : obj, Blue x ∧ Cold x → Green x

-- Rule R4: All blue people are cold
axiom R4 : ∀ x : obj, Blue x → Cold x

-- Rule R5: If Charlie is not quiet then Charlie is not round
axiom R5 : ¬ Quiet Charlie → ¬ Round Charlie

-- Rule R6: If Gary is blue and Gary is round then Gary is not cold
axiom R6 : Blue Gary ∧ Round Gary → ¬ Cold Gary

-- Rule R7: All round people are not furry
axiom R7 : ∀ x : obj, Round x → ¬ Furry x

-- Rule R8: If someone is cold and not furry then they are white
axiom R8 : ∀ x : obj, Cold x ∧ ¬ Furry x → White x


theorem charlie_is_white : White Charlie :=
begin
  sorry
end


theorem not_white_Charlie : ¬ White Charlie :=
begin
  sorry
end
