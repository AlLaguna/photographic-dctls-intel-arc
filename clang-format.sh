#!/bin/bash

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
dctl_path="$(cd "$script_dir" && pwd)"

echo "Running clang-format in:"
echo "  $dctl_path"

find "$dctl_path" -maxdepth 1 \( -name '*.cpp' -o -name '*.h' \) | xargs clang-format -i

echo "Clang-format completed."
