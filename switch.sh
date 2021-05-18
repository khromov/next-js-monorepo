#!/bin/sh
rm public
rm styles
rm components
rm pages
ln -s sites/aftonbladet/public public
ln -s sites/aftonbladet/styles styles
ln -s sites/aftonbladet/components components
ln -s sites/aftonbladet/pages pages