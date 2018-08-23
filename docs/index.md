
### How do I run the examples?
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



### First law examples (Jupyter notebooks)

* [Open first law example](https://github.com/varnerlab/CHEME-3130-CORNELL-F18/tree/master/examples/first_law_open) -or- [NBViewer](https://nbviewer.jupyter.org/github/varnerlab/CHEME-3130-CORNELL-F18/blob/master/examples/first_law_open/FlowCalorimeter.ipynb)
* [Closed first law example](https://github.com/varnerlab/CHEME-3130-CORNELL-F18/tree/master/examples/first_law_closed) -or- [NBViewer](https://nbviewer.jupyter.org/github/varnerlab/CHEME-3130-CORNELL-F18/blob/master/examples/first_law_closed/EvacuatedVessel.ipynb)
