export ISUBATA_DB_HOST=isucon.trial.ubuntu002
export ISUBATA_DB_USER=isucon
export ISUBATA_DB_PASSWORD=isucon

# note: Port 5000 and 5001 are used by datadog.
# activate trace
ddtrace-run gunicorn --workers=10 -b '0.0.0.0:8080' app:app
# inactivate trace
# gunicorn --workers=10 -b '0.0.0.0:8080' app:app
