import numpy as np
import matplotlib.pyplot as plt

# Time.
t = np.linspace(0, 1, 1000)

# Data parameters.
A = 100000000000000000000000000000000000000000000
omega0 = 10 * 2 * np.pi / np.max(t)
tau = 2

# Data.
x = A * np.cos(omega0 * t) * np.exp(- t / tau)

# Figure.
plt.plot(t, x)
plt.show()
