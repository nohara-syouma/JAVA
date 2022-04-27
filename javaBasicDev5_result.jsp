<%@ page import="util.ParamUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

  <!-- ※下記のコメントを参考に、必要に応じて処理を変更してください  -->
<%

    // 入力値を取得
    request.setCharacterEncoding("UTF-8");
    String product1 = request.getParameter("product1");
    String product2 = request.getParameter("product2");
    String amount1 = request.getParameter("amount1");
    String amount2 = request.getParameter("amount2");
    
    String selct = request.getParameter("rank");
    
    String btn = request.getParameter("btn");

    // 数値に変換
    
    int amount3;
    int amount4;
    
    if(ParamUtil.isNullOrEmpty(amount1)){
    	 amount3 = 0;
    
    }else{
    	
    		 amount3 = Integer.parseInt(amount1);
    	
    }
    
    if(ParamUtil.isNullOrEmpty(amount2)){
    	
        	 amount4 = 0;
        
        
        }else{
        	
        		 amount4 = Integer.parseInt(amount2);
        	
        }
    
    
        
    

    // ポイントを定義
    int point1 = 0;
    int point2 = 0;
    
    int ran1 = 0;
    
   // int ran2 = 0;
    //int ran3 = 0;

    // メソッドを呼んでポイントを取得
    
    // point1 = ParamUtil.getPoint(amount3);
    
	if(selct.equals("1")){
    	
    	ran1 = Integer.parseInt(selct);
    	
    }else if(selct.equals("2")){
    	
    	ran1 = Integer.parseInt(selct);
    }

	if(ran1 == 0){
		
		point1 = ParamUtil.getPoint(amount3);
		point2 = ParamUtil.getPoint(amount4);
		
	}else {
		
		point1 = ParamUtil.getPoint(amount3,ran1);
		point2 = ParamUtil.getPoint(amount4,ran1);
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題5(発展)</title>
<style>
.right {
  text-align: right;
}
</style>
</head>
<body>
  <h1>Java基礎 - 演習問題5(発展)</h1>

  <h2>計算結果</h2>

  <table border="1">
    <tr>
      <th>商品</th>
      <th>金額</th>
      <th>ポイント</th>
    </tr>
    <tr>
      <td><%= product1 %></td>
      <td class="right"><%= amount3 %></td>
      <td class="right"><%= point1 %></td>
    </tr>
    <tr>
      <td><%= product2 %></td>
      <td class="right"><%= amount4 %></td>
      <td class="right"><%= point2 %></td>
    </tr>
  </table>

  <a href="javaBasicDev5_input.jsp">戻る</a>
</body>
</html>