
# API

## POST /optimize
- Body: `{ config_path, horizon_years?, budget_per_year? }`
- Returns: `{ schedule, kpis }`

## GET /health
- Returns `{ status: 'ok' }`
