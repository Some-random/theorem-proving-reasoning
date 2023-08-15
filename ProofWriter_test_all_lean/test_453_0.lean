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

axiom A1 : Green Cat
axiom A2 : Nice Cat
axiom A3 : Likes Cat Squirrel
axiom A4 : Likes Rabbit Tiger
axiom A5 : ¬ Needs Rabbit Cat
axiom A6 : Needs Rabbit Squirrel
axiom A7 : Cold Squirrel
axiom A8 : Needs Squirrel Cat
axiom A9 : Needs Squirrel Rabbit
axiom A10 : Chases Tiger Cat
axiom A11 : Chases Tiger Rabbit
axiom A12 : Kind Tiger
axiom A13 : Nice Tiger
axiom A14 : Young Tiger
axiom A15 : Likes Tiger Cat
axiom A16 : Needs Tiger Cat

-- Rule R1: If something chases the squirrel then the squirrel needs the tiger
axiom R1 : ∀ x : obj, Chases x Squirrel → Needs Squirrel Tiger

-- Rule R2: If something needs the tiger then it likes the rabbit
axiom R2 : ∀ x : obj, Needs x Tiger → Likes x Rabbit

-- Rule R3: If something chases the cat and it likes the rabbit then the rabbit chases the squirrel
axiom R3 : ∀ x : obj, Chases x Cat ∧ Likes x Rabbit → Chases Rabbit Squirrel

-- Rule R4: If something chases the rabbit then the rabbit does not need the tiger
axiom R4 : ∀ x : obj, Chases x Rabbit → ¬ Needs Rabbit Tiger

-- Rule R5: If something is kind and it chases the rabbit then it needs the tiger
axiom R5 : ∀ x : obj, Kind x ∧ Chases x Rabbit → Needs x Tiger

-- Rule R6: If something is kind then it does not like the squirrel
axiom R6 : ∀ x : obj, Kind x → ¬ Likes x Squirrel

-- Rule R7: If something likes the squirrel and it does not need the tiger then the squirrel likes the tiger
axiom R7 : ∀ x : obj, Likes x Squirrel ∧ ¬ Needs x Tiger → Likes Squirrel Tiger


theorem squirrel_needs_tiger : Needs Squirrel Tiger :=
begin
  sorry
end


theorem not_squirrel_needs_tiger : ¬ Needs Squirrel Tiger :=
begin
  sorry
end
