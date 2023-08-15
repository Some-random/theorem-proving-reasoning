universe u

constant obj : Type u

constant Bear : obj
constant Cat : obj
constant Mouse : obj
constant Squirrel : obj

constant Big : obj → Prop
constant Likes : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Blue : obj → Prop
constant Green : obj → Prop
constant Chases : obj → obj → Prop

axiom A1 : Big Bear
axiom A2 : Likes Bear Cat
axiom A3 : Eats Cat Bear
axiom A4 : Likes Cat Squirrel
axiom A5 : ¬ Chases Mouse Bear
axiom A6 : Blue Squirrel
axiom A7 : Green Squirrel

-- Rule R1: If something likes the cat then the cat eats the mouse
axiom R1 : ∀ x : obj, Likes x Cat → Eats Cat Mouse

-- Rule R2: If something chases the squirrel then it eats the cat
axiom R2 : ∀ x : obj, Chases x Squirrel → Eats x Cat

-- Rule R3: If the mouse eats the cat then the cat chases the squirrel
axiom R3 : Eats Mouse Cat → Chases Cat Squirrel

-- Rule R4: If something eats the mouse then the mouse chases the squirrel
axiom R4 : ∀ x : obj, Eats x Mouse → Chases Mouse Squirrel

-- Rule R5: If something chases the squirrel then the squirrel eats the cat
axiom R5 : ∀ x : obj, Chases x Squirrel → Eats Squirrel Cat


theorem squirrel_chases_bear : Chases Squirrel Bear :=
begin
  sorry
end


theorem not_squirrel_chases_bear : ¬ Chases Squirrel Bear :=
begin
  sorry
end
