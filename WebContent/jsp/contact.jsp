<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
</head>
<body>
<p>Contact Us<p>
<form action="../servlet/controlServlet" method="post">
 <table class="contact-us">
    <tbody>
      <tr>
        <td>
            <p>ご氏名</p>
        	<p><input type="text" name="name" placeholder="ご氏名" required></p>
        </td>
      </tr>
      <tr>
        <td>
        	<p>会社</p>
        	<p><input type="text" name="company" placeholder="貴社名"></p>
        </td>
      </tr>
      <tr>
        <td>
        	 <p>メールアドレス(必須)</p>
        	 <p><input type="text" name="mail" placeholder="sample@a-force.co.jp" required></p>
        </td>
      </tr>
       <tr>
        <td>
        	 <p>お問合せ内容</p>
        	 <textarea name="text" placeholder="問合せ内容はここに記入してください" required></textarea>
        </td>
      </tr>
      <tr>
        <td>
            <p>弊社関連メールマガジンをご希望の方（複数選択可）</p>
        	<input type="checkbox" name="dm" value="総合案内">総合案内
        	<input type="checkbox" name="dm" value="セミナー案内">セミナー案内
        	<input type="checkbox" name="dm" value="求人採用情報">求人採用情報
        </td>
      </tr>
      <tr>
        <td>
            <p>詳しい資料請求をご希望の方</p>
        	<input type="radio" name="dl" value="yes" checked>Yes
        	<input type="radio" name="dl" value="no">No
        </td>
      </tr>
    </tbody>
  </table>
  <input type="submit" value="送信">
</form>
</body>
</html>