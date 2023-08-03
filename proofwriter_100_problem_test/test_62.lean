universe u

constant obj : Type u

constant Bear : obj
constant Cat : obj
constant Squirrel : obj
constant Mouse : obj

constant Big : obj → Prop
constant Likes : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Blue : obj → Prop
constant Green : obj → Prop
constant Chases : obj → obj → Prop

axiom T1 : Big Bear
axiom T2 : Likes Bear Cat
axiom T3 : Eats Cat Bear
axiom T4 : Likes Cat Squirrel
axiom T5 : ¬ Chases Mouse Bear
axiom T6 : Blue Squirrel
axiom T7 : Green Squirrel

axiom R1 : ∀ x : obj, Likes x Cat → Eats Cat Mouse
axiom R2 : ∀ x : obj, Chases x Squirrel → Eats x Cat
axiom R3 : ∀ x : obj, Eats Mouse Cat → Chases Cat Squirrel
axiom R4 : ∀ x : obj, Eats x Mouse → Chases Mouse Squirrel
axiom R5 : ∀ x : obj, Chases x Squirrel → Eats Squirrel Cat

theorem squirrel_chases_bear : Chases Squirrel Bear :=
begin
  sorry
end


theorem not_squirrel_chases_bear : ¬ Chases Squirrel Bear :=
begin
  sorry
end
