set PATH=C:\Go\bin;%PATH%

set GOPATH=%CD%\concourse
set PATH=%CD%\concourse\bin;%PATH%

set /p FinalVersion=<final-version\version

go build -ldflags "-X github.com/concourse/fly/version.Version=%FinalVersion%" -o windows-binary/fly_windows_amd64.exe github.com/concourse/fly

certUtil -hashfile .\windows-binary\fly_windows_amd64.exe SHA1 > .\windows-binary\fly_windows_amd64.exe.sha1
