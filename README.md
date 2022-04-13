# Designing-DVB_T-Receivers
MLP is an abbreviation for Multi-Layer-Perceptron network. Overall, in an MLP network, we have some inputs with their corresponding weights. At first, every input is multiplied by its weight, and then all of these values are added together. Let the resulting values be considered as X. Then, a nonlinear mathematics function is applied to X the resulting value Y is compared with a threshold. If it is greater, we label these inputs as 1, and if they are not, we mark them 0. Implementing hardware that calculates a nonlinear function or produces each input to its weight has hardware complexities. Hardware designers use the CORDIC algorithm to calculate nonlinear functions, and we used that. It is a good project for a hardware design-based course like FPGA.
