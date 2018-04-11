package peri.fun.service.impl;

import peri.fun.dao.AnnouncementDao;
import peri.fun.model.Announcement;
import peri.fun.service.IAnnouncementService;

import java.util.List;
import java.util.Map;

public class AnnouncementServiceImpl implements IAnnouncementService {

    private AnnouncementDao announcementDao = new AnnouncementDao();

    @Override
    public boolean addNewAnnouncement(Announcement announcement) {
        return announcementDao.addNewAnnouncement(announcement);
    }

    @Override
    public List<Announcement> queryAnnouncement() {
        return announcementDao.queryAnnouncement();
    }

    @Override
    public boolean deleteAnnouncement(String announcementId) {
        return announcementDao.deleteAnnouncement(announcementId);
    }

    @Override
    public List<Map> queryAnnouncement(int num) {
        return announcementDao.queryAnnouncement(num);
    }
}
