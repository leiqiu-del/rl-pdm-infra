
# Data Guide

Use the schemas in `data/schema/` to validate your CSV/Parquet files. Minimum tables:
- `assets`: static attributes per asset
- `inspections`: time-stamped condition observations
- `interventions`: catalog of maintenance actions, costs, durations, effects

Run validators:
```bash
python -m rl_pdm.data.validators --assets data/samples/assets_bridges.csv   --inspections data/samples/inspections_example.csv --interventions data/samples/interventions_catalog.csv
```
