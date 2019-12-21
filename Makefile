# This Makefile requires the following packages:
# * python3
# * virtualenv
# * r language
# * bioconductor

.PHONY: env run

python_version:=${shell which python3 | awk -F '"' '{print $1}'}
deps:=requirements.txt
pip:="venv/bin/pip"
python:="venv/bin/python"
env:
	@virtualenv --python=${python_version} venv
	@$(pip) install -r $(deps)

run:;@echo "Running the scripts, you should pass the name argument";
	@$(python) QC.py
	@$(python) group_comparison.py -G ${name}
	@$(python) GE_volcano.py
	@$(python) NS_ML_pipeline.py
