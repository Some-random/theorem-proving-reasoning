universe u

constant obj : Type u

constant Cat : obj
constant Dog : obj
constant Squirrel : obj
constant Tiger : obj

constant Eats : obj → obj → Prop
constant Round : obj → Prop
constant Needs : obj → obj → Prop
constant Likes : obj → obj → Prop
constant Blue : obj → Prop
constant Kind : obj → Prop
constant Big : obj → Prop

axiom A1 : Eats Cat Squirrel
axiom A2 : Round Cat
axiom A3 : Needs Cat Dog
axiom A4 : Needs Cat Squirrel
axiom A5 : Likes Dog Cat
axiom A6 : Likes Dog Tiger
axiom A7 : Blue Squirrel
axiom A8 : ¬ Round Squirrel
axiom A9 : Blue Tiger
axiom A10 : Kind Tiger
axiom A11 : Round Tiger
axiom A12 : Needs Tiger Squirrel

axiom R1 : ∀ x : obj, Likes x Tiger ∧ Needs Tiger Dog → Round x
axiom R2 : ∀ x : obj, Eats x Cat → Needs x Dog
axiom R3 : ∀ x : obj, Big x → Needs x Dog
axiom R4 : ∀ x : obj, Likes Dog Tiger ∧ Likes Tiger Dog → ¬ Likes Dog Squirrel
axiom R5 : ∀ x : obj, Round x → Eats x Cat
axiom R6 : ∀ x : obj, Needs x Cat ∧ Eats x Tiger → Needs Tiger Dog
axiom R7 : ∀ x : obj, Needs x Dog ∧ ¬ Eats x Tiger → Blue x
axiom R8 : Round Dog → Eats Dog Squirrel
axiom R9 : ∀ x : obj, Likes x Tiger ∧ Kind x → Likes Tiger Cat

theorem cat_eats_cat : Eats Cat Cat :=
begin
end


theorem not_cat_eats_cat : ¬ Eats Cat Cat :=
begin
end
