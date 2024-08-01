# Self hosted Plex ecosystem

This repo is intended to upgrade the one provided by [@PeladoNerd](https://github.com/pablokbs/plex-rpi)
focusing on security and secrets protection, so the enviroment can be _safely_ exposed on a home network.

## Env variables setup

Checkout [.env.example](env.example) for all the necessary env variables

### Running the container

For every operation, the docker container needs to load the env variables from the environment file.

```bash
docker-compose  --env-file {env file path} {operation}
```

## Secrets detection

For local secret detection set-up, we will be using the package `slim-detect-secrets`:

### Set-up

1. Create a Python venv named `.env-py`

I recommend this name because it's already ignored by the `.e*` expression and it's the one used for scripts in this repo.

```bash
python -m venv .env-py && \
source .env-py/bin/activate
```

2. Install the tool

```bash
pip install git+https://github.com/NASA-AMMOS/slim-detect-secrets.git@exp
```

3. Set-up env variables 

```env
SECRETS_REGEX="Path that should be ignored for secrets detection"
SECRETS_OUTFILE="File containing the audit results"
```

4. Just run `secrets.sh` script to see the results
