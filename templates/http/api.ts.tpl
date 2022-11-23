import axios from 'axios';

function createApi(baseUrl: string) {
    const api = axios.create({
        baseURL: baseUrl,
    });    
    return api;
}

export createApi;