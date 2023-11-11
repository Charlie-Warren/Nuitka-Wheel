:: Create the pyi files for the package to allow for
:: typehints and docstrings. These should be in the same
:: locations as the appropriate py files.
call stubgen src/smaths --include-docstrings -o src
:: Build the wheel and tar.gz files.
:: These get put in the dist folder.
call python -m build