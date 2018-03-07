package com.cissst.software.service;

import java.util.List;
import java.util.Map;

import com.cissst.software.model.Announcement;

public interface IAnnouncementService {

	public boolean addNewAnnouncement(Announcement announcement);

	public List<Announcement> queryAnnouncement();

	public List<Map> queryAnnouncement(int num);

	public boolean deleteAnnouncement(String announcementId);

}
