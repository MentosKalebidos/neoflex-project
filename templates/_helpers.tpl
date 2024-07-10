{{/*
Returns the fully qualified app name.
*/}}
{{- define "project1.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Returns the name of the chart.
*/}}
{{- define "project1.chart" -}}
{{- .Chart.Name -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "project1.labels" -}}
app.kubernetes.io/name: {{ include "project1.name" . }}
helm.sh/chart: {{ include "project1.chart" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
Returns the name of the ServiceAccount.
*/}}
{{- define "project1.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
{{- default .Release.Name .Values.serviceAccount.name -}}
{{- else -}}
{{- .Values.serviceAccount.name -}}
{{- end -}}
{{- end -}}

{{/*
Returns the name of the application.
*/}}
{{- define "project1.name" -}}
{{- .Chart.Name -}}
{{- end -}}
