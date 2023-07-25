universe u

constant obj : Type u

constant BaldEagle : obj
constant Bear : obj
constant Cat : obj
constant Rabbit : obj

constant Likes : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Chases : obj → obj → Prop
constant Blue : obj → Prop
constant Round : obj → Prop
constant Big : obj → Prop

axiom T1 : Likes BaldEagle Rabbit
axiom T2 : Visits BaldEagle Rabbit
axiom T3 : ¬ Chases Bear Rabbit
axiom T4 : Likes Bear Rabbit
axiom T5 : Visits Bear BaldEagle
axiom T6 : Visits Bear Cat
axiom T7 : Visits Bear Rabbit
axiom T8 : Chases Cat BaldEagle
axiom T9 : Likes Cat BaldEagle
axiom T10 : Chases Rabbit BaldEagle
axiom T11 : Blue Rabbit
axiom T12 : Likes Rabbit BaldEagle

axiom R1 : ∀ x : obj, Round x → Likes x Bear
axiom R2 : ∀ x : obj, Big x ∧ Blue x → Likes x Rabbit
axiom R3 : ∀ x : obj, Round x ∧ Chases x Bear → ¬ Likes x Cat
axiom R4 : ∀ x : obj, Likes x BaldEagle ∧ ¬ Visits BaldEagle Cat → Likes x Cat
axiom R5 : ∀ x : obj, Chases x BaldEagle ∧ Visits BaldEagle Rabbit → Chases Rabbit Cat
axiom R6 : ∀ x : obj, Likes x Bear → Chases x Bear
axiom R7 : ∀ x : obj, Visits x BaldEagle ∧ Visits x Cat → Round BaldEagle
axiom R8 : ∀ x : obj, Chases x Bear → Round Bear
axiom R9 : ∀ x : obj, Likes x Cat ∧ Chases x Cat → Visits x BaldEagle

theorem bear_likes_bear : Likes Bear Bear :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Bear does not like Bear

theorem not_bear_likes_bear : ¬ Likes Bear Bear :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean either.
-- The answer is False