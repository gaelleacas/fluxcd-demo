{{- define "mychart.labels" }}
  labels:
    generator: helm
    date: {{ now | htmlDate }}
{{- end }}

{{- define "app.name" -}}
    {{- default .Chart.Name }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "app.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

# {{/*
# Define the docker image.
# */}}

# {{- define "app.image" -}}
# {{- printf "docker.io/khaly/app-node:%s" (default "latest" .Values.image.tag) -}}
# {{- end -}}