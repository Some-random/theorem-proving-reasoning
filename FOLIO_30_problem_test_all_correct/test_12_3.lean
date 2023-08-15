-- Introducing basic types for entities in our universe.
constant Design : Type
constant Designer : Type

-- Defining specific instances of designers.
constant ZahaHadid : Designer
constant KellyWearstler : Designer
constant Max : Designer

-- Defining properties and relations among the entities.
constant design_style : Designer → Design → Prop
constant timeless : Design → Prop
constant mass_product_design : Design → Prop
constant evocative : Design → Prop
constant dreamy : Design → Prop

-- Providing axioms based on the information given.

-- All of Zaha Hadid's design styles are timeless.
axiom A1 : ∀ (d : Design), design_style ZahaHadid d → timeless d
-- No mass product design is timeless.
axiom A2 : ∀ (d : Design), mass_product_design d → ¬ timeless d
-- Either Zaha Hadid's design style or Kelly Wearstler's design style.
axiom A3 : ∀ (d : Design), design_style ZahaHadid d ∨ design_style KellyWearstler d
-- All of Kelly Wearstler's design styles are evocative.
axiom A4 : ∀ (d : Design), design_style KellyWearstler d → evocative d
-- All of Kelly Wearstler's design styles are dreamy.
axiom A5 : ∀ (d : Design), design_style KellyWearstler d → dreamy d
-- If a design by Max is timeless, then a design by Max is a mass product design and evocative.
axiom A6 : ∀ (d : Design), design_style Max d → timeless d → mass_product_design d ∧ evocative d

-- Formalizing the Questions

-- Question 1
-- A design by Max is a mass product design.
-- Let's first prove the positive case.

theorem max_design_is_evocative_and_dreamy : ∀ (d : Design), design_style Max d → evocative d ∧ dreamy d :=
begin
  sorry
end
