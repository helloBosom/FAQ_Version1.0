package com.cissst.software.service.impl;

import com.cissst.software.dao.AnnouncementDao;
import com.cissst.software.model.Announcement;
import com.cissst.software.service.IAnnouncementService;

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
