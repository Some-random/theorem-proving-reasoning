-- Introducing basic types for entities in our universe.
constant Food : Type
constant Bakery : Type
constant Cupcake : Type
constant Hotpot : Type
constant Product : Type

-- Defining specific instances of food and product.
constant DriedThaiChilies : Food
constant BakedByMelissa : Product

-- Defining properties and relations among the entities.
constant is_bakery : Food → Prop
constant is_spicy : Food → Prop
constant is_cupcake : Food → Prop
constant is_hotpot : Food → Prop
constant is_product_of : Food → Product → Prop

-- Providing axioms based on the information given.

-- No bakery is spicy.
axiom A1 : ∀ (f : Food), is_bakery f → ¬ is_spicy f
-- All cupcakes are bakeries.
axiom A2 : ∀ (f : Food), is_cupcake f → is_bakery f
-- All hotpots are spicy.
axiom A3 : ∀ (f : Food), is_hotpot f → is_spicy f
-- All products of Baked by Melissa are cupcakes.
axiom A4 : ∀ (f : Food), is_product_of f BakedByMelissa → is_cupcake f
-- If dried Thai chilies are spicy or a bakery, then dried Thai chilies are a hotpot or are spicy.
axiom A5 : (is_spicy DriedThaiChilies ∨ is_bakery DriedThaiChilies) → (is_hotpot DriedThaiChilies ∨ is_spicy DriedThaiChilies)

-- Formalizing the Questions

-- Question 1
-- Dried Thai chilies are a product of Baked by Melissa.
-- Let's first prove the positive case.

theorem dried_thai_chilies_not_product : ¬ is_product_of DriedThaiChilies BakedByMelissa :=
begin
  sorry
end


theorem not_dried_thai_chilies_not_product : is_product_of DriedThaiChilies BakedByMelissa :=
begin
  sorry
end
