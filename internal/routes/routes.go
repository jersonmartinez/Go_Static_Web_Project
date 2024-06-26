package routes

import (
	"net/http"

	"github.com/jersonmartinez/Go_Static_Web_Project/internal/handlers"
)

func RegisterRoutes() {
	http.HandleFunc("/", handlers.HomeHandler)
	http.HandleFunc("/error", handlers.ErrorHandler)

	fs := http.FileServer(http.Dir("web/static"))

	http.Handle("/static/", http.StripPrefix("/static/", fs))
}
