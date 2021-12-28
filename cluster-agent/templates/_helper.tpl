{{- define "sensitiveData" -}}
{{ (get . "data") | trim | b64enc | required (get . "message") }}
{{- end -}}
{{- define "cluster-agent.Name" -}}
{{- if .Values.nameOverride -}}
{{- .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name "appdynamics-cluster-agent" | trunc 63 -}}
{{- end -}}
