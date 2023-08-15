universe u

constant obj : Type u

constant Cat : obj
constant Cow : obj
constant Lion : obj
constant Tiger : obj

constant Likes : obj → obj → Prop
constant Cold : obj → Prop
constant Chases : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Green : obj → Prop

axiom T1 : Likes Cat Cow
axiom T2 : Cold Cow
axiom T3 : Chases Lion Tiger
axiom T4 : Likes Lion Cat
axiom T5 : Needs Lion Cow
axiom T6 : Needs Lion Tiger

-- If something likes the tiger then the tiger is cold
axiom R1 : ∀ x : obj, Likes x Tiger → Cold Tiger
-- If something chases the lion and it needs the lion then it is green
axiom R2 : ∀ x : obj, Chases x Lion ∧ Needs x Lion → Green x
-- If the cow chases the lion and the cow chases the cat then the lion needs the cow
axiom R3 : Chases Cow Lion ∧ Chases Cow Cat → Needs Lion Cow
-- If the tiger chases the cow then the tiger likes the cat
axiom R4 : Chases Tiger Cow → Likes Tiger Cat
-- If something needs the lion then the lion needs the tiger
axiom R5 : ∀ x : obj, Needs x Lion → Needs Lion Tiger
-- If something chases the cow then the cow likes the tiger
axiom R6 : ∀ x : obj, Chases x Cow → Likes Cow Tiger
-- If something chases the cat then the cat chases the cow
axiom R7 : ∀ x : obj, Chases x Cat → Chases Cat Cow
-- If something is cold then it chases the cat
axiom R8 : ∀ x : obj, Cold x → Chases x Cat
-- If something is cold and it chases the cat then it chases the cow
axiom R9 : ∀ x : obj, Cold x ∧ Chases x Cat → Chases x Cow


theorem tiger_likes_cow : Likes Tiger Cow :=
begin
  sorry
end


theorem not_tiger_likes_cow : ¬ Likes Tiger Cow :=
begin
  sorry
end
