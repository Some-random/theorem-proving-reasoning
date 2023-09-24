# theorem-proving-reasoning

## Step 1:
Get the formalization of ProofWriter and FOLIO dataset using GPT-4. We use GPT-4 and the **add_comment_and_use_COT** config, which adds comment in the formalization process and tries to provide step-by-step proof even when we can't prove the theorem. The prompt input are stored in ```prompts.py``` while the prompt output are store in ```output_prompt``` and ```output_prompt_FOLIO```

For ProofWriter: ```python gpt4prompt.py```

For FOLIO: ```python gpt4prompt_FOLIO.py```


## Step 2:
Compile the formalized Lean code and preprocess it with LeanDoJo.
The training data for FOLIO can be found in ```reprover_train_FOLIO```
To generate training data, in LeanDoJo folder, run ```python test_dataset_construction.py output_dir_name```
Setup ReProver training, run ```cp -r output_dir_name ReProver/data/```, change config accordingly


## Step 3:
Train ReProver Premise Selection Model and ReProver Tactic Generation Model
Premise Selection Training: python retrieval/main.py fit --config retrieval/confs/cli_random_text_math_FOLIO_concise.yaml
Retrieve premise for all proof states: ```python retrieval/main.py predict --config retrieval/confs/cli_random_text_math_FOLIO_concise.yaml --ckpt_path 

## Step 4:
Do ProofSearch on both ProofWriter and FOLIO
