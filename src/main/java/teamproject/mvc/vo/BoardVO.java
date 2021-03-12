package teamproject.mvc.vo;

public class BoardVO {

    private String bno;      // 게시판 번호
    private String bgroup;   // 기획전, 노하우 인지 구분 (1 : 기획전, 2: 노하우)
    private String title;    // 제목
    private String contents; // 내용
    private String imgthum;  // 썸네일 이미지 주소
    private String imgmain;  // 메인 이미지 주소
    private String postdate; // 작성일
    private String tag;      // 해쉬태그 (최대5개)

    public String getBno() {
        return bno;
    }

    public void setBno(String bno) {
        this.bno = bno;
    }

    public String getBgroup() {
        return bgroup;
    }

    public void setBgroup(String bgroup) {
        this.bgroup = bgroup;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public String getImgthum() {
        return imgthum;
    }

    public void setImgthum(String imgthum) {
        this.imgthum = imgthum;
    }

    public String getImgmain() {
        return imgmain;
    }

    public void setImgmain(String imgmain) {
        this.imgmain = imgmain;
    }

    public String getPostdate() {
        return postdate;
    }

    public void setPostdate(String postdate) {
        this.postdate = postdate;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

}
