## Running Streamlit inside a virtual environment (venv)
## This allows you to manage dependencies and isolate your Streamlit projects.
## cd to your project directory before running this script

# Create a virtual environment (if you haven't already)
python3 -m venv streamlit-env

# Activate the virtual environment
source streamlit-env/bin/activate

# Verify if the virtual environment is activated
# The output should point to the python executable inside the streamlit-env directory
which python

# Upgrade pip to the latest version
pip install --upgrade pip

# Install Streamlit
pip install streamlit

# Verify the installation
streamlit --version

# Test if able to run a simple Streamlit app
# This will open a sample Streamlit app in your default web browser
streamlit hello

# To run your Streamlit app, use the following command:
# streamlit run your_app.py
# Replace your_app.py with the path to your Streamlit application file.

# To stop using the virtual environment, run:
# deactivate

# To delete the virtual environment, simply remove the streamlit-env directory:
# rm -rf streamlit-env
# Note: Make sure to activate the virtual environment each time you want to work on your Streamlit project.