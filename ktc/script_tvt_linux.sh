#!/usr/bin/env bash
python3 -m pre split --whichos linux --path pre/paths.yaml --modalities ['am']
python3 -m pre split --whichos linux --path pre/paths.yaml --modalities ['tm']
python3 -m pre split --whichos linux --path pre/paths.yaml --modalities ['dc']
python3 -m pre split --whichos linux --path pre/paths.yaml --modalities ['ec']
python3 -m pre split --whichos linux --path pre/paths.yaml --modalities ['pc']
python3 -m pre split --whichos linux --path pre/paths.yaml --modalities ['dc','ec']
python3 -m pre split --whichos linux --path pre/paths.yaml --modalities ['ec','pc']
python3 -m pre split --whichos linux --path pre/paths.yaml --modalities ['dc','pc']
python3 -m pre split --whichos linux --path pre/paths.yaml --modalities ['am','dc']
python3 -m pre split --whichos linux --path pre/paths.yaml --modalities ['am','ec']
python3 -m pre split --whichos linux --path pre/paths.yaml --modalities ['am','pc']
python3 -m pre split --whichos linux --path pre/paths.yaml --modalities ['dc','tm']
python3 -m pre split --whichos linux --path pre/paths.yaml --modalities ['ec','tm']
python3 -m pre split --whichos linux --path pre/paths.yaml --modalities ['pc','tm']
python3 -m pre split --whichos linux --path pre/paths.yaml --modalities ['am','dc','ec']
python3 -m pre split --whichos linux --path pre/paths.yaml --modalities ['am','ec','pc']
python3 -m pre split --whichos linux --path pre/paths.yaml --modalities ['am','dc','pc']
python3 -m pre split --whichos linux --path pre/paths.yaml --modalities ['tm','dc','ec']
python3 -m pre split --whichos linux --path pre/paths.yaml --modalities ['tm','ec','pc']
python3 -m pre split --whichos linux --path pre/paths.yaml --modalities ['tm','dc','pc']
python3 -m pre split --whichos linux --path pre/paths.yaml --modalities ['am','tm','dc']
python3 -m pre split --whichos linux --path pre/paths.yaml --modalities ['am','tm','ec']
python3 -m pre split --whichos linux --path pre/paths.yaml --modalities ['am','tm','pc']