package peri.fun.service;

import peri.fun.model.Announcement;

import java.util.List;
import java.util.Map;

public interface IAnnouncementService {

    public boolean addNewAnnouncement(Announcement announcement);

    public List<Announcement> queryAnnouncement();

    public List<Map> queryAnnouncement(int num);

    public boolean deleteAnnouncement(String announcementId);

}
