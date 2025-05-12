.PHONY: build run test clean

# ビルド
build:
	go build -o bin/app main.go

# 実行
run:
	go run main.go

# テスト実行
test:
	go test ./...

# クリーンアップ
clean:
	rm -rf bin/
	go clean

# 依存関係の更新
deps:
	go mod tidy

# コードフォーマット
fmt:
	go fmt ./...

# リント
lint:
	golangci-lint run

# ヘルプ
help:
	@echo "利用可能なコマンド:"
	@echo "  make build  - アプリケーションをビルド"
	@echo "  make run    - アプリケーションを実行"
	@echo "  make test   - テストを実行"
	@echo "  make clean  - ビルドファイルを削除"
	@echo "  make deps   - 依存関係を更新"
	@echo "  make fmt    - コードをフォーマット"
	@echo "  make lint   - コードをリント"
	@echo "  make help   - このヘルプを表示" 