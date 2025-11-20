# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### Compare and contrast One Hot and Binary encodings
  While binary uses less D-latches than one hot, Its combinatorial logic for determining the next state was more complex.
  
### Which method did your team find easier, and why?
  One-hot, beacause it didn't involve solving 4 k-maps, which leaves way more room for error and is harder to troubleshoot.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
  If I limited by the amount of memory I would use the binary representation, as it only need to store $\lfloor log_2(n+1)\rfloor$.

