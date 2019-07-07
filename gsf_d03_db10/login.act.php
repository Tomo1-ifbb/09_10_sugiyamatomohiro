<?php
//最初にSESSIONを開始！！


//0.外部ファイル読み込み


//1.  DB接続&送信データの受け取り


//2. データ登録SQL作成
$sql = '';
$stmt = $pdo->prepare();
$stmt->bindValue(':lid', $lid, PDO::PARAM_STR);
$stmt->bindValue(':lpw', $lpw, PDO::PARAM_STR);
$res = $stmt->execute();

//3. SQL実行時にエラーがある場合
if ($res == false) {
    queryError($stmt);
}

//4. 抽出データ数を取得


//5. 該当レコードがあればSESSIONに値を代入
if ($val['id'] != '') {
    // ログイン成功の場合はセッション変数に値を代入
    header();
} else {
    //ログイン失敗の場合はログイン画面へ戻る
    header();
}

exit();
