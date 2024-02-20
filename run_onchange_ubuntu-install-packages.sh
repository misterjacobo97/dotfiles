{{ if eq .chezmoi.os "ubuntu" -}}
#!/bin/bash

{{ range .packages.ubuntu.apt-get -}}
apt-get {{. | quote}}
{{ end -}}

{{ end -}}
