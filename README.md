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

- dependency-cruiser
  install
  ```terminal
  docker-compose run --rm app /bin/sh -c  "cd app && npm i --save-dev dependency-cruiser
  ```
  config init
  ```terminal
  docker-compose run --rm app /bin/sh -c  "cd app && npm npx depcruise --init
  ```
  validate
  ```terminal
  npx depcruise src
  ```
  visualize dependency-graph
  ```terminal
  npx depcruise src --include-only "^src" --output-type dot | dot -T svg >
  ```
