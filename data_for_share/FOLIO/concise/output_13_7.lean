-- Introducing basic types for entities in our universe.
constant App : Type
constant TikTok : App

-- Defining properties for the apps in our universe.
constant is_video_app : App → Prop
constant is_youtube_related : App → Prop
constant is_instagram_related : App → Prop
constant is_entertainment : App → Prop
constant is_software : App → Prop
constant is_interesting : App → Prop
constant is_good : App → Prop
constant is_programmed : App → Prop

-- Context from the information

-- All video applications are software.
axiom A1 : ∀ (a : App), is_video_app a → is_software a
-- All YouTube-related applications are video applications.
axiom A2 : ∀ (a : App), is_youtube_related a → is_video_app a
-- An APP is either related to YouTube or Instagram.
axiom A3 : ∀ (a : App), is_youtube_related a ∨ is_instagram_related a
-- All Instagram is entertainment.
axiom A4 : ∀ (a : App), is_instagram_related a → is_entertainment a
-- All software is programmed.
axiom A5 : ∀ (a : App), is_software a → is_programmed a
-- All entertainments are interesting.
axiom A6 : ∀ (a : App), is_entertainment a → is_interesting a
-- If something is interesting, then it is good.
axiom A7 : ∀ (a : App), is_interesting a → is_good a
-- TikTok is not good.
axiom A8 : ¬ is_good TikTok

-- Formalizing the Questions

-- Question 1
-- Tiktok is a program.
-- Let's first prove the positive case.

theorem tiktok_youtube_or_program : is_youtube_related TikTok ∨ is_programmed TikTok :=
begin
    by_cases h : is_instagram_related TikTok,
    -- If TikTok is Instagram-related.
    { exfalso, exact A8 (A7 TikTok (A6 TikTok (A4 TikTok h))) },
    
    -- Else, TikTok is YouTube-related or it's a program.
    cases A3 TikTok with h1 h2,
    { left, exact h1 },
    { exfalso, exact A8 (A7 TikTok (A6 TikTok (A4 TikTok h2))) }
end


-- Let's try the negative case.

