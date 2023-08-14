-- Introducing basic types for entities in our universe.
constant MountainRange : Type
constant Person : Type
constant Mine : Type

-- Defining specific instances of mountain ranges, persons and mines.
constant PicurisMountains : MountainRange
constant JuanDeOnate : Person
constant HardingPegmatiteMine : Mine

-- Defining properties and relations among the entities.
constant is_in_NewMexico : MountainRange → Prop
constant is_in_Texas : MountainRange → Prop
constant visited : Person → MountainRange → Prop
constant is_located_in : Mine → MountainRange → Prop
constant has_donated_mines : MountainRange → Prop

-- Providing axioms based on the information given.

-- The Picuris Mountains are a mountain range in New Mexico or Texas.
axiom A1 : is_in_NewMexico PicurisMountains ∨ is_in_Texas PicurisMountains

-- Juan de Onate visited the Picuris Mountains.
axiom A2 : visited JuanDeOnate PicurisMountains

-- The Harding Pegmatite Mine, located in the Picuris Mountains, was donated.
axiom A3 : is_located_in HardingPegmatiteMine PicurisMountains

-- There are no mountain ranges in Texas that have mines which have been donated.
axiom A4 : ∀ (m : MountainRange), is_in_Texas m → ¬ has_donated_mines m

-- Formalizing the Questions

-- Question 1
-- Juan de Onate visited a mountain range in New Mexico.
-- Let's first prove the positive case.

theorem onate_visited_texas : ∃ (m : MountainRange), visited JuanDeOnate m ∧ is_in_Texas m :=
begin
  sorry
end


theorem not_onate_visited_texas : ¬ ∃ (m : MountainRange), visited JuanDeOnate m ∧ is_in_Texas m :=
begin
  sorry
end
