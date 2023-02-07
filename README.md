# Diabetes Simulator

We measured the time constant (𝑇 [𝑚𝑖𝑛]) and glucose efficiency (𝑆 [1/𝑚𝑖𝑛]) of the glucose uptake subsystem in a subject. We utilized MATLAB and compartment models of 3 subsystems: glucose absorption, Bergman's minimal model, and insulin absorption. We validated the model using CGM and glycemia data, optimizing the parameters with Nelder-Mead method. Our analysis showed that the working time range had a significant impact on the identified parameters, and the results varied when using different time ranges. We focused on a 400-1400 min time range from the start of observation and discussed other time ranges in Appendix A. However, the differences between the observed glycemic data and modeled values indicate the influence of other factors, which are disturbance variables. To reduce this error, we recommend reducing the working time range to identify parameters with lower disturbance impact.

For the full work in Slovak, see:
[MW_BKYB-03_zadanie.pdf](https://github.com/MarekWadinger/diabetes_simulator/files/10673142/MW_BKYB-03_zadanie.pdf)
