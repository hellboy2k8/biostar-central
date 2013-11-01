#!/bin/bash

# stop on errors or missing environment variables
set -ue

# setting default environment variables

# hostname for the development server
BIOSTAR_HOSTNAME=${BIOSTAR_HOSTNAME:="localhost"}

# the settings files to be used
DJANGO_SETTINGS_MODULE=${DJANGO_SETTINGS_MODULE:="settings.local"}

# the python executable to invoke
PYTHON=python

# the level of verbosity for django commands
VERBOSITY=${VERBOSITY:="1"}

# the django manager to run
DJANGO_ADMIN=manage.py

if [ $# == 0 ]; then
    echo ''
    echo 'Usage:'
    echo ''
    echo "  $ $(basename $0) <command>"
    echo ''
    echo 'Multiple commands may be used on the same line:'
    echo ''
    echo "  $ $(basename $0) init import run"
    echo ''
    echo 'Commands:'
    echo ''
    echo '  init     - initializes the database'
    echo '  import   - imports a data fixture'
    echo '  dump     - dumps the current database as a data fixture'
    echo '  delete   - removes the sqlite database (sqlite specific)'
    echo '  run      - runs server'
    echo '  test     - runs all tests'
    echo '  env      - shows all customizable environment variables'
    echo ''
    echo 'Use environment variables to customize settings. See docs.'
fi


while (( "$#" )); do

	if [ "$1" = "init" ]; then
        echo "*** initializing server on $BIOSTAR_HOSTNAME"
        #$PYTHON_EXE $DJANGO_ADMIN syncdb -v $VERBOSITY --noinput --settings=$DJANGO_SETTINGS_MODULE
        #$PYTHON_EXE $DJANGO_ADMIN migrate main.server --settings=$DJANGO_SETTINGS_MODULE
        #$PYTHON_EXE $DJANGO_ADMIN migrate djcelery --settings=$DJANGO_SETTINGS_MODULE
        #$PYTHON_EXE $DJANGO_ADMIN migrate kombu.transport.django --settings=$DJANGO_SETTINGS_MODULE
        #echo "*** collecting static files"
        #$PYTHON_EXE $DJANGO_ADMIN collectstatic -v $VERBOSITY --noinput --settings=$DJANGO_SETTINGS_MODULE
    fi

shift
done