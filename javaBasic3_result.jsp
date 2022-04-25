<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
    // ※必要な処理を実装してください
    request.setCharacterEncoding("UTF-8");

    // 入力値取得
    String name = request.getParameter("name");
    int len1 = name.length();
	//out.println(len1);
	
	String rname = "ロボット";
	
	
	String age = request.getParameter("age");
	int x = Integer.parseInt(age);
	
	String bloodType = request.getParameter("bloodType");
	//int blood = Integer.parseInt(bloodType);

    // ロボットからの返信用メッセージ作成
    if(len1 == 0){
    	
    	name = "名無しさん!";
    	
    }else if(rname.equals(name)){
    	
    	name = "ロボットさん！私と同じ名前ですね！";
    	//out.println(name);
    	
    }
    
    if(x==20){
    	
    	age = "私と同い年なんですね！";
    	//out.println(age);
    	
    }else if(x>20){
    	
		int difference = x-20;
		age = "私よりも"+ difference + "歳年上ですね。";
		//out.println(age);
    	
    }else if(x<20){
    	
		int difference = 20-x;
		age = "私よりも"+ difference + "歳年下ですね。";
		//out.println(age);
    	
    }
    


%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3</title>
</head>
<body>
  <h1>Java基礎 - 演習問題3</h1>

  <h2>ロボットからの返信</h2>
  <div>
    <!-- 必要に応じて処理を変更してください  -->

    <p>こんにちは,<%= name %></p>
    <p><%= age %></p>
    <p><%switch (bloodType) {
    case "typeA":
        out.println("”私もA型です！”");
        break;
    case "typeB":
        out.println("” B型の人と話すのは初めてです。 ”");
        break;
    case "typeAB":
        out.println("”私の母がAB型です。 ”");
        break;
    default:
        out.println("”私の父がO型です");
        break;
    } %></p>
    
  </div>
  <a href="javaBasic3_input.jsp">戻る</a>
</body>
</html>