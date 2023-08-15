universe u

constant obj : Type u

constant Anne : obj
constant Fiona : obj
constant Gary : obj
constant Harry : obj

constant Green : obj → Prop
constant Cold : obj → Prop
constant White : obj → Prop
constant Young : obj → Prop
constant Blue : obj → Prop
constant Red : obj → Prop
constant Rough : obj → Prop

axiom A1 : Green Anne
axiom A2 : Cold Fiona
axiom A3 : White Fiona
axiom A4 : Young Fiona
axiom A5 : Green Gary
axiom A6 : Cold Harry
axiom A7 : Rough Harry

-- Rule R1: All young, cold things are white
axiom R1 : ∀ x : obj, Young x ∧ Cold x → White x

-- Rule R2: If something is cold then it is green
axiom R2 : ∀ x : obj, Cold x → Green x

-- Rule R3: Young things are white
axiom R3 : ∀ x : obj, Young x → White x

-- Rule R4: White things are blue
axiom R4 : ∀ x : obj, White x → Blue x

-- Rule R5: If something is blue then it is red
axiom R5 : ∀ x : obj, Blue x → Red x

-- Rule R6: If something is green then it is young
axiom R6 : ∀ x : obj, Green x → Young x


theorem gary_is_blue : Blue Gary :=
begin
  sorry
end


theorem not_blue_Gary : ¬ Blue Gary :=
begin
  sorry
end
