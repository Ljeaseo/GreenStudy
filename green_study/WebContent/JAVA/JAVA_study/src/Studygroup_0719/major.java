package Studygroup_0719;

public class major {
    private String majorname;
    private int grade;
    private int stno;
    
   

    public void MajorIF(String major,int grade,int stno){
        this.majorname=major;
        this.grade=grade;
        this.stno=stno;
    }

    public String getMajor() {
        return majorname;
    }

    public void setMajor(String major) {
        this.majorname = major;
    }

    public int getGrade() {
        return grade;
    }

    public void setGrade(int grade) {
        this.grade = grade;
    }

    public int getStno() {
        return stno;
    }

    public void setStno(int stno) {
        this.stno = stno;
    }

}
