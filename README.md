# dependency-cruiser-lab
dependency-cruiserのサンプル

- コンテナに入る
  ```
  docker exec -it dependency-cruiser-lab-app-1 /bin/bash
  ```
- ビルド
  - コンテナ内で
  ```
  npm run start
  または
  npm run build
  ```
  - distフォルダにトランスパイルされたjsファイルが作成されます。
- jsファイルの実行
  - コンテナ内で
  ```
  node app/dist/content_scripts.js
  ```
  - 結果が表示されます。
