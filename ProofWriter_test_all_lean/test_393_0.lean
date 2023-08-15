universe u

constant obj : Type u

constant Cat : obj
constant Squirrel : obj
constant Rabbit : obj
constant Tiger : obj

constant Green : obj → Prop
constant Nice : obj → Prop
constant Likes : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Cold : obj → Prop
constant Chases : obj → obj → Prop
constant Kind : obj → Prop
constant Young : obj → Prop

axiom T1 : Green Cat
axiom T2 : Nice Cat
axiom T3 : Likes Cat Squirrel
axiom T4 : Likes Rabbit Tiger
axiom T5 : ¬ Needs Rabbit Cat
axiom T6 : Needs Rabbit Squirrel
axiom T7 : Cold Squirrel
axiom T8 : Needs Squirrel Cat
axiom T9 : Needs Squirrel Rabbit
axiom T10 : Chases Tiger Cat
axiom T11 : Chases Tiger Rabbit
axiom T12 : Kind Tiger
axiom T13 : Nice Tiger
axiom T14 : Young Tiger
axiom T15 : Likes Tiger Cat
axiom T16 : Needs Tiger Cat

-- If something chases the squirrel then the squirrel needs the tiger
axiom R1 : ∀ x : obj, Chases x Squirrel → Needs Squirrel Tiger
-- If something needs the tiger then it likes the rabbit
axiom R2 : ∀ x : obj, Needs x Tiger → Likes x Rabbit
-- If something chases the cat and it likes the rabbit then the rabbit chases the squirrel
axiom R3 : ∀ x : obj, Chases x Cat ∧ Likes x Rabbit → Chases Rabbit Squirrel
-- If something chases the rabbit then the rabbit does not need the tiger
axiom R4 : ∀ x : obj, Chases x Rabbit → ¬ Needs Rabbit Tiger
-- If something is kind and it chases the rabbit then it needs the tiger
axiom R5 : ∀ x : obj, Kind x ∧ Chases x Rabbit → Needs x Tiger
-- If something is kind then it does not like the squirrel
axiom R6 : ∀ x : obj, Kind x → ¬ Likes x Squirrel
-- If something likes the squirrel and it does not need the tiger then the squirrel likes the tiger
axiom R7 : ∀ x : obj, Likes x Squirrel ∧ ¬ Needs x Tiger → Likes Squirrel Tiger


theorem rabbit_needs_tiger : Needs Rabbit Tiger :=
begin
  sorry
end


theorem not_rabbit_needs_tiger : ¬ Needs Rabbit Tiger :=
begin
  sorry
end
