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

axiom T1 : Chases BaldEagle Cat
axiom T2 : ¬ Eats BaldEagle Mouse
axiom T3 : Eats Cat Cow
axiom T4 : Eats Cow Cat
axiom T5 : Blue Cow
axiom T6 : Young Cow
axiom T7 : Sees Cow Cat
axiom T8 : ¬ Sees Cow Mouse
axiom T9 : ¬ Chases Mouse Cow
axiom T10 : Eats Mouse BaldEagle
axiom T11 : Round Mouse

-- If something eats the mouse then it is round
axiom R1 : ∀ x : obj, Eats x Mouse → Round x
-- If the mouse is red then the mouse sees the cow
axiom R2 : Red Mouse → Sees Mouse Cow
-- If something chases the cat then it does not chase the mouse
axiom R3 : ∀ x : obj, Chases x Cat → ¬ Chases x Mouse
-- If the mouse chases the cat then the cat eats the mouse
axiom R4 : Chases Mouse Cat → Eats Cat Mouse
-- If something is round then it chases the cat
axiom R5 : ∀ x : obj, Round x → Chases x Cat


theorem bald_eagle_chases_bald_eagle : Chases BaldEagle BaldEagle :=
begin
  sorry
end


theorem not_bald_eagle_chases_bald_eagle : ¬ Chases BaldEagle BaldEagle :=
begin
  sorry
end
