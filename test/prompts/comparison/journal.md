# Journal of Experiments

## Purpose

THe purpose of this document will be to keep a running log of my thoughts while working through the various models.

While the goal is to select a model to move forward with, it's not about winners and losers. The field is moving so fast that revisting the choices may completely change the results. Also, in the future, a multi-model choice may make sense and these notes will help highlight strengths and weaknesses.

Just for fun, I've included links to my music choices while I worked with the models.

## Model: falcon 3

* The model was very slow to respond, but this is--at least in part--a result of the hardware I was running this local model on.
* On Error Hypothesis, the model showed a trend that's been seen before in GenAI models of taking the hypotheses described and turned them back, in the same order, as the highest priority issues of the feature.
  * The rationale _is_ generally correct.
  * The selection _could_ be correct for this feature.
* It would be interesting to see these prompts run in an agentic system. There could be one or more "humnan-in-the-loop" checkpoints, but allowing it to work unattended means more time for the tester to be involved in other activities. This would be especially true of model/platform pairs that will run slow because of latency.
* Prompt 4, the initial test generation, returned tests that were properly formatted, but did not include scenario names.
* Prompt 5, review and augmentation returned additional Gherkin-syntaxed tests, but the code for data generation and the oracle, while attempting to address shortcomings of the originals, may actually have regressed.
* Prompts 5 and 6 both added to the number of test scenarios, creating a more robust test set.
  * None of the Gherkin-syntaxed tests were setup for data input, so as is would be incomplete. With the test data creation scripts, I should be able to fill that in.
* Prompt 6 did not modify the test data scripts, after their regression in prompt 5. Execution may tell the story on the data created.
* Looking back at my original experiment, while more verbose, the Gherkin-syntaxed tests were not ready for being data-driven either and I had (heavily) modified them. The test data generation was the real focus. This may be case-by-case, depending on whether the application and/or feature are more data-dependent or workflow-oriented.
* Need to consider how the model is made aware of existing step functions, to utilize and or modify (update).
* The original prompting experiment (4o) not only created scripts, but returned instructions on how to use them in tandem with each other to create the data set.
* The test data generation script returned 63 rows of data and would in no wise excercise the system.
  * The script did not fully account for all parameters.
  * It changed values for certain parameters to ones that were not provided by the prompt. This isn't necessarily a bad thing, since we _do_ want to highlight gaps, but to do that while leaving out other valid values is questionable.
  * The oracle would fail to properly identify the majority of the tests that should be run.
* At one layer, the model generated a good, diverse collection of test scenarios, but it also failed to take into account certain parameters which would lead to gaps in test coverage of the feature.

### Final Thoughts

* This model, with the current set of prompts, cannot stand on its own.
* It ignored some of the parameters. The code it returned for data generation was incomplete.
* The model's strength was identifying scenarios (but not the details of the scenario).
* If there is a path forward with this model, it would have to be in a multimodal solution, likely using agents so that the tester doesn't have to repeat the entry of context to each model in use.
* Because of the shortfalls listed, the tests were not carried to completion, so there is no execution data.

---

_Music for this experiment by:_

* _[Nancy Ajram](https://open.spotify.com/artist/0LnHdW6HMPoOlNdhG3DHjE?si=xG1r76iZS3CMxThZTb_0qQ)_
* _[Ami Inoi](https://open.spotify.com/artist/0rcWfKZ3DLC4N9Zkh9Uscd?si=MY2BPnvDSW6wYz_YC8g3cw)_

---

## Model: llama 3.2

* It's interesting what the model focuses on from initial information (prompt 1) and it's desire to cover those items. It shows that it understands the context given to this point, but that it doesn't yet understand the project/feature under test (which won't be given until prompt 3). Question to watch for: Will this lead to premature optimization that will have a negative impact on the final test cases?
* A model that didn't just parrot the risk models given to it in prompt 2!
* So far, this model has been very performant in its responses. This is also a smaller model that runs well locally on outdated hardware.
* The model has correctly identified some of the potential problems with the application after reviewing the requirements.
* At first glance, the test cases and Python code are closer to what we want. The test cases are even better formed to be able to be data-driven.
* Another model that wants to add to the property types to test values not specified in the requirements as available. It's good to ask the question, but you can't test what isn't available. (_Well, I guess I could...manipulating the DOM, but the results are at current unpredictable._)
* The tests are all properly formatted, but the **Given** statements are often more like **When** (action) statements than pre-condtions.
* The tests completely ignore the FHA loan program, so that aspect of the feature is completely untested.
* While the data generation script is runnable, it ignores one of the data points: the co-borrower FICO score.
* The Oracle code is less robust. I would have to rewrite it so that it could be useful as an oracle for the tests.

---

_Music for this experiment by:_

* _[This is Perfume](https://open.spotify.com/playlist/37i9dQZF1DZ06evO1I6Ja6?si=54b4f56bb6a3423b)_

## Model: mistral (via Le Chat)

* The error hypothesis was well reasoned and didn't simply parrot the hypothesis supplied as guides.
* Follow up questioning of the tests (prompt 5) mentions a need to focus on co-borrower FICO. Let's see what kind of tests we get.
* A really interesting note is that there should be tests around the $418,000 threshold! The way the feature was designed so that it would be a critical point. That it recognizes this point is a key find.
* Interestingly, no updates to the Python script for data generation. Is the script that good?
* Prompt 6 includes updates to tests, test data generation scripts, and Exploratory Testing charters.
  * These were just restatements of the original charters. Keeping all of the final product under one response, which is nice.
  * The charters are good, sound statements of what to explore, although in the future I may feed it a template, like Elizabeth Hendrikson's (Explore ... with .. to discover ....).
* An initial pass with the first test cases (prompt 4) resulted in runnable, and mostly passing tests.
  * Two tests hit UI validations that aren't built out yet.
  * Coverage, using only five tests, was clearly low.
* The initial data generation script creates 1,200 test cases, and uses a pairwise technique.
  * There is a hole in the tests in that they do not include co-borrower data.
  * The initial run of these tests (crafted by data driving two of the oringial Gherking tests) was very positive.
  * The only failures (four) were run on Firefox. The same tests passed on Chromium and Webkit. I have observed similar behavior in the past.
* In the first round of refinement (prompt 5), tests were added for Co-Borrower, invalid (but available) property type, and more boundary coverage.
  * Two of the tests failed, because they incorrectly calculated that the loans would be denied. Once I adjusted them to return a given loan type, they passed.
  * This will be something to look at--how much massaging of the tests and data generation code will be needed?
* The final round of refinement (prompt 6) started with the original and added Gherkin-syntax tests, no changes.
  * In fact, prompt 6 returned no new material. It did add the additional test cases to the set of tests written in Gherkin.
  * With no additional explanation, it's unclear if the prompt thought it was just supposed to recap everything, or if it determined there were no other tests to run.
  * It still leaves holes in coverage.

---

_Music for this experiment by:_

* _[Rory Gallagher: Irish Tour '74 (Live/Remastered 2017)](https://open.spotify.com/album/0OpKEThWe2Evxk6zwixWZU?si=zLKxhkzEQT2fvCqmdCCerg)_

## Model: Claude

* The good news: Running on upgraded Claude 3.7 Sonnet!
* Setting the context got a set of test cases in return.
  * It was good to see the consideration for things like edge cases and techniques like BVA and ECP.
  * The tests are clearly not useful since the model doesn't yet know what the rules are for the feature.
* Error hypothesis opens with 15 identified potential risks. They are a solid mix of business risks and technology risks. Not all are particularly deep, but they are well reasoned.
* The top three risks are decently chosen. I might have chosen differently, but that doesn't make these wrong!
* Moving into the requirements, it correctly identified areas of focus, and even appropriate test techniques, including for the first time in this set, Decision Tables.
* First impression of the test cases is positive! The test cases themselves already use data tables and examples tables. There are also scripts for data generation and an oracle.
* On the downside, because this isn't a paid account, I hit the limit of the chat window in the middle of the Exploratory Testing charters. I hope that the experiment doesn't end here as the model is appearing to be strong.
* Interesting, the data generation and oracle scripts are written in JavaScript.
* I had to wire up the two scripts to properly generate the data, but that was a trivial effort. They created 15 test cases.
* Interestingly, the oracle returned an interest rate for some of the test cases - despite no information being provided on the interest rate calculation!
* Unfortunately, on the free account, this reached the limit for the chart and I (sadly) couldn't continue the experiment.
* Claude was performing well and a future iteration with a paid account should be tried.

---

## Model: GPT o3-mini-high

* And, we're off! o3 wastes no time getting to work with a set of high-level test cases with rationale.
  * And, starting with valid test design techniques.
* On risk analysis (prompt 2), it returned only the top three. While it was nice to see other models return additional risks, and then a top three, this model delivered exactly what was asked.
* It did a nice job of identifying potential risks and which testing approaches would target them. (This is the purpose behind using the Error Hypothesis.)
* On reviewing the requirements, it started by recapping the requirements, then stated potential edge cases and special conditions, then wrapped up with areas requiring special attention (risk-based focus). This looks like the right approach.
* Test case generation (prompt 4) returned four test cases, which at fist glance appear appropriate. They are not data-driven, but could be easily converted with the appropriate data.
  * The test cases contain a note as to which test design techniques were used in crafting the given test.
  * The validation (THEN step) for the test includes the approval/denial, loan program, and a placeholder for the interest rate. This is appropriate since I have not defined how interest rates will be calculated. (When I move to the final selection and application, I will introduce that as well.)
  * One of the test cases tests error handling on the UI. Since I haven't added that to the code, this test won't be useful - yet.
* There are scripts for data generation and the oracle, but they are not necessarily designed to be final. Pulling into VS Code with Copilot, or further prompting with ChatGPT should get a complete result (apart from a little simple programming on my part...).
  * The data generation script includes a brief note explaining the pairwise technique used to create the data. This is a nice touch. In the future, instruction could be given as to which pairwise technique to use.
  * While valid as is, the boundary values chosen represented only valid selections. In the future, it might be better to explicitly instruct it to use outside/invalid values as well.
  * The oracle uses a simple cascade to decide which, if any, of the loan programs applies and according to proper precedence. I probably overcomplicated it with a rules engine...?
* It also returned three Exploratory Testing Charters, which appear to addres the top three risks previously identified - a nice touch.
  * However, all of these charters might be better represented in code. Especially the one concerned with conccurency. It is hard for a solo testers doing exploratory testing to submit multiple applications simultaneouly using manual techniques.
* The first few prompts returned quickly, but as the experiment went further on, the model took more time to "reason." Regardless, the amount of time spent thinking would still represent a savings over manual work.
* Coverage review and refinement (prompt 5) returned a list of gaps and new test cases designed to address them.
* It also returned a reference to what should be updated in the data generation script, but unfortunately no code. Still the work should be straightforward.
* The oracle did return additional pseudo code that would need to be integrated.
* Finally, it gave some additional recommendations to increase coverage.
* The final prompt, to make any last changes and bring eveyrthing together (prompt 6), returned good recommendations and expanded the scope of testing. However, it still avoided outside boundaries that would more efficiently test off-by-one errors. Again, something to consider going forward.
* In comparing the final Exploratory Testing Charters with the original, they were similar, but the latter were less verbose. Either were acceptable, although for the experiment I kept the final ones. Here's a place where the tester's knowledge might help chose or merge them together.
  * Of note: the charter dealing with concurrency recommends using load tools. We get into the interesting blend of using tools and automation in support of exploratory testing. I didn't expect that input.
* By modifying the code slightly to change the size of the reduces set, I was able to generate 100 test cases. In fact, the lever allows me to continue to increase the number of tests. The difficulty is knowing which are valuable and which are not.

---

## Model: GPT o1

For the sake of available time, I'm skipping the o1 model. If I have time later, I may return to it for completeness sake.

---

## Model: GPT 4o


---

_Music for this experiment by:_

* _[]()_

## Conclusion

One thing I did not do through each of these experiments was to interact with the model. Where some responses were close, but not right, it might have benefitted from refinement and clarification. Although I want the prompts to stand on their own, they'll only be as good as the data I put into them - and if I'm not clear, I should be prepared to provide clarification.

**Future Experiment:** A valuable follow up would be to run mutation tests to see how effective the test suite is against the application. This could then be compared against the golden set.
