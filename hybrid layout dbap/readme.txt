#############
NOTES
#############
**	The data used in the study is in "datas.xlsx" file in the inputs folder.
**	In the algorithms folder, the mathematical parts of the algorithms are given by "_maths.py" and the flow parts are given by "algorithms.py".
**	In the functions folder, the function "best_solution_update.py" for updating personal best solution "pbest" and global best solution "gbest", the function "check_boundary.py" for checking the limits of position vector "x" and speed vector "v" in algorithms, "mutation.py" function for mutate a random portion of the population, "statistics.py" function for calculate statistics according to the results and "berth_schedule.py" function is provided for generate the berth schedule according to the results.
**	In the graphics folder, the python codes of the graphics used in the study are given.
**	In the inputs folder, the data used in the study and the "inputs.py" python code for inclusion of this data in the python environment.
**	In the representation folder, "encoding.py" and "decoding.py" python codes to make the algorithm solutions suitable for hybrid layout DBAP, "feasible.py" python code for feasible solutions that are unfeasible under certain circumstances and "cost_calculate.py" python code is given to calculate the costs of the converted solution results.

****	All codes is integrated with "main.py". So run "main.py" python code.
#############


#############
RUN CODES
#############
1.	Open the "main.py" python code.
2.	Run the "main.py" python code.
3.	Enter the case name you want to use. If you do not know, enter "c" to see the case names in the folder "datas.xlsx".
4.	Enter the dock structure you want to use. Simply enter "f" for the flat structure and "q" for the quadratic structure.
5.	Enter the number of times you want to do it again. This is not the number of iterations. If you want to change the number of iterations, change the "inputs.py" python code inside the inputs folder.
6.	Enter the algorithm you want to use. Simply enter "F" for the Firefly Optimization, "P" for the Particle Swarm Optimization, and "H" for the Hybrid Firefly and Particle Swarm Optimization algorithms.
7.	You will see the results of the solution.
#############
