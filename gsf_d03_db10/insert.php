<!-- Review -->
<?php

// 入力チェック
if (
    !isset($_POST['task']) || $_POST['task'] == '' ||
    !isset($_POST['deadline']) || $_POST['deadline'] == ''
) {
    exit('paramError');
}


//POSTデータを取得
$task = $_POST['task'];
$deadline = $_POST['deadline'];
$comment = $_POST['comment'];



//DB接続
$dbn = 'mysql:dbname=gsf_d03_db10;charset=utf8;port=3306;host=localhost';
// php02_tableこれはテーブルネームになる

$user = 'root';
$pwd = 'root';

// DB接続続き
try {
    $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
    exit('dbError:' . $e->getMessage());
}


//データ登録SQL作成
$sql = 'INSERT INTO gs_bm_table(id, task, deadline, comment, indate)VALUES(NULL, :a1, :a2, :a3, sysdate())';


$stmt = $pdo->prepare($sql);
$stmt->bindValue('a1', $task, PDO::PARAM_STR);    //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue('a2', $deadline, PDO::PARAM_STR);   //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue('a3', $comment, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$status = $stmt->execute();

//４．データ登録処理後
// データ登録実行後の処理
//失敗時にエラーを出力し、成功時は登録画面に戻る
if ($status == false) {
    //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
    $error = $stmt->errorInfo();
    exit('sqlError:' . $error[2]);
} else {
    //５．index.phpへリダイレクト. うまく行ったら最初に戻ろうねってやつ
    header('Location: index.php');
}
