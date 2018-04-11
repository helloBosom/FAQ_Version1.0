package peri.fun.model;

import java.util.Date;

public class Announcement {

    private String announcementId;
    private String announcementContent;
    private String maggerId;
    private Date publishTime;

    public String getAnnouncementId() {
        return announcementId;
    }

    public void setAnnouncementId(String announcementId) {
        this.announcementId = announcementId;
    }

    public String getAnnouncementContent() {
        return announcementContent;
    }

    public void setAnnouncementContent(String announcementContent) {
        this.announcementContent = announcementContent;
    }

    public String getMaggerId() {
        return maggerId;
    }

    public void setMaggerId(String maggerId) {
        this.maggerId = maggerId;
    }

    public Date getPublishTime() {
        return publishTime;
    }

    public void setPublishTime(Date publishTime) {
        this.publishTime = publishTime;
    }

    @Override
    public String toString() {
        return "Announcement [announcementId=" + announcementId + ", announcementContent=" + announcementContent
                + ", maggerId=" + maggerId + ", publishTime=" + publishTime + "]";
    }

}
