universe u

constant obj : Type u

constant Bear : obj
constant Cat : obj
constant Cow : obj
constant Tiger : obj

constant Eats : obj → obj → Prop
constant Chases : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Green : obj → Prop
constant Kind : obj → Prop
constant Rough : obj → Prop
constant Cold : obj → Prop
constant Nice : obj → Prop

axiom A1 : Eats Bear Cow
axiom A2 : Chases Cat Bear
axiom A3 : Eats Cat Bear
axiom A4 : Eats Cat Tiger
axiom A5 : Green Cat
axiom A6 : Kind Cat
axiom A7 : Rough Cat
axiom A8 : Sees Cat Bear
axiom A9 : Sees Cat Tiger
axiom A10 : Eats Cow Bear
axiom A11 : Eats Cow Tiger
axiom A12 : Green Cow
axiom A13 : Sees Cow Cat
axiom A14 : Chases Tiger Bear
axiom A15 : Chases Tiger Cat
axiom A16 : Chases Tiger Cow

-- Rule R1: If someone chases the bear and the bear is cold then they eat the cat
axiom R1 : ∀ x : obj, Chases x Bear ∧ Cold Bear → Eats x Cat

-- Rule R2: If someone chases the bear and the bear chases the tiger then the bear sees the tiger
axiom R2 : ∀ x : obj, Chases x Bear ∧ Chases Bear Tiger → Sees Bear Tiger

-- Rule R3: If the cat chases the bear and the cat sees the tiger then the bear chases the tiger
axiom R3 : Chases Cat Bear ∧ Sees Cat Tiger → Chases Bear Tiger

-- Rule R4: If someone chases the tiger and they are green then the tiger chases the cow
axiom R4 : ∀ x : obj, Chases x Tiger ∧ Green x → Chases Tiger Cow

-- Rule R5: Nice, kind people are cold
axiom R5 : ∀ x : obj, Nice x ∧ Kind x → Cold x

-- Rule R6: If someone chases the bear then the bear chases the cat
axiom R6 : ∀ x : obj, Chases x Bear → Chases Bear Cat

-- Rule R7: If someone chases the cat then they are nice
axiom R7 : ∀ x : obj, Chases x Cat → Nice x

-- Rule R8: If someone is nice then they are kind
axiom R8 : ∀ x : obj, Nice x → Kind x


theorem not_cold_cat : ¬ Cold Cat :=
begin
  sorry
end


theorem cold_cat : Cold Cat :=
begin
  sorry
end
