universe u

constant obj : Type u

constant Bear : obj
constant Rabbit : obj
constant Squirrel : obj
constant Tiger : obj

constant Cold : obj → Prop
constant Green : obj → Prop
constant Rough : obj → Prop
constant Nice : obj → Prop
constant Visits : obj → obj → Prop
constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop

axiom T1 : Cold Bear
axiom T2 : ¬ Green Bear
axiom T3 : Rough Bear
axiom T4 : Cold Rabbit
axiom T5 : Nice Squirrel
axiom T6 : ¬ Visits Squirrel Rabbit
axiom T7 : Visits Squirrel Tiger
axiom T8 : Chases Tiger Bear
axiom T9 : ¬ Eats Tiger Rabbit
axiom T10 : Cold Tiger
axiom T11 : Nice Tiger
axiom T12 : ¬ Rough Tiger
axiom T13 : Visits Tiger Rabbit
axiom T14 : Visits Tiger Squirrel

-- If something is green and it visits the squirrel then the squirrel is green
axiom R1 : ∀ x : obj, Green x ∧ Visits x Squirrel → Green Squirrel
-- If something chases the rabbit then it eats the bear
axiom R2 : ∀ x : obj, Chases x Rabbit → Eats x Bear
-- If the squirrel eats the rabbit and the rabbit visits the bear then the bear is not red
axiom R3 : Eats Squirrel Rabbit ∧ Visits Rabbit Bear → ¬ Green Bear
-- If something is cold then it chases the rabbit
axiom R4 : ∀ x : obj, Cold x → Chases x Rabbit
-- If the rabbit chases the squirrel then the squirrel eats the bear
axiom R5 : Chases Rabbit Squirrel → Eats Squirrel Bear
-- If something chases the bear and it visits the tiger then the tiger chases the squirrel
axiom R6 : ∀ x : obj, Chases x Bear ∧ Visits x Tiger → Chases Tiger Squirrel
-- If something is cold and not nice then it eats the rabbit
axiom R7 : ∀ x : obj, Cold x ∧ ¬ Nice x → Eats x Rabbit
-- If something eats the bear and the bear visits the squirrel then it eats the rabbit
axiom R8 : ∀ x : obj, Eats x Bear ∧ Visits Bear Squirrel → Eats x Rabbit
-- If something eats the bear then it chases the squirrel
axiom R9 : ∀ x : obj, Eats x Bear → Chases x Squirrel

theorem tiger_chases_squirrel : Chases Tiger Squirrel :=
begin
end


theorem not_tiger_chases_squirrel : ¬ Chases Tiger Squirrel :=
begin
end
