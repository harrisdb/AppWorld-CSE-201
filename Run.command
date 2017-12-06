#!/bin/bash
Eval "grails clean"
Eval "grails run-app"
Eval "cd .."
Eval "cd .."
Eval "open http://localhost:8080"