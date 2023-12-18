# test-cloudruntogke

# 目的：以下の内容を検証する  
検証Cloud RUNからVPCアクセスコネクター経由で内部パスするーネットワークロードバランサのGKEをアクセスして見る

# 手順
1. GKE cluster作成
2. ワークロード作成（既存Nginxサンプルで作成）
3. Internalロードバランサ作成、IP記録　参照：https://cloud.google.com/kubernetes-engine/docs/how-to/internal-load-balancing?hl=ja
4. アクセスしてみる  
   4.1 インタネットより  
   4.2 VMより
5. ./DockerfileでCloud RUN作成（VPCアクセスコネクター作成）
6. アクセスしてみる  
   6.1 VPCアクセスコネクターを外すと　　NG  
   6.2 VPCアクセスコネクターをつけると　OK
<img width="1017" alt="image" src="https://github.com/gerraywang/test-cloudruntogke/assets/59221195/33636fec-9ad4-4e31-9a8c-ad9d69661f63">

# 結論　OK
問題なくアクセスできた。
