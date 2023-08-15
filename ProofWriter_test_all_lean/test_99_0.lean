universe u

constant obj : Type u

constant Cat : obj
constant Dog : obj
constant Squirrel : obj
constant Tiger : obj

constant Chases : obj → obj → Prop
constant Rough : obj → Prop
constant Young : obj → Prop
constant Likes : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Big : obj → Prop
constant Green : obj → Prop
constant Cold : obj → Prop

axiom T1 : Chases Cat Dog
axiom T2 : Rough Cat
axiom T3 : Young Cat
axiom T4 : Likes Dog Squirrel
axiom T5 : Sees Dog Tiger
axiom T6 : Chases Squirrel Tiger
axiom T7 : Big Squirrel
axiom T8 : Green Squirrel
axiom T9 : Likes Squirrel Dog
axiom T10 : Sees Squirrel Dog
axiom T11 : Chases Tiger Cat
axiom T12 : Green Tiger
axiom T13 : Likes Tiger Dog
axiom T14 : Likes Tiger Squirrel

-- If something likes the dog then it chases the tiger
axiom R1 : ∀ x : obj, Likes x Dog → Chases x Tiger
-- If something is big and it chases the cat then the cat likes the squirrel
axiom R2 : ∀ x : obj, Big x ∧ Chases x Cat → Likes Cat Squirrel
-- If something sees the cat then the cat is big
axiom R3 : ∀ x : obj, Sees x Cat → Big Cat
-- If something likes the squirrel then it sees the dog
axiom R4 : ∀ x : obj, Likes x Squirrel → Sees x Dog
-- If something is cold and it chases the cat then it sees the cat
axiom R5 : ∀ x : obj, Cold x ∧ Chases x Cat → Sees x Cat
-- If something sees the tiger then the tiger is big
axiom R6 : ∀ x : obj, Sees x Tiger → Big Tiger
-- Green, big things are young
axiom R7 : ∀ x : obj, Green x ∧ Big x → Young x
-- Big things are cold
axiom R8 : ∀ x : obj, Big x → Cold x


theorem not_sees_tiger_tiger : ¬ Sees Tiger Tiger :=
begin
  sorry
end


theorem sees_tiger_tiger : Sees Tiger Tiger :=
begin
  sorry
end
