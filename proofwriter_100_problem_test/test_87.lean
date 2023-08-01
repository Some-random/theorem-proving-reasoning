universe u

constant obj : Type u

constant Cat : obj
constant Dog : obj
constant Mouse : obj
constant Tiger : obj

constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Big : obj → Prop
constant Nice : obj → Prop
constant Young : obj → Prop
constant Green : obj → Prop

axiom A1 : Chases Cat Dog
axiom A2 : Chases Cat Mouse
axiom A3 : Chases Cat Tiger
axiom A4 : Eats Cat Dog
axiom A5 : Big Dog
axiom A6 : Sees Dog Cat
axiom A7 : ¬ Eats Mouse Cat
axiom A8 : Eats Mouse Tiger
axiom A9 : ¬ Sees Mouse Tiger
axiom A10 : Eats Tiger Dog
axiom A11 : Nice Tiger

axiom R1 : ∀ x : obj, Young x ∧ Eats x Tiger → Eats x Dog
axiom R2 : ∀ x : obj, Sees x Mouse ∧ Eats x Mouse → Sees Mouse Tiger
axiom R3 : ∀ x : obj, Sees x Mouse → Big x
axiom R4 : ∀ x : obj, Chases x Dog → Chases Dog Cat
axiom R5 : ∀ x : obj, Chases x Dog → Chases x Cat
axiom R6 : ∀ x : obj, Chases x Tiger ∧ Eats Tiger Cat → Sees Cat Mouse
axiom R7 : ∀ x : obj, Sees x Dog ∧ Chases x Tiger → Chases Tiger Dog
axiom R8 : ∀ x : obj, Green Tiger ∧ Big Tiger → Sees Tiger Dog
axiom R9 : ∀ x : obj, Chases x Cat → Sees x Dog

theorem tiger_sees_dog : Sees Tiger Dog :=
begin
end


theorem not_tiger_sees_dog : ¬ Sees Tiger Dog :=
begin
end
