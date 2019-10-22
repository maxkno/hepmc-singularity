# HepMC Singularity


[![https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg](https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg)](https://singularity-hub.org/collections/3671)

Singularity build for the [HepMC](https://gitlab.com/tjansse/hep-monte-carlo) python package to use on cuda machines

Prinstalled Sherpa and HepMC data format

## Pulling from Singularity Hub

Pull the container to and optionally provide a custom name:

```bash
singularity pull shub://maxkno/hepmc-singularity
singularity pull --name avocado_container.sif shub://maxkno/hepmc-singularity
```

### Usage & additional python packages

Easiest usage via: 
```bash
CUDA_VISIBLE_DEVICES=0 singularity exec --nv HepMC_Sherpa.si python3 your_skript.py
```

If additional packages need to be linked, first start a terminal in the container:

```bash
CUDA_VISIBLE_DEVICES=0 singularity exec --nv HepMC_Sherpa.si /bin/bash
```

then simply add to the PYTHONPATH:
```bash
PYTHONPATH='/home/max.knobbe/workspace/hep-monte-carlo/src':$PYTHONPATH
PYTHONPATH='/usr/local/Sherpa/lib/python3.6/site-packages':$PYTHONPATH
export PYTHONPATH
```

## Building from source
To circumvent bugs with prebuild nvidia containers, the Image first has to build into a sandbox container and than transformed into an actual singularity image.

Build the image with 
```bash
https://gitlab.com/max.knobbe/hepmc-singularity.git
make image && make final
```


## Helper files used 
