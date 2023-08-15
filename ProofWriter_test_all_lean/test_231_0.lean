universe u

constant obj : Type u

constant Cow : obj
constant Dog : obj
constant Mouse : obj
constant Tiger : obj

constant Eats : obj → obj → Prop
constant Blue : obj → Prop
constant Nice : obj → Prop
constant Likes : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Round : obj → Prop
constant Green : obj → Prop
constant Kind : obj → Prop

axiom T1 : Eats Cow Dog
axiom T2 : Eats Cow Mouse
axiom T3 : Blue Cow
axiom T4 : Nice Cow
axiom T5 : ¬ Likes Cow Mouse
axiom T6 : Sees Cow Mouse
axiom T7 : Eats Dog Cow
axiom T8 : Blue Dog
axiom T9 : Round Dog
axiom T10 : Sees Dog Tiger
axiom T11 : Kind Mouse
axiom T12 : Likes Mouse Cow
axiom T13 : Sees Mouse Cow
axiom T14 : ¬ Nice Tiger
axiom T15 : ¬ Likes Tiger Mouse
axiom T16 : Sees Tiger Mouse

-- If someone is round then they are nice
axiom R1 : ∀ x : obj, Round x → Nice x
-- If someone is green then they like the tiger
axiom R2 : ∀ x : obj, Green x → Likes x Tiger
-- If someone likes the tiger then the tiger sees the cow
axiom R3 : ∀ x : obj, Likes x Tiger → Sees Tiger Cow
-- If someone sees the mouse and they do not like the mouse then the mouse is blue
axiom R4 : ∀ x : obj, Sees x Mouse ∧ ¬ Likes x Mouse → Blue Mouse
-- If someone is nice then they eat the dog
axiom R5 : ∀ x : obj, Nice x → Eats x Dog
-- If the tiger is nice then the tiger does not like the cow
axiom R6 : ∀ x : obj, Nice Tiger → ¬ Likes Tiger Cow
-- If someone is round and they eat the dog then they are green
axiom R7 : ∀ x : obj, Round x ∧ Eats x Dog → Green x
-- If someone eats the cow then they like the cow
axiom R8 : ∀ x : obj, Eats x Cow → Likes x Cow


theorem not_green_Dog : ¬ Green Dog :=
begin
  sorry
end


theorem green_Dog : Green Dog :=
begin
  sorry
end
