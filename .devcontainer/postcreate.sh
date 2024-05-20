
# 
# # Post Repo / Workspace Creation Script
# 

set -eo pipefail

# Install submodules (if any)
git submodule update --init --recursive 
