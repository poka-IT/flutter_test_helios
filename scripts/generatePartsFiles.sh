#!/bin/bash

set -e

dart run build_runner build --delete-conflicting-outputs

# Add typed_data import to generated file
file="lib/models/graphql/squid.graphql.dart"
if ! grep -q 'import "dart:typed_data" show Uint8List;' "$file"; then
    sed -i '1i import "dart:typed_data" show Uint8List;\n' "$file"
fi

# Replace index with indexEnum in generated file
if grep -q "indexEnum" "$file"; then
  exit 0
fi

sed -i '/enum Enum\$EventSelectColumn {/,/}/ s/\bindex\b/indexEnum/' $file
sed -i '/enum Enum\$ExtrinsicSelectColumn {/,/}/ s/\bindex\b/indexEnum/' $file
sed -i '/enum Enum\$IdentitySelectColumn {/,/}/ s/\bindex\b/indexEnum/' $file

sed -i 's/Enum\$EventSelectColumn\.index/Enum\$EventSelectColumn\.indexEnum/g' $file
sed -i 's/Enum\$ExtrinsicSelectColumn\.index/Enum\$ExtrinsicSelectColumn\.indexEnum/g' $file
sed -i 's/Enum\$IdentitySelectColumn\.index/Enum\$IdentitySelectColumn\.indexEnum/g' $file
