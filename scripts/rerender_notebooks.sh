#!/bin/bash

for i in *.ipynb; do
    jupyter nbconvert --to notebook --inplace --execute "$i";
done

