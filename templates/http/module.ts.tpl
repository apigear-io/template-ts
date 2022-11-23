import { Axios } from 'axios';

{{- range .Module.Interfaces }}
class {{.Name}} {
    constructor(private http: Axios) {}
    async _post(name: string, data: any) {
        const path = `{{.Module.Name}}.{{.Name}}/${name}`;
        return this.http.post(path, data);
    }
{{- range .Operations}}
    /**
     * {{.Description}}
     */
    async {{.Name}}() {
        return this.http.post('{{.Name}}');
    }
{{- end }}
}
{{- end }}


