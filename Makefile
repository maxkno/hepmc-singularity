Singularity=Singularity.HepMC

image:
	sudo singularity build --sandbox HepMC_Sherpa $(Singularity)

final:
	sudo singularity build HepMC_Sherpa HepMC_Sherpa.simg
