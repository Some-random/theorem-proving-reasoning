-- Introducing basic types for entities in our universe.
constant Person : Type

-- Defining the property of a person liking music
constant Likes_music : Person → Prop
-- Defining the property of a person wanting to compose
constant Wants_to_compose : Person → Prop
-- Defining the property of a person having access to a program
constant Has_access_to_program : Person → Prop
-- Defining the property of a person being able to compose
constant Can_compose : Person → Prop
-- Defining the property of a person composing
constant Will_compose : Person → Prop

-- George is a specific person
constant George : Person

-- If George likes music, he wants to compose.
axiom A1 : Likes_music George → Wants_to_compose George
-- If George has access to a program, he can compose.
axiom A2 : Has_access_to_program George → Can_compose George
-- If George can compose and wants to compose, he will compose.
axiom A3 : Can_compose George ∧ Wants_to_compose George → Will_compose George

-- Formalizing the Questions

-- Question 1
-- If George likes music and has access to a program, he will compose.
-- Let's first prove the positive case.

theorem George_composes : Likes_music George ∧ Has_access_to_program George → Will_compose George :=
begin
  sorry
end
