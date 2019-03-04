#!/bin/bash

# Convierte la libreta a slides

# jupyter-nbconvert --to slides intro-docker.ipynb --reveal-prefix=reveal.js
jupyter-nbconvert --to slides intro-docker.ipynb --reveal-prefix="https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.1.0"
