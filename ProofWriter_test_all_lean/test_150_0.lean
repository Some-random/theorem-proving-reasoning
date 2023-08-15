universe u

constant obj : Type u

constant Cow : obj
constant Squirrel : obj
constant Tiger : obj
constant Mouse : obj

constant Cold : obj → Prop
constant Round : obj → Prop
constant Sees : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Blue : obj → Prop
constant Red : obj → Prop
constant Eats : obj → obj → Prop
constant Green : obj → Prop

axiom T1 : Cold Cow
axiom T2 : ¬ Round Cow
axiom T3 : Sees Cow Squirrel
axiom T4 : Sees Cow Tiger
axiom T5 : Needs Mouse Cow
axiom T6 : Needs Mouse Tiger
axiom T7 : Needs Squirrel Cow
axiom T8 : Blue Tiger
axiom T9 : Red Tiger
axiom T10 : Round Tiger
axiom T11 : Sees Tiger Mouse

-- If something needs the squirrel then the squirrel sees the tiger
axiom R1 : ∀ x : obj, Needs x Squirrel → Sees Squirrel Tiger
-- If the cow sees the squirrel then the cow eats the mouse
axiom R2 : ∀ x : obj, Sees Cow Squirrel → Eats Cow Mouse
-- If the squirrel eats the mouse and the squirrel is not green then the mouse is not red
axiom R3 : ∀ x : obj, Eats Squirrel Mouse ∧ ¬ Green Squirrel → ¬ Red Mouse
-- If the mouse needs the tiger and the mouse is red then the tiger does not see the squirrel
axiom R4 : ∀ x : obj, Needs Mouse Tiger ∧ Red Mouse → ¬ Sees Tiger Squirrel
-- If something needs the mouse and the mouse eats the cow then the cow eats the squirrel
axiom R5 : ∀ x : obj, Needs x Mouse ∧ Eats Mouse Cow → Eats Cow Squirrel
-- If something is blue then it needs the squirrel
axiom R6 : ∀ x : obj, Blue x → Needs x Squirrel
-- If something needs the cow and the cow is blue then it eats the mouse
axiom R7 : ∀ x : obj, Needs x Cow ∧ Blue Cow → Eats x Mouse
-- If something eats the mouse then it is blue
axiom R8 : ∀ x : obj, Eats x Mouse → Blue x


theorem not_blue_squirrel : ¬ Blue Squirrel :=
begin
  sorry
end


theorem blue_squirrel : Blue Squirrel :=
begin
  sorry
end
