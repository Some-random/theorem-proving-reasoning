-- Introducing basic types for entities in our universe.
constant Person : Type
constant Parliament : Type

-- Defining specific instances of persons and parliaments.
constant Heinrich_Schmidt : Person
constant Prussian_State_Parliament : Parliament
constant Nazi_Reichstag : Parliament

-- Defining properties and relations among the entities.
constant is_German : Person → Prop
constant is_Russian : Person → Prop
constant is_Nazi_German_politician : Person → Prop
constant is_member_of : Person → Parliament → Prop

-- Providing axioms based on the information given.

-- Heinrich Scmidt was a Nazi German politician.
axiom A1 : is_Nazi_German_politician Heinrich_Schmidt
-- Heinrich Scmidt was also a member of the Prussian State Parliament and the Nazi Reichstag.
axiom A2 : is_member_of Heinrich_Schmidt Prussian_State_Parliament
axiom A3 : is_member_of Heinrich_Schmidt Nazi_Reichstag

-- Formalizing the Questions

-- Question 1
-- Heinrich Schmidt was either German or Russian.
-- Let's first prove the positive case.

theorem no_politicians_in_reichstag : ∀ (p : Person), ¬ is_member_of p Nazi_Reichstag :=
begin
  sorry
end


theorem not_no_politicians_in_reichstag : ¬ ∀ (p : Person), ¬ is_member_of p Nazi_Reichstag :=
begin
  sorry
end
