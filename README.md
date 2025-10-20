
# rl-pdm-infra

Reinforcement Learning for Predictive Maintenance Scheduling in Civil Infrastructure.

[![CI](https://img.shields.io/github/actions/workflow/status/kyle-wang/rl-pdm-infra/ci.yml)]()
[![Docs](https://img.shields.io/github/actions/workflow/status/kyle-wang/rl-pdm-infra/docs.yml?label=docs)]()
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

## ✨ Key Features
- **Multi-domain simulators**: bridges, pavements, water networks with stochastic degradation & hazards.
- **Multi‑objective reward**: availability–cost–risk via configurable weights or Pareto frontier.
- **Plug‑and‑play RL**: PPO, DQN baselines + rule-based comparators.
- **Portfolio scheduling**: allocate limited budget across assets over a planning horizon.
- **Reproducible experiments**: configs, seeds, tests, and CI.
- **Developer tools**: Docker, Makefile, API server, lightweight dashboard.

## 📦 Install
```bash
# Option A: Docker
make docker-build && make docker-run

# Option B: Local (Python 3.10+)
python -m venv .venv && source .venv/bin/activate
pip install -e .[dev]
```

## 🚀 Quickstart
```bash
# Validate data
python -m rl_pdm.data.validators --assets data/samples/assets_bridges.csv   --inspections data/samples/inspections_example.csv --interventions data/samples/interventions_catalog.csv

# Train PPO on bridge environment
python -m rl_pdm.trainers.train_ppo --config configs/ppo_bridge.yaml

# Evaluate and export schedule
python -m rl_pdm.trainers.evaluate --config configs/ppo_bridge.yaml --export schedule.csv
```

## 🧠 Problem Overview
- **Goal**: Minimize lifecycle cost & risk while maintaining service availability.
- **Action**: Choose maintenance/intervention for each asset (or subset) each period.
- **State**: Structural condition, age, traffic/usage, environment, hazard rates, budget.
- **Reward**: `w1 * (-cost) + w2 * availability - w3 * risk_penalty`.

Details in [docs/RL_FORMULATION.md](docs/RL_FORMULATION.md).

## 📊 Datasets
- Provide your own or start with samples in `data/samples/` and schemas in `data/schema/`.
- See [docs/DATASETS.md](docs/DATASETS.md) for required columns & units.

## 🔎 Evaluation
- KPIs: lifecycle cost, downtime, annual failure probability, backlog, budget adherence.
- Stress tests: hazard spikes, inspection delays, budget cuts. See [docs/EVALUATION.md](docs/EVALUATION.md).

## 🧪 Experiments
- Baselines: Rule-based thresholds vs. RL (PPO/DQN).
- Ablations: reward weights, observation noise, hazard models.
- Repro configs in `configs/`. See [docs/EXPERIMENTS.md](docs/EXPERIMENTS.md).

## 🌐 Minimal API & Dashboard
- Start API: `uvicorn rl_pdm.app.api_server:app --reload`
- Start dashboard: `python -m rl_pdm.app.dashboard`
- Endpoints documented in [docs/API.md](docs/API.md).

## 🛡️ Reliability
- Unit tests in `tests/`; run `pytest -q`.
- CI runs lint, tests, type-check. See `.github/workflows/ci.yml`.

## 📚 Citing
See [CITATION.cff](CITATION.cff).

## 📄 License
MIT — see [LICENSE](LICENSE).
