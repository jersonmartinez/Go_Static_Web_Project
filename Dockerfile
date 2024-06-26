FROM golang:1.22-alpine

WORKDIR /app

COPY . /app

# Instala air para hot reloading
RUN go install github.com/air-verse/air@latest

# Asegúrate de que todas las dependencias estén actualizadas y limpias
RUN go mod tidy

# Descarga todas las dependencias
RUN go mod download

# Asegúrate de instalar el paquete faltante
RUN go install github.com/spf13/viper

CMD ["air", "-c", ".air.toml"]