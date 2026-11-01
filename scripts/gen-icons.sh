#!/bin/bash
# Icon wali tasveerein (PNG) repo me text (base64) ke roop me rakhi hain,
# kyunki repo me seedha binary file nahi jati. Build se pehle ye script
# unhe wapas asli PNG bana deti hai.
set -e
cd "$(dirname "$0")/.."

decode() {
  python3 -c "import base64,sys; open(sys.argv[1],'wb').write(base64.b64decode(open(sys.argv[2]).read()))" "$1" "$2"
  echo "icon ready: $1"
}

decode www/icon-192.png scripts/icons/icon-192.b64
decode www/icon-512.png scripts/icons/icon-512.b64
decode www/apple-touch-icon.png scripts/icons/apple-touch-icon.b64
decode scripts/icon-1024.png scripts/icons/icon-1024.b64
