package kr.co.taihan.front.common.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class DateUtil {

	public static String TYPE_DATE = "yyyyMMdd";
	public static String TYPE_TIME = "HHmmss";
	public static String TYPE_DATETIME = "yyyyMMddHHmmss";
	public static String TYPE_YEAR = "yyyy";
	public static String TYPE_MONTH = "MM";
	public static String TYPE_DATE_HOUR = "yyyyMMddHH";
	public static String TYPE_DATE_HOUR_MIN = "yyyyMMddHHmm";

	public static int WARP_TYPE_YEAR = Calendar.YEAR;
	public static int WARP_TYPE_MONTH = Calendar.MONTH;
	public static int WARP_TYPE_DAY = Calendar.DATE;
	public static int WARP_TYPE_HOUR = Calendar.HOUR;
	public static int WARP_TYPE_MIN = Calendar.MINUTE;
	public static int WARP_TYPE_SEC = Calendar.SECOND;

	public static int WEEK_TYPE_SUNDAY = Calendar.SUNDAY;
	public static int WEEK_TYPE_MONDAY = Calendar.MONDAY;
	public static int WEEK_TYPE_TUESDAY = Calendar.TUESDAY;
	public static int WEEK_TYPE_WEDNESDAY = Calendar.WEDNESDAY;
	public static int WEEK_TYPE_THURSDAY = Calendar.THURSDAY;
	public static int WEEK_TYPE_FRIDAY = Calendar.FRIDAY;
	public static int WEEK_TYPE_SATURDAY = Calendar.SATURDAY;

	/**
	 * 현재시간을 문자열로 반환
	 * @param type
	 * @return
	 */
	public static String getDate(String type){
		DateFormat df = new SimpleDateFormat(type);
		return df.format(Calendar.getInstance().getTime());
	}
	public static String getDateTime(){
		return getDate(TYPE_DATETIME);
	}
	public static String getDate(){
		return getDate(TYPE_DATE);
	}
	public static String getTime(){
		return getDate(TYPE_TIME);
	}

	/**
	 * 현재시간에 warpType별로 시간을 더하거나 뺸 문자열을 반환
	 * @param type
	 * @param warpType
	 * @param value
	 * @return
	 */
	public static String getDateWarp(String type, int warpType, int value){
		Calendar local = Calendar.getInstance();
		local.add(warpType, value);
		DateFormat df = new SimpleDateFormat(type);
		return df.format(local.getTime());
	}

	public static String getDateWarp(String date, String type, int warpType, int value){
		Calendar local = Calendar.getInstance();
		try{
			local.setTime(new SimpleDateFormat(type).parse(date));
			local.add(warpType, value);
		}catch(Exception e ){
			throw new RuntimeException(e);
		}
		DateFormat df = new SimpleDateFormat(type);

		return df.format(local.getTime());
	}

	/**
	 * 요일 여부
	 */
	public static boolean isDayOfTheWeek(String date, int weekType){
		Calendar local = Calendar.getInstance();
		local.set(Integer.parseInt(date.substring(0,4)), Integer.parseInt(date.substring(4,6))-1, Integer.parseInt(date.substring(6,8)));
		DateFormat df = new SimpleDateFormat(TYPE_DATE);

		if(weekType==local.get(Calendar.DAY_OF_WEEK)){
			return true;
		}else{
			return false;
		}
	}

	public static int getDayOfTheWeek(String date){
		Calendar local = Calendar.getInstance();
		local.set(Integer.parseInt(date.substring(0,4)), Integer.parseInt(date.substring(4,6))-1, Integer.parseInt(date.substring(6,8)));

		return local.get(Calendar.DAY_OF_WEEK);
	}

	public static int intervalDate(String date1, String date2){
		date1 = date1.substring(0,8);
		date2 = date2.substring(0,8);
		Calendar local1 = Calendar.getInstance();
		Calendar local2 = Calendar.getInstance();
		try{
			local1.setTime(new SimpleDateFormat(TYPE_DATE).parse(date1));
			local2.setTime(new SimpleDateFormat(TYPE_DATE).parse(date2));


		}catch(Exception e ){
			throw new RuntimeException(e);
		}

		return (int)((local2.getTimeInMillis()-local1.getTimeInMillis())/(24 * 60 * 60 * 1000));
	}

    public static Date parseDate(String date, String format) {
        try {
            SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");
            return formatter.parse(date);
        } catch (ParseException ex) {
            throw new RuntimeException(ex);
        }
    }

    public static Date addDays(Date date, int day) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.DATE, day);
        return calendar.getTime();
    }

    public static String getWeekOfTheDayStr(int week){
    	final String[] dayArray = { "일", "월", "화", "수", "목", "금", "토" };

		return dayArray[week-1];
	}


    public static String getDateDayYyyyMMdd(String date) throws Exception {


        String day = "" ;

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd") ;
        Date nDate = dateFormat.parse(date) ;

        Calendar cal = Calendar.getInstance() ;
        cal.setTime(nDate);

        int dayNum = cal.get(Calendar.DAY_OF_WEEK) ;



        switch(dayNum){
            case 1:
                day = "일";
                break ;
            case 2:
                day = "월";
                break ;
            case 3:
                day = "화";
                break ;
            case 4:
                day = "수";
                break ;
            case 5:
                day = "목";
                break ;
            case 6:
                day = "금";
                break ;
            case 7:
                day = "토";
                break ;

        }

        return day ;
    }

    /**
     * yyyyMMdd -> yyyy.MM.dd로 변경
     * @param date
     * @param dateType
     * @return
     * @throws ParseException
     */
    public static String getDateformat(String date, String dateType) throws ParseException{

    	String result = "";
    	if (date != null && dateType != null){

    		SimpleDateFormat transFormat = null;
    		SimpleDateFormat transFromFormat = null;
    		if (date.length() == 8){
    			transFormat = new SimpleDateFormat("yyyyMMdd");
    			transFromFormat = new SimpleDateFormat("yyyy"+dateType+"MM"+dateType+"dd");

    			Date to = transFormat.parse(date);
    	    	result = transFromFormat.format(to);

    		}
    		else if(date.length() == 14) {
    			transFormat = new SimpleDateFormat("yyyyMMddHHmmss");
    			Date to = transFormat.parse(date);

    			transFromFormat = new SimpleDateFormat(dateType);
    	    	result = transFromFormat.format(to);
    		}

    	}

    	return result;
    }

    public static List<String> getDateList(String fromDate, String toDate, String format) throws Exception {
    	List<String> dateList = new ArrayList<String>();

    	DateFormat df = new SimpleDateFormat("yyyyMMdd");

        /*System.out.println(getDateWarp("yyyyMMdd", Calendar.MONTH, 0));*/

        Date d1 = df.parse( fromDate.replaceAll(format, "") );
        Date d2 = df.parse( toDate.replaceAll(format, "") );

        Calendar c1 = Calendar.getInstance();
        Calendar c2 = Calendar.getInstance();

        //Calendar 타입으로 변경 add()메소드로 1일씩 추가해 주기위해 변경
        c1.setTime( d1 );
        c2.setTime( d2 );

        //시작날짜와 끝 날짜를 비교해, 시작날짜가 작거나 같은 경우 출력
        DateFormat sdFormat = new SimpleDateFormat("yyyy-MM-dd");

        while( c1.compareTo( c2 ) !=1 ){
        	dateList.add(sdFormat.format(c1.getTime()));

	        //시작날짜 + 1 일
	        c1.add(Calendar.DATE, 1);
        }

    	return dateList;
    }

    public static Date getLastDateOfMonth(Date date) {
		Calendar cal = Calendar.getInstance();
    	cal.setTime(date);

    	cal.set(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH), cal.getActualMaximum(Calendar.DAY_OF_MONTH));
		return cal.getTime();
	}

    /**
	 * 해당 연도 달의 마지막 날을 구한다.
	 */
	public static Date getLastDateOfMonth(int year, int month) {
		Calendar cal = Calendar.getInstance();

		cal.set(Calendar.YEAR, year);
    	cal.set(Calendar.MONTH, month-1);
    	cal.set(Calendar.DATE, cal.getActualMaximum(Calendar.DAY_OF_MONTH));

		return maximize(cal.getTime());
	}

	/**
	 * 시,분,초를 모두 최대치로 초기화한다.
	 */
	public static Date maximize(Date date) {
		Calendar cal = Calendar.getInstance();
    	cal.setTime(date);

    	cal.set(Calendar.HOUR_OF_DAY, 23);
    	cal.set(Calendar.MINUTE, 59);
    	cal.set(Calendar.SECOND, 59);

		return cal.getTime();
	}

}
