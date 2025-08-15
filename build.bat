:: Recursively delete existing pyi files inside the src
:: directory to force stubgen to update them.
del /S %~dp0\src\smaths\*.pyi
:: Create the pyi files for the package to allow for
:: typehints and docstrings. These should be in the same
:: locations as the appropriate py files.
call stubgen src/smaths --include-docstrings -o src
:: Build the wheel and tar.gz files.
:: These get put in the dist folder.
call uv build