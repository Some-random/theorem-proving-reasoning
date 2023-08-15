universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Erin : obj
constant Gary : obj

constant Blue : obj → Prop
constant Green : obj → Prop
constant White : obj → Prop
constant Young : obj → Prop
constant Rough : obj → Prop
constant Red : obj → Prop
constant Cold : obj → Prop

axiom A1 : Blue Anne
axiom A2 : Rough Anne
axiom A3 : Young Anne
axiom A4 : Blue Bob
axiom A5 : Green Bob
axiom A6 : Blue Erin
axiom A7 : Green Erin
axiom A8 : Rough Erin
axiom A9 : Green Gary
axiom A10 : White Gary

-- Rule R1: All young things are white
axiom R1 : ∀ x : obj, Young x → White x

-- Rule R2: If Anne is green then Anne is young
axiom R2 : Green Anne → Young Anne

-- Rule R3: If something is cold then it is young
axiom R3 : ∀ x : obj, Cold x → Young x

-- Rule R4: All blue, rough things are red
axiom R4 : ∀ x : obj, Blue x ∧ Rough x → Red x

-- Rule R5: All blue things are cold
axiom R5 : ∀ x : obj, Blue x → Cold x

-- Rule R6: All young, rough things are white
axiom R6 : ∀ x : obj, Young x ∧ Rough x → White x

-- Rule R7: If something is young and red then it is green
axiom R7 : ∀ x : obj, Young x ∧ Red x → Green x

-- Rule R8: All white, young things are rough
axiom R8 : ∀ x : obj, White x ∧ Young x → Rough x


theorem not_red_Anne : ¬ Red Anne :=
begin
  sorry
end


theorem red_Anne : Red Anne :=
begin
  sorry
end
