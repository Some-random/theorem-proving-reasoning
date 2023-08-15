universe u

constant obj : Type u

constant Anne : obj
constant Dave : obj
constant Fiona : obj
constant Gary : obj

constant Cold : obj → Prop
constant Red : obj → Prop
constant Rough : obj → Prop
constant White : obj → Prop
constant Quiet : obj → Prop
constant Green : obj → Prop
constant Young : obj → Prop

axiom A1 : Cold Anne
axiom A2 : Red Anne
axiom A3 : Rough Anne
axiom A4 : ¬ White Anne
axiom A5 : Quiet Dave
axiom A6 : White Dave
axiom A7 : ¬ Quiet Fiona
axiom A8 : Cold Gary
axiom A9 : Quiet Gary
axiom A10 : Red Gary
axiom A11 : Rough Gary
axiom A12 : White Gary

-- Rule R1: If Fiona is white and Fiona is green then Fiona is not quiet
axiom R1 : White Fiona ∧ Green Fiona → ¬ Quiet Fiona

-- Rule R2: All rough things are young
axiom R2 : ∀ x : obj, Rough x → Young x

-- Rule R3: If something is cold then it is red
axiom R3 : ∀ x : obj, Cold x → Red x

-- Rule R4: Young things are cold
axiom R4 : ∀ x : obj, Young x → Cold x

-- Rule R5: If something is quiet and green then it is rough
axiom R5 : ∀ x : obj, Quiet x ∧ Green x → Rough x

-- Rule R6: All quiet things are green
axiom R6 : ∀ x : obj, Quiet x → Green x


theorem fiona_is_white : White Fiona :=
begin
  sorry
end


theorem not_white_Fiona : ¬ White Fiona :=
begin
  sorry
end
