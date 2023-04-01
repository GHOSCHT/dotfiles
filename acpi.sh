#!/bin/bash
for d in `cat /proc/acpi/wakeup |grep enabled |cut -b -4`; do
    echo $d >/proc/acpi/wakeup ;
done
