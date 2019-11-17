# t-values range from 0 to 2
n_t = Int(2 / 0.01)
t_vals = collect(range(0, 2, length=n_t))

# place holders for tangent, normal, arclength, and curvature.
dummy_scalar_vals = t_vals;
dummy_vector_vals = ones(n_t, 2) * 0.1;

# Register t as a symbolic variable to allow symbolic differentiation
t = symbols(:t)


# ===================================================================
#                            Curve 1
# ===================================================================

x1 = t
y1 = t.^2

# Evaluate curve
x = float(x1.(t_vals))
y = float(y1.(t_vals))
pos = hcat(x, y)


# Compute curvature, arclength, tangents and normals at each t-value here.




# Draw the curve
draw_curve_helper(pos, dummy_scalar_vals, dummy_scalar_vals, dummy_vector_vals, dummy_vector_vals)
