package com.cissst.software;

import org.junit.Test;

import com.cissst.software.dao.AnnouncementDao;
import com.cissst.software.model.Announcement;

public class TestAnnouncement {

	private AnnouncementDao announcementDao=
			new AnnouncementDao();
	@Test
	public void testMethod1(){
		Announcement announcement = new Announcement();
		announcement.setAnnouncementId("ann_02");
		announcement.setAnnouncementContent("hard study");
		announcement.setMaggerId("100");
		boolean flag = 
				announcementDao.addNewAnnouncement(announcement);
		System.out.println(flag);
	}
}
