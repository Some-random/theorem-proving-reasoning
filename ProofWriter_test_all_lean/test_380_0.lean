universe u

constant obj : Type u

constant BaldEagle : obj
constant Cat : obj
constant Cow : obj
constant Mouse : obj

constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Blue : obj → Prop
constant Young : obj → Prop
constant Sees : obj → obj → Prop
constant Round : obj → Prop
constant Red : obj → Prop

axiom A1 : Chases BaldEagle Cat
axiom A2 : ¬ Eats BaldEagle Mouse
axiom A3 : Eats Cat Cow
axiom A4 : Eats Cow Cat
axiom A5 : Blue Cow
axiom A6 : Young Cow
axiom A7 : Sees Cow Cat
axiom A8 : ¬ Sees Cow Mouse
axiom A9 : ¬ Chases Mouse Cow
axiom A10 : Eats Mouse BaldEagle
axiom A11 : Round Mouse

-- Rule R1: If something eats the mouse then it is round
axiom R1 : ∀ x : obj, Eats x Mouse → Round x

-- Rule R2: If the mouse is red then the mouse sees the cow
axiom R2 : Red Mouse → Sees Mouse Cow

-- Rule R3: If something chases the cat then it does not chase the mouse
axiom R3 : ∀ x : obj, Chases x Cat → ¬ Chases x Mouse

-- Rule R4: If the mouse chases the cat then the cat eats the mouse
axiom R4 : Chases Mouse Cat → Eats Cat Mouse

-- Rule R5: If something is round then it chases the cat
axiom R5 : ∀ x : obj, Round x → Chases x Cat


theorem not_cat_chases_cat : ¬ Chases Cat Cat :=
begin
  sorry
end


theorem cat_chases_cat : Chases Cat Cat :=
begin
  sorry
end
