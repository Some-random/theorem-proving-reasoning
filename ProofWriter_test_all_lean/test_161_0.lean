universe u

constant obj : Type u

constant Cow : obj
constant Mouse : obj
constant Rabbit : obj
constant Squirrel : obj

constant Kind : obj → Prop
constant Sees : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Blue : obj → Prop
constant Green : obj → Prop
constant Rough : obj → Prop

axiom T1 : Kind Cow
axiom T2 : Sees Cow Mouse
axiom T3 : Eats Mouse Cow
axiom T4 : Kind Mouse
axiom T5 : Needs Mouse Squirrel
axiom T6 : Eats Rabbit Mouse
axiom T7 : ¬ Blue Rabbit
axiom T8 : ¬ Blue Squirrel
axiom T9 : Green Squirrel
axiom T10 : Rough Squirrel
axiom T11 : Needs Squirrel Mouse
axiom T12 : Sees Squirrel Rabbit

-- If something sees the cow then it sees the squirrel
axiom R1 : ∀ x : obj, Sees x Cow → Sees x Squirrel
-- If something sees the rabbit then it eats the cow
axiom R2 : ∀ x : obj, Sees x Rabbit → Eats x Cow
-- If something needs the cow then the cow eats the mouse
axiom R3 : ∀ x : obj, Needs x Cow → Eats Cow Mouse
-- If something needs the squirrel and the squirrel needs the cow then the cow does not need the rabbit
axiom R4 : ∀ x : obj, Needs x Squirrel ∧ Needs Squirrel Cow → ¬ Needs Cow Rabbit
-- If the mouse eats the rabbit and the rabbit does not see the mouse then the rabbit is green
axiom R5 : ∀ x : obj, Eats Mouse Rabbit ∧ ¬ Sees Rabbit Mouse → Green Rabbit
-- If the cow needs the rabbit then the rabbit does not eat the mouse
axiom R6 : ∀ x : obj, Needs Cow Rabbit → ¬ Eats Rabbit Mouse
-- If something eats the squirrel and the squirrel eats the cow then it needs the cow
axiom R7 : ∀ x : obj, Eats x Squirrel ∧ Eats Squirrel Cow → Needs x Cow
-- If something eats the mouse then it eats the squirrel
axiom R8 : ∀ x : obj, Eats x Mouse → Eats x Squirrel


theorem rabbit_needs_cow : Needs Rabbit Cow :=
begin
  sorry
end


theorem not_rabbit_needs_cow : ¬ Needs Rabbit Cow :=
begin
  sorry
end
