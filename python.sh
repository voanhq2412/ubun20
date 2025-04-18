cd ~
curl -LsSf https://astral.sh/uv/install.sh | sh
uv self update
uv python install 3.7 3.12
uv venv ~/.virtualenvs/py37 --python 3.7
uv venv ~/.virtualenvs/py312 --python 3.12

SCRIPT_PATH="$(readlink -f "${BASH_SOURCE[0]}")"
SCRIPT_DIR="$(dirname "$SCRIPT_PATH")"
echo "Script is located in: $SCRIPT_DIR"

source ~/.virtualenvs/py37/bin/activate
uv pip install -r "$SCRIPT_DIR/requirements.txt"

source ~/.virtualenvs/py312/bin/activate
uv pip install -r "$SCRIPT_DIR/requirements.txt"
