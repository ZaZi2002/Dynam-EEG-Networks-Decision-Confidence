# Dynamic EEG Brain Networks During Perceptual Decision-Making

This repository contains the analysis code used in the study investigating dynamic reconfiguration of large-scale brain networks during perceptual decision-making with confidence reporting.

The analyses are based on EEG recordings and behavioral data collected during an object categorization task using natural visual stimuli. Participants categorized images of two different kinds of butterflies while reporting decision confidence on each trial.

## Repository Structure

- `preprocessing/`  
  EEG preprocessing scripts.

- `Locations/`  
  Files and scripts related to EEG source localization, including cortical source coordinates for source reconstruction and spatial visualization in figures.

- `Graph_Selection/` 
  Scripts for windowing and categorizing functional connectivity graphs prior to network and modularity analyses.

- `Processing & Features/`  
  Network modularity, dynamic network measures (flexibility, integration), and statistical analyses.

- `visualization/`  
  Scripts used to generate figures for the manuscript.

## Data Availability

The EEG and behavioral data used in this study are publicly available on Mendeley Data:

https://doi.org/10.17632/s363d72hwg.1

## Requirements

- MATLAB (R2020a or later)
- EEGLAB
- BrainStorm
- Brain Connectivity Toolbox

## Usage

Scripts are organized to follow the analysis pipeline described in the paper titled Dynamic Reconfiguration of Human Brain Networks During Evidence Accumulation in Decision-Making.  
Users should first preprocess EEG data, reconstruct the sources, then compute functional connectivity, followed by dynamic modularity and statistical graph analysis.

## License

This code is released under the MIT License.
