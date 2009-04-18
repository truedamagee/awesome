#!/bin/sh

echo "/* This file is autogenerated by $0 - do not edit */"
echo

while read atom
do
    echo xcb_atom_t $atom\;
done < $1

echo
echo 'static atom_item_t ATOM_LIST[] ='
echo '{'

while read atom
do
    echo '    { "'$atom'", sizeof("'$atom'") - 1, &'$atom' },'
done < $1

echo '};'
