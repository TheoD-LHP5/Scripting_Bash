readonly NORMAL='\033[0m'
readonly BOLD='\033[1m'
readonly RED='\033[31m'
readonly GREEN='\033[32m'
readonly ORANGE='\033[33m'
readonly BLUE='\033[34m'
readonly YELLOW='\033[93m'

function success()
{
  local msg=${1}
  echo -e "[${BOLD}${GREEN} OK ${NORMAL}] ${msg}"
}

function info()
{
  local msg=${1}
  echo -e "[${BOLD}${BLUE}INFO${NORMAL}] ${msg}"
}

function warn()
{
  local msg=${1}
  echo -e "[${BOLD}${ORANGE}WARN${NORMAL}] ${msg}" 2>&1
}

function error()
{
  local msg=${1}
  echo -e "[${BOLD}${RED}FAIL${NORMAL}] ${msg}"  2>&1
}

function critical()
{
  local msg=${1}
  echo -e "[${BOLD}${RED}CRIT${NORMAL}] ${msg}"  2>&1
  exit 1
}
