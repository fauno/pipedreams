#!/bin/bash
# Compares stdin to a known integer
# 
# © 2016 fauno <fauno@endefensadelsl.org>
#
# Copying and distribution of this file, with or without modification,
# are permitted in any medium without royalty provided the copyright
# notice and this notice are preserved.  This file is offered as-is,
# without any warranty.

test "$(cat)" -eq $1
