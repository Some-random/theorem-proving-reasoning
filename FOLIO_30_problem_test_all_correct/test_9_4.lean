-- Introducing basic types for entities in our universe.
constant Person : Type

-- Defining the property of a person being a Grand Slam champion
constant Grand_Slam_champion : Person → Prop
-- Defining the property of a person being an Oscar-nominated actor
constant Oscar_nominated_actor : Person → Prop
-- Defining the property of a person being a professional tennis player
constant Professional_tennis_player : Person → Prop
-- Defining the property of a person being a celebrity
constant Celebrity : Person → Prop
-- Defining the property of a person being an athlete
constant Athlete : Person → Prop
-- Defining the property of a person being well paid
constant Well_paid : Person → Prop
-- Defining the property of a person living in a tax haven
constant Lives_in_tax_haven : Person → Prop
-- Djokovic is a specific person
constant Djokovic : Person

-- A person is either a Grand Slam champion or an Oscar-nominated actor
axiom A1 : ∀ (p : Person), Grand_Slam_champion p ∨ Oscar_nominated_actor p
-- All people who are Grand Slam champions are professional tennis players
axiom A2 : ∀ (p : Person), Grand_Slam_champion p → Professional_tennis_player p
-- All Oscar-nominated actors are celebrities
axiom A3 : ∀ (p : Person), Oscar_nominated_actor p → Celebrity p
-- All professional tennis players are athletes
axiom A4 : ∀ (p : Person), Professional_tennis_player p → Athlete p
-- If a person is a celebrity then they are well paid
axiom A5 : ∀ (p : Person), Celebrity p → Well_paid p
-- If a person is an athlete then they are famous
axiom A6 : ∀ (p : Person), Athlete p → Celebrity p
-- All well-paid people live in tax havens
axiom A7 : ∀ (p : Person), Well_paid p → Lives_in_tax_haven p
-- If Djokovic is famous and is an athlete, then Djokovic lives in well paid
axiom A8 : Athlete Djokovic → Well_paid Djokovic

-- Formalizing the Questions

-- Question 1
-- Djokovic is a Grand Slam champion.
-- Let's first prove the positive case.

theorem not_Djokovic_lives_in_tax_haven : ¬ Lives_in_tax_haven Djokovic :=
begin
  sorry
end
