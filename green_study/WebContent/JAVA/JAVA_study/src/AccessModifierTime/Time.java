package AccessModifierTime;

public class Time {
    //속성
    private int hour;

    private int minute;

    private int second;

    // 생성자
    Time(int hour, int minute, int second) {
        setHour(hour);
        setMinute(minute);
        setSecond(second);
    }

    public int getHour() {
        return hour;
    }

    public void setHour(int hour) {
        //시간이 0~23시 일때만 hour 변수에 저장.
        if(hour>=0 && hour<=23){
            this.hour = hour;
        }
    }

    public int getMinute() {
        return minute;
    }

    public void setMinute(int minute) {
        //분이 0~59 일때만 minute 변수에 저장.
        if(minute>=0 && minute<=59){
            this.minute = minute;
        }
    }

    public int getSecond() {
        return second;
    }

    public void setSecond(int second) {
        //초가 0~59 일때만 second 변수에 저장.
        if(second>=0 && second<=59){
            this.second = second;
        }
    }


}
