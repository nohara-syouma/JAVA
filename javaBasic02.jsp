<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
    // Aさんのスコアを国語、数学、英語の順に配列へ入れる
    // ※この処理は変更しないでください。
    int[] aScore = { 100, 54, 69 };

    // Bさんのスコアを国語、数学、英語の順に配列へ入れる
    // ※この処理は変更しないでください。
    int[] bScore = { 42, 95, 60 };

    // ※以降のコメントを参考に、必要な処理を実装してください
 
    // 各平均を入れるための配列
  
    //int [] average;

    // 各平均点を計算し、配列へ計算結果を代入
   
    
    // ただし、平均点を計算する際にint型の値を小数点以下が
    // 扱える型にキャストする(キャスト演算子を使用してください)必要がある
    // そのキャストした値を割って、平均点を求める
    // (例： (double) 15 / 2 
    //       → int型の15がdouble型になり、その値を2で割るので、
    //          結果は、7.5になる)
    // (なお、キャスト演算子は、「/」演算子より計算の優先順位が高い)
    
    double language_average = (double)(aScore[0]+bScore[0])/2;
    out.println(language_average);
    
    double math_average = (double)(aScore[1]+bScore[1])/2;
    out.println(math_average);
    
    double english_average = (double)(aScore[2]+bScore[2])/2;
    out.println(english_average);
    
    double[] average = {language_average,math_average,english_average};
    out.println(average[0]);

    // 全点数の合計を求め、変数へ代入
    int sum = aScore[0]+aScore[1]+aScore[2]+bScore[0]+bScore[1]+bScore[2];
    out.println(sum);
    

    // 合計点数の平均を求めて、変数へ代入
    double sum_average = sum/6;
    out.println(sum_average);
    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題2</title>
<style>
table {
  border-collapse: collapse;
}

table th, table td {
  border: solid 1px black;
}
</style>

</head>
<body>
  <!-- 必要に応じて処理を変更してください  -->
  <h1>Java基礎 - 演習問題2</h1>
  <h2>成績一覧</h2>
  <table>
    <tr>
      <th></th>
      <th>国語</th>
      <th>数学</th>
      <th>英語</th>
    </tr>
    <tr>
      <td>Aさん</td>
      <td><% out.println(aScore[0]); %></td>
      <td><% out.println(aScore[1]); %></td>
      <td><% out.println(aScore[2]); %></td>
    </tr>
    <tr>
      <td>Bさん</td>
      <td><% out.println(bScore[0]); %></td>
      <td><% out.println(bScore[1]); %></td>
      <td><% out.println(bScore[2]); %></td>
    </tr>
  </table>

  <h2>平均点</h2>
  <p>国語：<% out.println(language_average); %></p>
  <p>数学：<% out.println(math_average); %></p>
  <p>英語：<% out.println(english_average); %></p>
  <p>合計：<% out.println(sum); %></p>
</body>
</html>