package com.cissst.software;

import org.junit.Test;

public class TestUtil {

    @Test
    public void testMethod1() {
        String path1 = "/faqsystem_11/admin/index.jsp";
        String path2 = "/faqsystem_11/admin/LoginServlet";
        //index.jsp
        int position = path1.lastIndexOf("/");
        System.out.println(path2.substring(position + 1));

    }
}
