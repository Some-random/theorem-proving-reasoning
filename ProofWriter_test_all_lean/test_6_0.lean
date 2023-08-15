universe u

constant obj : Type u

constant Charlie : obj
constant Dave : obj
constant Erin : obj
constant Harry : obj

constant Green : obj → Prop
constant Quiet : obj → Prop
constant Red : obj → Prop
constant White : obj → Prop
constant Big : obj → Prop
constant Cold : obj → Prop
constant Blue : obj → Prop

axiom A1 : Green Charlie
axiom A2 : Quiet Dave
axiom A3 : Red Dave
axiom A4 : ¬ White Dave
axiom A5 : ¬ Big Erin
axiom A6 : ¬ Cold Erin
axiom A7 : Green Erin
axiom A8 : Big Harry
axiom A9 : Cold Harry
axiom A10 : Green Harry

-- Rule R1: If someone is red then they are not white
axiom R1 : ∀ x : obj, Red x → ¬ White x

-- Rule R2: If Charlie is quiet then Charlie is blue
axiom R2 : Quiet Charlie → Blue Charlie

-- Rule R3: If someone is quiet and red then they are blue
axiom R3 : ∀ x : obj, Quiet x ∧ Red x → Blue x

-- Rule R4: All white people are cold
axiom R4 : ∀ x : obj, White x → Cold x

-- Rule R5: All green people are quiet
axiom R5 : ∀ x : obj, Green x → Quiet x

-- Rule R6: All blue, green people are red
axiom R6 : ∀ x : obj, Blue x ∧ Green x → Red x

-- Rule R7: If someone is red and not white then they are big
axiom R7 : ∀ x : obj, Red x ∧ ¬ White x → Big x


theorem not_red_Charlie : ¬ Red Charlie :=
begin
  sorry
end


theorem red_Charlie : Red Charlie :=
begin
  sorry
end
