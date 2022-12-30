# Simple Galaxy Simulation utilizng Barnes-Hut simulation

This is a hobby project implementing Barnes-Hut simulation (hopefully in 3D using **OpenGl**).

The simulation entails calculating [Newton's law of universal gravity](https://en.wikipedia.org/wiki/Newton%27s_law_of_universal_gravitation)

$$
\vec{F}_{\text{Gravity}} = -\frac{Gm_{1}m_{2}}{\vec{|r|}^2}\hat{r}
$$

for each body in the simulation. This is an *n*-body problem that would require $\mathcal{O}(n^2)$ complexity using a *naive* approach.

Hence I will try to implement the [Barnet-Hut simulation](https://en.wikipedia.org/wiki/Barnes%E2%80%93Hut_simulation), which is a smart scheme that allows us to compute the *n*-body problem with complexity $\mathcal{O}(n\log{(n)})$.

**TODO:** *Add some more information about Barnes-Hut and add HOW TO once some code is in place*.
