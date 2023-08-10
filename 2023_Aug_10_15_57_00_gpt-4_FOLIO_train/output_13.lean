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
theorem tiktok_is_program : is_programmed TikTok :=
begin
    have not_interesting_TikTok : ¬ is_interesting TikTok,
    {
        intro h,
        have not_good_TikTok : ¬ is_good TikTok := A8,
        have good_TikTok : is_good TikTok := A7 TikTok h,
        contradiction,
    },
    have not_entertainment_TikTok : ¬ is_entertainment TikTok,
    {
        intro h,
        have interesting_TikTok : is_interesting TikTok := A6 TikTok h,
        contradiction,
    },
    have not_instagram_related_TikTok : ¬ is_instagram_related TikTok,
    {
        intro h,
        have entertainment_TikTok : is_entertainment TikTok := A4 TikTok h,
        contradiction,
    },
    cases A3 TikTok, {
        have video_app_TikTok : is_video_app TikTok := A2 TikTok h,
        have software_TikTok : is_software TikTok := A1 TikTok video_app_TikTok,
        have programmed_TikTok : is_programmed TikTok := A5 TikTok software_TikTok,
        exact programmed_TikTok,
    }, {
        contradiction,
    }
end

-- Let's try the negative case.

theorem not_tiktok_is_program : ¬ is_programmed TikTok :=
begin
    sorry, -- Placeholder for proof
end

-- The answer is Unknown

-- Question 2
-- Tiktok is either good or a program.
-- Let's first prove the positive case.
theorem tiktok_is_good_or_program : is_good TikTok ∨ is_programmed TikTok :=
begin
    have not_interesting_TikTok : ¬ is_interesting TikTok,
    {
        intro h,
        have not_good_TikTok : ¬ is_good TikTok := A8,
        have good_TikTok : is_good TikTok := A7 TikTok h,
        contradiction,
    },
    have not_entertainment_TikTok : ¬ is_entertainment TikTok,
    {
        intro h,
        have interesting_TikTok : is_interesting TikTok := A6 TikTok h,
        contradiction,
    },
    have not_instagram_related_TikTok : ¬ is_instagram_related TikTok,
    {
        intro h,
        have entertainment_TikTok : is_entertainment TikTok := A4 TikTok h,
        contradiction,
    },
    cases A3 TikTok, {
        have video_app_TikTok : is_video_app TikTok := A2 TikTok h,
        have software_TikTok : is_software TikTok := A1 TikTok video_app_TikTok,
        have programmed_TikTok : is_programmed TikTok := A5 TikTok software_TikTok,
        right,
        exact programmed_TikTok,
    }, {
        contradiction,
    }
end

-- Let's try the negative case.

theorem not_tiktok_is_good_or_program : ¬ (is_good TikTok ∨ is_programmed TikTok) :=
begin
    sorry, -- Placeholder for proof
end

-- The answer is Unknown

-- Question 3
-- Tiktok is not both related to youtube and a program.
-- Let's first prove the positive case.
theorem tiktok_not_youtube_and_program : ¬ (is_youtube_related TikTok ∧ is_programmed TikTok) :=
begin
    sorry, -- Placeholder for proof
end

-- Let's try the negative case.

theorem not_tiktok_not_youtube_and_program : (is_youtube_related TikTok ∧ is_programmed TikTok) :=
begin
    have not_interesting_TikTok : ¬ is_interesting TikTok,
    {
        intro h,
        have not_good_TikTok : ¬ is_good TikTok := A8,
        have good_TikTok : is_good TikTok := A7 TikTok h,
        contradiction,
    },
    have not_entertainment_TikTok : ¬ is_entertainment TikTok,
    {
        intro h,
        have interesting_TikTok : is_interesting TikTok := A6 TikTok h,
        contradiction,
    },
    have not_instagram_related_TikTok : ¬ is_instagram_related TikTok,
    {
        intro h,
        have entertainment_TikTok : is_entertainment TikTok := A4 TikTok h,
        contradiction,
    },
    cases A3 TikTok, {
        have video_app_TikTok : is_video_app TikTok := A2 TikTok h,
        have software_TikTok : is_software TikTok := A1 TikTok video_app_TikTok,
        have programmed_TikTok : is_programmed TikTok := A5 TikTok software_TikTok,
        split,
        exact h,
        exact programmed_TikTok,
    }, {
        contradiction,
    }
end

-- The answer is Unknown

-- Question 4
-- Tiktok is either related to youtube or a program.
-- Let's first prove the positive case.
theorem tiktok_youtube_or_program : is_youtube_related TikTok ∨ is_programmed TikTok :=
begin
    have not_interesting_TikTok : ¬ is_interesting TikTok,
    {
        intro h,
        have not_good_TikTok : ¬ is_good TikTok := A8,
        have good_TikTok : is_good TikTok := A7 TikTok h,
        contradiction,
    },
    have not_entertainment_TikTok : ¬ is_entertainment TikTok,
    {
        intro h,
        have interesting_TikTok : is_interesting TikTok := A6 TikTok h,
        contradiction,
    },
    have not_instagram_related_TikTok : ¬ is_instagram_related TikTok,
    {
        intro h,
        have entertainment_TikTok : is_entertainment TikTok := A4 TikTok h,
        contradiction,
    },
    cases A3 TikTok, {
        left,
        exact h,
    }, {
        contradiction,
    }
end

-- Let's try the negative case.

theorem not_tiktok_youtube_or_program : ¬ (is_youtube_related TikTok ∨ is_programmed TikTok) :=
begin
    sorry, -- Placeholder for proof
end

-- The answer is Unknown