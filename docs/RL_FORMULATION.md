
# RL Formulation

- **State**: numeric vector per asset: `[condition, age, traffic, importance, hazard_rate, backlog]` + global budget.
- **Action**: {do_nothing, minor_repair, major_rehab, replace} per asset or prioritized subset.
- **Reward**: `-cost - risk_penalty + availability` (with weights from config).
- **Transition**: stochastic degradation + hazard shocks; intervention resets condition with noisy effectiveness.
- **Constraints**: hard budget, max concurrent outages, crew capacity.
