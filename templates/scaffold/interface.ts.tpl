import * as api from '../api'

export class {{.Interface.Name}} implements api.I{{.Interface.Name}} {
  {{ range .Interface.Properties }}
  {{ .Name }} = {{ tsDefault "api." . }}
  {{- end }}
  {{ range .Interface.Methods }}
  {{ .Name }}({{ tsParams "api." .Inputs }}): {{ tsReturn "api." .Output }} {
    return {{ tsDefault "api." .Output }}
  }
  {{ end }}
}

