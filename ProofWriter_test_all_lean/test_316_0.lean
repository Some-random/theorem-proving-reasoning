universe u

constant obj : Type u

constant Bear : obj
constant Cat : obj
constant Cow : obj
constant Mouse : obj

constant Kind : obj → Prop
constant Likes : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Rough : obj → Prop
constant Red : obj → Prop
constant Big : obj → Prop

axiom A1 : Kind Bear
axiom A2 : Likes Bear Cat
axiom A3 : Likes Cat Bear
axiom A4 : Needs Cat Cow
axiom A5 : Sees Cat Bear
axiom A6 : Sees Cat Cow
axiom A7 : Rough Cow
axiom A8 : Likes Mouse Cat
axiom A9 : Needs Mouse Bear
axiom A10 : Sees Mouse Cow

-- Rule R1: If someone sees the bear then they need the mouse
axiom R1 : ∀ x : obj, Sees x Bear → Needs x Mouse

-- Rule R2: If someone needs the bear and the bear needs the cow then the bear needs the cat
axiom R2 : ∀ x : obj, Needs x Bear ∧ Needs Bear Cow → Needs Bear Cat

-- Rule R3: If someone likes the cow then the cow sees the bear
axiom R3 : ∀ x : obj, Likes x Cow → Sees Cow Bear

-- Rule R4: If the bear is red and the bear needs the cow then the cow needs the bear
axiom R4 : ∀ x : obj, Red Bear ∧ Needs Bear Cow → Needs Cow Bear

-- Rule R5: If someone needs the mouse then they are big
axiom R5 : ∀ x : obj, Needs x Mouse → Big x

-- Rule R6: If someone sees the bear and they are big then they like the cow
axiom R6 : ∀ x : obj, Sees x Bear ∧ Big x → Likes x Cow

-- Rule R7: If the cat needs the mouse then the mouse needs the cow
axiom R7 : ∀ x : obj, Needs Cat Mouse → Needs Mouse Cow

-- Rule R8: If someone is kind then they see the cat
axiom R8 : ∀ x : obj, Kind x → Sees x Cat


theorem not_need_mouse_cow : ¬ Needs Mouse Cow :=
begin
  sorry
end


theorem need_mouse_cow : Needs Mouse Cow :=
begin
  sorry
end
