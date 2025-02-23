using CairoMakie  # For plotting
using LinearAlgebra  # For matrix operations
using Printf  # For formatted output

# Supply and Demand Data
prices = [5, 10]
supply = [9, 24]
demand = [22, 12]

# Linear Approximation for Equilibrium
function find_equilibrium(prices, supply, demand)
    # Fit linear functions: y = mx + b
    supply_fit = polyfit(prices, supply, 1)
    demand_fit = polyfit(prices, demand, 1)

    # Solve for equilibrium price (where supply = demand)
    eq_price = (demand_fit[2] - supply_fit[2]) / (supply_fit[1] - demand_fit[1])
    eq_quantity = supply_fit[1] * eq_price + supply_fit[2]

    return eq_price, eq_quantity
end

# Compute Equilibrium
eq_price, eq_quantity = find_equilibrium(prices, supply, demand)

# Print Results
@printf("Equilibrium Price: %.2f\n", eq_price)
@printf("Equilibrium Quantity: %.2f\n", eq_quantity)

# Mortgage Calculation
function calculate_mortgage(P, r, n)
    # P = Principal, r = annual interest rate (decimal), n = number of months
    monthly_rate = r / 12
    monthly_payment = P * (monthly_rate * (1 + monthly_rate)^n) / ((1 + monthly_rate)^n - 1)
    total_cost = monthly_payment * n
    return monthly_payment, total_cost
end

# Example: $100,000 loan, 5% annual interest, 30-year mortgage
principal = 100000
annual_rate = 0.05
years = 30
months = years * 12

monthly_payment, total_mortgage_cost = calculate_mortgage(principal, annual_rate, months)

# Print Mortgage Results
@printf("Monthly Payment: $%.2f\n", monthly_payment)
@printf("Total Mortgage Cost: $%.2f\n", total_mortgage_cost)

# **Fixing adjoint error:**
# Ensure matrix operations use proper vectors
A = [1.0 2.0; 3.0 4.0]  # Example matrix
b = [5.0, 6.0]  # Example vector

x = A \ b  # Solve Ax = b correctly without `adjoint` issue

# **Plot Supply and Demand Curves**
fig = Figure(size = (800, 400))  # Fixed deprecated `resolution`
ax = Axis(fig[1, 1], title="Supply and Demand", xlabel="Price", ylabel="Quantity")

# Plot data points
scatter!(ax, prices, supply, label="Supply", color=:blue, markersize=10)
scatter!(ax, prices, demand, label="Demand", color=:red, markersize=10)

# Plot equilibrium point
scatter!(ax, [eq_price], [eq_quantity], color=:green, markersize=12, label="Equilibrium")

# Add legend
axislegend(ax)

# Show the plot
display(fig)
