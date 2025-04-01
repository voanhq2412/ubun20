cd ~
curl -LsSf https://astral.sh/uv/install.sh | sh
uv self update
uv python install 3.7 3.12
uv venv ~/.virtualenvs/py37 --python 3.7
uv venv ~/.virtualenvs/py312 --python 3.12

source ~/.virtualenvs/py37/bin/activate
uv pip install numpy
uv pip install scikit-learn
uv pip install tensorflow
uv pip install opencv-python
uv pip install pandas
uv pip install selenium
uv pip install jupyterlab
uv pip install plotly
uv pip install matplotlib
uv pip install black isort
uv pip install numba
uv pip install shapely

source ~/.virtualenvs/py312/bin/activate
uv pip install numpy
uv pip install scikit-learn
uv pip install tensorflow
uv pip install opencv-python
uv pip install pandas
uv pip install selenium
uv pip install jupyterlab
uv pip install plotly
uv pip install matplotlib
uv pip install black isort
uv pip install numba
uv pip install shapely
