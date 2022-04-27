package util;

/**
 * メソッドをまとめたParamUtilクラス
 */
public class ParamUtil {

    /**
     * ポイント計算
     */
	public static int getPoint(int amount1) {
		
		
		double amount3 =  (double)amount1 * 0.01;
		
      
        return (int)amount3;
    }

    /**
     * ポイント計算(ランクあり)
     * 
     *
     */
	
	public static int getPoint(int amount1, int ran) {
		
		
		double amount3 = 0;
		
		if(ran == 1) {
			
			 amount3 =  (double)amount1 * 0.02;
			
		}else if(ran == 2) {
			
			 amount3 =  (double)amount1 * 0.03;
			
		}
      
        return (int)amount3;
    }


    /**
     * 引数に指定した文字列がnull、または空文字かを判定
     */
	 public static boolean isNullOrEmpty(String str) {
	        // todo:引数の値がnull、または空文字の場合は、true
	        // それ以外の場合は、falseを返すように処理を修正する
	    	
	    	
	    	if(str == null  || str.equals("")) {
	    		
	    		return true;
	    		
	    	}
	    	
	    	return false;
	    }

}
