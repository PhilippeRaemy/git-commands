@echo off
::
:: This is free and unencumbered software released into the public domain.
:: 
:: Anyone is free to copy, modify, publish, use, compile, sell, or
:: distribute this software, either in source code form or as a compiled
:: binary, for any purpose, commercial or non-commercial, and by any
:: means.
:: 
:: In jurisdictions that recognize copyright laws, the author or authors
:: of this software dedicate any and all copyright interest in the
:: software to the public domain. We make this dedication for the benefit
:: of the public at large and to the detriment of our heirs and
:: successors. We intend this dedication to be an overt act of
:: relinquishment in perpetuity of all present and future rights to this
:: software under copyright law.
:: 
:: THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
:: EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
:: MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
:: IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
:: OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
:: ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
:: OTHER DEALINGS IN THE SOFTWARE.
::
:: For more information, please refer to <http://unlicense.org>
::
setlocal
git diff && for /f %%f in ('git ls-files -m') do (
    git add "%%~f" || exit / b 1
)
echo ----------------------------------------------------------------
git st
echo ----------------------------------------------------------------
echo Message (blank to abort, "edit" to open in editor):
set /p MSG=^> 
if [[%MSG%]]==[[]] (
    echo>&2 Aborting commit due to empty commit message.
    echo>&2 Changes will remain staged.
    exit /b 1
) else if [[%MSG%]]==[[edit]] (
    git ci
) else (
    git ci -m "%MSG%"
)
