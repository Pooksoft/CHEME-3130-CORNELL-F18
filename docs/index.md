
## How do I run the examples?
The examples presented in the CHEME 3130 lectures are available as [Jupyter notebooks](http://jupyter.org)
encoded in the [Julia](https://julialang.org) programming language. [Jupyter notebooks](http://jupyter.org)
require [Python](https://www.python.org). All of these technologies are platform independent and open source,
and can be easily installed on your local machine.

* See [here](http://jupyter.org/install.html) to install [Jupyter notebooks](http://jupyter.org) on your local machine.
[Jupyter notebooks](http://jupyter.org) require a working [Python](https://www.python.org) installation.
We __highly__ recommend the [Anaconda distribution](https://www.anaconda.com/download/#macos) implementation.
Once you have [Jupyter notebooks](http://jupyter.org) installed, see [here](https://jupyter.readthedocs.io/en/latest/running.html#running)
for help running a notebook.

* See [here](https://julialang.org/downloads/) to install [Julia](https://julialang.org) locally.
Once [Julia](https://julialang.org) has been installed, you'll need to add the [IJulia](https://github.com/JuliaLang/IJulia.jl) package to run [Julia](https://julialang.org) code in a [Jupyter notebook](http://jupyter.org).
To install [IJulia](https://github.com/JuliaLang/IJulia.jl), first [start Julia](https://docs.julialang.org/en/stable/manual/getting-started/)
and then issue the command at the REPL prompt:

```
  julia> using Pkg; Pkg.add("IJulia")
```

* (Download the example codes from the CHEME 3130 GitHub site and away you go!)[https://github.com/varnerlab/CHEME-3130-CORNELL-F18/tree/master/examples]

## I don't want to do all that. Can I just look at the examples?
Sure! We have linked the GitHub code to [NBViewer](https://nbviewer.jupyter.org) which allows you to see the examples (but you can't change anything).

### First law examples

* [Open first law example](https://nbviewer.jupyter.org/github/varnerlab/CHEME-3130-CORNELL-F18/blob/master/examples/first_law_open/FlowCalorimeter.ipynb)
* [Closed first law example](https://nbviewer.jupyter.org/github/varnerlab/CHEME-3130-CORNELL-F18/blob/master/examples/first_law_closed/EvacuatedVessel.ipynb)

### Equations of State (EOS)
* [Estimate _v_ for n-butane using Newton's Method for vDW](https://github.com/varnerlab/CHEME-3130-CORNELL-F18/blob/master/examples/newtons_method/Newton.ipynb)
* [vdW simulation for Carbon Dioxide as a function of temperature T and pressure P](https://github.com/varnerlab/CHEME-3130-CORNELL-F18/blob/master/examples/eos_model/CubicEOS.ipynb)

### Estimate _stuff_ from Experimental Data
* [Estimate the second and third Virial coefficients for Cyclohexane from data](https://nbviewer.jupyter.org/github/varnerlab/CHEME-3130-CORNELL-F18/blob/master/examples/estimate_B_C/EstimateVCoeff.ipynb)
* [Estimate the compressibility _Z_ for Nitrogen as a function temperature T](https://github.com/varnerlab/CHEME-3130-CORNELL-F18/blob/master/examples/compressibilty/Compressibility.ipynb)
* [Estimate the Latent Heat of Vaporization of R134a from (T,P) saturation data](https://nbviewer.jupyter.org/github/varnerlab/CHEME-3130-CORNELL-F18/blob/master/examples/cc_eqn/CCEqn_deltaH.ipynb)
