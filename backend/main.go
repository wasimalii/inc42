package main

import (
    "encoding/json"
    "net/http"
)

type Response struct {
    Message string `json:"message"`
}

func helloHandler(w http.ResponseWriter, r *http.Request) {
    response := Response{Message: "Hello from Go!"}
    json.NewEncoder(w).Encode(response)
}

func main() {
    http.HandleFunc("/api/hello", helloHandler)
    http.ListenAndServe(":8888", nil)
}

