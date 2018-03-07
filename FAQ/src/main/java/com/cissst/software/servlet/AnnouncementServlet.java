package com.cissst.software.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cissst.software.model.Announcement;
import com.cissst.software.service.IAnnouncementService;
import com.cissst.software.service.impl.AnnouncementServiceImpl;

/**
 * ǰ�˿�����--����������
 * 
 * @author lenovo
 *
 */
public class AnnouncementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// ����ҵ���߼������
	private IAnnouncementService announcementService = new AnnouncementServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		execute(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		execute(request, response);
	}

	private void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String mesthodName = request.getParameter("method");
		if ("add".equals(mesthodName)) {
			add(request, response);
		} else if ("delete".equals(mesthodName)) {
			delete(request, response);
		} else if ("query".equals(mesthodName)) {
			// ��ѯ����
			query(request, response);
		}
	}

	/**
	 * ��ӹ���
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String announcementId = request.getParameter("announcementId");
		String announcementContent = request.getParameter("announcementContent");
		String maggerId = request.getParameter("publisherId");
		// �����������
		Announcement announcement = new Announcement();
		announcement.setAnnouncementId(announcementId);
		announcement.setAnnouncementContent(announcementContent);
		announcement.setMaggerId(maggerId);
		// ����ҵ���߼���ķ���
		announcementService.addNewAnnouncement(announcement);
		request.getRequestDispatcher("/admin/addannouncement.jsp").forward(request, response);
	}

	/**
	 * ��ѯ����
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	private void query(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Announcement> lists = announcementService.queryAnnouncement();
		request.setAttribute("lists", lists);
		for (Announcement a : lists) {
			System.out.println(a.toString());
		}
		System.out.println("ooo");
		request.getRequestDispatcher("/admin/announcementlist.jsp").forward(request, response);
	}

	/**
	 * ɾ��
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String announcementId = request.getParameter("announcementId");
		announcementService.deleteAnnouncement(announcementId);
		query(request, response);
	}

}
