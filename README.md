##PDDLMarsExploration
Use [editor.planning.domains](editor.planning.domains)

Mars Exploration

There are two types of probes: **single comsat** and a **group of rovers**
The *comsat (communication satellite)* remains in orbit and establishes a communication network, 
relaying messages between Earth and the *rovers* on the planet.The comsat is fixed in one of two *orientations*,
facing Earth or facing Mars. When facing Earth, the comsat may send test results back to *mission control*;
when facing Mars it may send or receive messages from a rover. Rovers explore the planet, perform tests, and
send test results back to the comsat. Rovers may move between test sites on the planet — locations that have
been identified as areas of scientific importance. At a test site, a rover may perform a *soil composition test*. A
rover will only perform a test if it receives a message from a comsat instructing it to do so. 

**Problem B1 (problemB1.pddl)**
*Initial state:* rover1 is at site1, comsat is facing earth, rover1 has no test results in its memory.
*Goal:* mission control has received the results of a soil composition test at site2.

**Problem B2 (problemB2.pddl)**
*Initial state:* rover1 is at site1, rover2 is at site2, comsat is facing mars, rover1 has no test results in its memory,
rover2 has no test results in its memory.
*Goal:* mission control has received the results of soil composition tests at site1, site2, and site3, comsat is facing
mars, rover1 is at site2, rover2 is at site1.

**Problem B3 (problemB3.pddl)**
*Initial state:* rover1 is at site1, rover2 is at site1, comsat is facing earth, rover1 has no test results in its memory,
rover2 has no test results in its memory.
*Goal:* mission control has received the results of soil composition tests at site1, site2, site3, and site4, comsat
is facing earth, rover2 has the results of a soil composition test at site5 in its memory.
