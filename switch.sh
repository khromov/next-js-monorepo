#!/bin/sh
rm public
rm styles
rm components
rm pages
ln -s sites/$1/public/ public
ln -s sites/$1/styles/ styles
ln -s sites/$1/components/ components
ln -s sites/$1/pages/ pages
echo "OK"