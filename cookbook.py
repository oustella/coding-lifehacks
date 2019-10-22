# Print the entire numpy array
np.set_printoptions(threshold=np.nan)

### Pandas related ###
# Convert a pandas df column to list
df['col'].values.tolist()

# Create a negation mask
mask = ~((criteria1)&{criteria2})
df[mask]

### Plotting ###
# Set order of legend to be in sync with the lines on your graph
fig, ax = plt.subplots(figsize=(10,8))
for i, row in rx_df.iterrows():
    ax.plot(row, 'o-', label = drugs[i])

handles, labels = ax.get_legend_handles_labels()
# sort both labels and handles by labels
order = [3,0,2,1] # list the index of label in the order you want
ax.legend([handles[idx] for idx in order], [labels[idx] for idx in order])


### Jupyter Notebook related ###
# Print multiple outputs in one cell
from IPython.core.interactiveshell import InteractiveShell
InteractiveShell.ast_node_interactivity = "all"

# Reload a changed helper function
import sys, importlib
importlib.reload(sys.modules['foo'])
from foo import bar

# Convert Jupyter notebook to .py script
$ jupyter nbconvert --to script notebook.ipynb
$ jupyter nbconvert notebook.ipynb --to pdf
$ jupyter nbconvert notebook.ipynb --to html --template basic

