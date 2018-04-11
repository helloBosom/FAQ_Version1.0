package peri.fun.servlet;

import peri.fun.model.Announcement;
import peri.fun.service.IAnnouncementService;
import peri.fun.service.impl.AnnouncementServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class AnnouncementServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
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
            query(request, response);
        }
    }

    private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String announcementId = request.getParameter("announcementId");
        String announcementContent = request.getParameter("announcementContent");
        String maggerId = request.getParameter("publisherId");
        Announcement announcement = new Announcement();
        announcement.setAnnouncementId(announcementId);
        announcement.setAnnouncementContent(announcementContent);
        announcement.setMaggerId(maggerId);
        announcementService.addNewAnnouncement(announcement);
        request.getRequestDispatcher("/admin/addannouncement.jsp").forward(request, response);
    }

    private void query(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Announcement> lists = announcementService.queryAnnouncement();
        request.setAttribute("lists", lists);
        for (Announcement a : lists) {
            System.out.println(a.toString());
        }
        System.out.println("ooo");
        request.getRequestDispatcher("/admin/announcementlist.jsp").forward(request, response);
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String announcementId = request.getParameter("announcementId");
        announcementService.deleteAnnouncement(announcementId);
        query(request, response);
    }
}
