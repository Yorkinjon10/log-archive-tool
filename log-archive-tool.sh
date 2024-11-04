#!/bin/bash

#Define log levels
LOG_LEVEL_INFO='INFO'
LOG_LEVEL_WARNING='WARNING'
LOG_LEVEL_ERROR='ERROR'

LOG_FILE='./script.log'


log() {
  local level="$1"
  shift
  local message="$*"
  local timestamp=$(date +"%Y-%m-%d %H:%M:%S")

  # Log format: timestamp, log level, and message
  echo "${timestamp} [${level}] ${message}" | tee -a "${LOG_FILE}"
}


log_info() {
  log "${LOG_LEVEL_INFO}" "$*"
}

log_warning() {
  log "${LOG_LEVEL_WARNING}" "$*"
}

log_error() {
  log "${LOG_LEVEL_ERROR}" "$*"
}
