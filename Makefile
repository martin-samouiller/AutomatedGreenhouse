.PHONY: all build test clean

all: build

build: build-frontend build-backend build-firmware

build-frontend:
    cd frontend && npm install && npm run build

build-backend:
    cd backend && go build ./cmd/server

build-firmware:
    cd firmware && pio run

test: test-frontend test-backend test-firmware

clean:
    rm -rf frontend/dist
    rm -rf backend/build
    rm -rf firmware/.pio