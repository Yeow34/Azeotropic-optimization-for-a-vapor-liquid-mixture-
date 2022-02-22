# Azeotropic optimization for a vapor-liquid mixture using Matlab
Azeotrope, refers to a mixture of liquid and vapor that has a constant boiling point and same compositions. The components of the solution cannot be separated by simple distillation, thus it is best to be avoided if no concrete solution is avalaible (Helmenstine, 2021). It is one of the major problems being faced in the field of chemical engineering which might result in raises of total capital cost if not being resolved properly. 

In this project, the aim was to identify whether the vapor-liquid mixture contained an azeotrope using Matlab. Both the species of vapor and liquid were not known, but their physical properties were available for computation. The dataset that related temperature to the composition of both vapor and liquid were tabulated below.

|Temperature (°C)|61.1|62|63|64|63|62|61|60|59|58|57|56|55.7|
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|x|0|0.0761|0.1633|0.2955|0.5453|0.6146|0.6733|0.7265|0.7779|0.8302|0.8875|0.9620|1.000|
|y|0|0.0403|0.1007|0.2134|0.5925|0.6966|0.7731|0.8331|0.8822|0.9327|0.9597|0.9914|1.000|

where x refered to the composition of the liquid while y refered to the composition of vapor. In the code displayed, the point in which azeotrope occured was identified using some of the built-in functions. 

# Reference
1. Helmenstine , A.. (2021). What Is an Azeotrope? Definition and Examples. Retrieved from https://sciencenotes.org/what-is-an-azeotrope-definition-and-examples/
