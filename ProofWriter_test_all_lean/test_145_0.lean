universe u

constant obj : Type u

constant Dog : obj
constant Squirrel : obj
constant Lion : obj
constant Tiger : obj

constant Chases : obj → obj → Prop
constant Likes : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Big : obj → Prop
constant Red : obj → Prop
constant Blue : obj → Prop
constant Kind : obj → Prop
constant Nice : obj → Prop

axiom A1 : Chases Dog Squirrel
axiom A2 : Likes Dog Tiger
axiom A3 : Chases Lion Squirrel
axiom A4 : Big Lion
axiom A5 : Red Lion
axiom A6 : Likes Lion Tiger
axiom A7 : Visits Lion Squirrel
axiom A8 : Visits Lion Tiger
axiom A9 : Chases Squirrel Lion
axiom A10 : Nice Squirrel
axiom A11 : Likes Squirrel Lion
axiom A12 : Chases Tiger Dog
axiom A13 : Kind Tiger
axiom A14 : Red Tiger
axiom A15 : Likes Tiger Dog
axiom A16 : Likes Tiger Lion

-- Rule R1: If something chases the lion then the lion is blue
axiom R1 : ∀ x : obj, Chases x Lion → Blue Lion

-- Rule R2: If something is kind then it chases the tiger
axiom R2 : ∀ x : obj, Kind x → Chases x Tiger

-- Rule R3: If something chases the tiger then it visits the dog
axiom R3 : ∀ x : obj, Chases x Tiger → Visits x Dog

-- Rule R4: If something visits the lion then it likes the squirrel
axiom R4 : ∀ x : obj, Visits x Lion → Likes x Squirrel

-- Rule R5: If something is red and it chases the tiger then it likes the squirrel
axiom R5 : ∀ x : obj, Red x ∧ Chases x Tiger → Likes x Squirrel

-- Rule R6: If something chases the tiger and it visits the squirrel then the squirrel visits the tiger
axiom R6 : ∀ x : obj, Chases x Tiger ∧ Visits x Squirrel → Visits Squirrel Tiger

-- Rule R7: If something visits the dog then the dog likes the lion
axiom R7 : ∀ x : obj, Visits x Dog → Likes Dog Lion

-- Rule R8: If something is kind and it visits the dog then the dog is kind
axiom R8 : ∀ x : obj, Kind x ∧ Visits x Dog → Kind Dog


theorem tiger_chases_lion : Chases Tiger Lion :=
begin
  sorry
end


theorem not_tiger_chases_lion : ¬ Chases Tiger Lion :=
begin
  sorry
end
