-- Introducing basic types for entities in our universe.
constant Show : Type
constant Person : Type

-- Defining specific instances of shows and people.
constant StrangerThings : Show
constant BlackMirror : Show
constant Karen : Person
constant Lisa : Person

-- Defining properties and relations among the entities.
constant is_Netflix_show : Show → Prop
constant is_popular : Show → Prop
constant binge_watches : Person → Show → Prop
constant downloads : Person → Show → Prop
constant shares : Person → Show → Person → Prop

-- Providing axioms based on the information given.

-- "Stranger Things" is a popular Netflix show.
axiom A1 : is_Netflix_show StrangerThings
axiom A2 : is_popular StrangerThings

-- "Black Mirror" is a Netflix show.
axiom A3 : is_Netflix_show BlackMirror

-- If a Netflix show is popular, Karen will binge-watch it.
axiom A4 : ∀ (s : Show), is_Netflix_show s → is_popular s → binge_watches Karen s

-- If and only if Karen binge-watches a Netflix show, she will download it.
axiom A5 : ∀ (s : Show), binge_watches Karen s ↔ downloads Karen s

-- Karen does not download "Black Mirror".
axiom A6 : ¬ downloads Karen BlackMirror

-- If Karen binge-watches a Netflix show, she will share it to Lisa.
axiom A7 : ∀ (s : Show), binge_watches Karen s → shares Karen s Lisa

-- Formalizing the Questions

-- Question 1
-- Karen will share "Stranger Things" to Lisa.
-- Let's first prove the positive case.

theorem karen_shares_stranger_things : shares Karen StrangerThings Lisa :=
begin
  sorry
end
