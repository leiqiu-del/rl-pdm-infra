
# Architecture

[Data] → [Env Simulator] → [RL Algorithm] → [Scheduler] → [Evaluation]

- **Env Simulator**: degradation models (Markov & physics-informed), hazard events, intervention effects.
- **RL**: PPO, DQN with shared interface; observation normalization and action masking for budget.
- **Scheduler**: portfolio allocator enforces budget & downtime constraints.
- **Evaluation**: KPIs + stress testing + Monte Carlo rollout.
