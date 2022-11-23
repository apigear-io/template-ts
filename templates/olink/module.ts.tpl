{{- range .Module.Interfaces }}
class {{ .Name }}Client {
    {{- range .Operations }}
    async {{.Name}}() {}
    {{- end }}
}
{{- end }}


{{- range .Module.Interfaces }}
class {{ .Name }}Service {
    {{- range .Operations }}
    async {{.Name}}() {}
    {{- end }}
}
{{- end }}




