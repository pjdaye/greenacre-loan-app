# Experiment Report: Generative AI for BDD Test Case Design

## 1. Introduction

The goal of the experiments was to evaluate various large language models for generating BDD test cases, test data generation scripts, and dynamic oracles for a complex feature (a loan application system). The experiment was conducted using a structured prompt chain that includes context setup, error hypothesis formulation, feature requirement analysis, and iterative test case generation/refinement. In this report, we summarize the results obtained with models including Falcon 3, llama 3.2, mistral (via Le Chat), Claude 3.7 Sonnet, GPT-4.5, and GPT o1 (which was skipped due to time constraints). These experiments are documented in your detailed [journal](./journal.md).

## 2. Summary of Experiments and Observations

### Falcon 3

- **Response Speed:** The model was notably slow, partly due to local hardware limitations.
- **Error Hypothesis:** Returned risk factors in the same order as provided—valid but lacking independent prioritization.
- **Test Generation:** Generated properly formatted tests but omitted scenario names. The initial generation worked well; however, the data generation script regressed in detail during later refinement steps.
- **Overall:** Falcon 3 identified diverse scenarios but omitted some parameters, leaving gaps in coverage. It suggests potential in an agent-driven or human-in-the-loop system to improve context propagation.

### llama 3.2

- **Context Awareness:** Demonstrated a good understanding of initial context; however, early responses sometimes overemphasized provided parameters.
- **Test Cases:** Returned well-formed Gherkin test cases that are closer to a data-driven approach. However, some test cases missed critical features (e.g., FHA loan program) and certain data points (e.g., co-borrower FICO).
- **Data & Oracle Scripts:** While the data generation script was runnable, it missed some parameters and the oracle code was less robust, requiring further rewriting.

### mistral (via Le Chat)

- **Risk Analysis:** Delivered a well-reasoned error hypothesis and noted critical boundary conditions (such as the $418,000 threshold) effectively.
- **Test Coverage:** Produced runnable tests with some UI validations failing on specific browsers. Coverage was low with only a handful of tests initially, but refinement improved the overall test suite.
- **Data Generation:** Generated a significant number of test cases (using pairwise techniques), though it still omitted certain aspects (like co-borrower data).
- **Overall:** Mistral demonstrated potential, with particularly interesting insights on threshold-based scenarios and some effective test refinements across prompt iterations.

### Claude 3.7 Sonnet

- **Test Cases:** Provided a set of test cases that incorporated edge case considerations (e.g., equivalence partitioning, boundary value analysis, decision tables) and used data/expected results scripts written in JavaScript.
- **Script Integration:** Required minor wiring to combine the generated scripts, but overall the output was robust with 15 test cases.
- **Limitations:** Hit chat window limits during exploratory testing charters, indicating strong performance if a paid account is used.
- **Overall:** Claude showed a strong balance between generating test cases and providing integrated scripts for data generation and oracles, although some truncation issues were noted on the free tier.

### GPT-4.5

- **Domain Expertise:** Demonstrated solid domain expertise, correctly breaking down risks and formulating test cases that align with complex feature requirements.
- **Test Generation:** Generated a high-coverage test suite with dynamic data generation scripts that produced tens of thousands of cases. However, the volume of test cases raised practical execution issues (e.g., Node heap overruns).
- **Refinement:** Refinement steps helped catch errors (such as typos in the code) and improved test granularity, but gaps remain (e.g., missing some off-by-one scenarios).
- **Overall:** GPT-4.5 produced the best overall coverage among the tested models, with the highest potential for a robust, data-driven test suite. It is, however, sensitive to input parameters and may require additional tuning to balance test quantity and quality.

### GPT o1

- **Skipped:** Due to time constraints, this model was not fully evaluated. Future experiments could revisit GPT o1 for comparative purposes if needed.

## 3. Recommendations

### Model Selection

- **Primary Choice:** **GPT-4.5** stands out as the strongest candidate given its detailed coverage, robust script generation for data and oracles, and overall domain expertise. Its ability to generate a high number of test cases (albeit sometimes too many) makes it the most promising option.
- **Secondary Options:** **Claude 3.7 Sonnet** and **mistral** are also strong contenders. Claude is particularly effective when its output size is managed (e.g., using a paid account to avoid truncation), while mistral shows potential for identifying critical thresholds and providing interesting insights.
- **Open-Source Options:** **llama 3.2** is viable if further fine-tuning is possible, but it currently falls slightly behind in terms of coverage and context integration compared to GPT-4.5.

### Prompt Refinement & Integration

- **Data Generation & Oracle Scripts:** Emphasize that outputs should return code (or pseudocode) that generates data using equivalence partitioning, boundary value analysis, and pairwise testing. Also, the oracle should be dynamic or pre-compute expected outcomes. Refining these prompts further will be essential for addressing gaps in test coverage.
- **Human-in-the-Loop Checkpoints:** Consider integrating agentic or human-in-the-loop checkpoints to clarify or refine responses. This is particularly important when models tend to reiterate provided parameters rather than expanding on them.
- **Handling Large Test Sets:** With GPT-4.5 generating a vast number of test cases, strategies are needed to filter or segment the tests so that execution environments (e.g., Playwright) do not become overwhelmed.

### Future Experimentation

- **Mutation Testing:** As mentioned in your journal, running mutation tests against the generated suite would provide quantitative insights into its effectiveness compared to the gold standard.
- **Iterative Clarification:** As models sometimes require additional clarifications, it is advisable to iterate with follow-up prompts or manual interventions until the desired granularity and completeness are achieved.
- **Model Combination:** A multi-model approach might yield even better results, leveraging the strengths of each model (for example, using GPT-4.5 for comprehensive coverage and Claude for detailed script generation).

## 4. Conclusion

Your experiments have provided valuable insights into the strengths and weaknesses of different models in generating comprehensive BDD test cases. GPT-4.5 emerges as the top candidate, with Claude and mistral also showing considerable promise. Key areas for improvement include refining data generation scripts, ensuring all feature parameters are covered, and managing the volume of generated test cases. Future work should explore mutation testing, human-in-the-loop refinements, and possibly a multi-model integration strategy to leverage the best capabilities of each model.

This report, based on your detailed [journal](./journal.md), outlines a clear path forward in selecting and refining the model for ongoing testing automation experiments.

_This report was generated by ChatGPT o3-mini from a "conversation" and the notes taken during experiments with the various models._
