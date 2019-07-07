<?php
//必ずsession_startは最初に記述


//SESSIONを初期化（配列を空にする）


//Cookieに保存してあるsessionIDの保存期間を過去にして破棄
if (isset($_COOKIE[session_name()])) {
    setcookie(session_name(), '', time() - 42000, '/');
}

//サーバ側での、セッションIDの破棄


//処理後，ログイン画面へリダイレクト
header();
exit();
