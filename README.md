# theorem-proving-reasoning

## Step 1:
Get the formalization of ProofWriter and FOLIO dataset using GPT-4. We use GPT-4 and the **add_comment_and_use_COT** config, which adds comment in the formalization process and tries to provide step-by-step proof even when we can't prove the theorem. The prompt input are stored in ```prompts.py``` while the prompt output are store in ```output_prompt``` and ```output_prompt_FOLIO```

```python gpt4prompt.py```

```pyrhon gpt4prompt_FOLIO.py```


## Step 2:
Compile the formalized Lean code and preprocess it with LeanDoJo.

## Step 3:
Train ReProver Premise Selection Model and ReProver Tactic Generation Model

## Step 4:
Do ProofSearch on both ProofWriter and FOLIO
