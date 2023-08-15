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

axiom A1 : Eats Cow Dog
axiom A2 : Eats Cow Mouse
axiom A3 : Blue Cow
axiom A4 : Nice Cow
axiom A5 : ¬ Likes Cow Mouse
axiom A6 : Sees Cow Mouse
axiom A7 : Eats Dog Cow
axiom A8 : Blue Dog
axiom A9 : Round Dog
axiom A10 : Sees Dog Tiger
axiom A11 : Kind Mouse
axiom A12 : Likes Mouse Cow
axiom A13 : Sees Mouse Cow
axiom A14 : ¬ Nice Tiger
axiom A15 : ¬ Likes Tiger Mouse
axiom A16 : Sees Tiger Mouse

-- Rule R1: If someone is round then they are nice
axiom R1 : ∀ x : obj, Round x → Nice x

-- Rule R2: If someone is green then they like the tiger
axiom R2 : ∀ x : obj, Green x → Likes x Tiger

-- Rule R3: If someone likes the tiger then the tiger sees the cow
axiom R3 : ∀ x : obj, Likes x Tiger → Sees Tiger Cow

-- Rule R4: If someone sees the mouse and they do not like the mouse then the mouse is blue
axiom R4 : ∀ x : obj, Sees x Mouse ∧ ¬ Likes x Mouse → Blue Mouse

-- Rule R5: If someone is nice then they eat the dog
axiom R5 : ∀ x : obj, Nice x → Eats x Dog

-- Rule R6: If the tiger is nice then the tiger does not like the cow
axiom R6 : ∀ x : obj, Nice Tiger → ¬ Likes Tiger Cow

-- Rule R7: If someone is round and they eat the dog then they are green
axiom R7 : ∀ x : obj, Round x ∧ Eats x Dog → Green x

-- Rule R8: If someone eats the cow then they like the cow
axiom R8 : ∀ x : obj, Eats x Cow → Likes x Cow


theorem not_green_Mouse : ¬ Green Mouse :=
begin
  sorry
end


theorem green_Mouse : Green Mouse :=
begin
  sorry
end
