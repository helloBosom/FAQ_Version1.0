package peri.fun.servlet;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

import javax.imageio.ImageIO;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

public class CheckCode extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private int width;
    private int height;
    private int number;
    private String codes;

    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        width = Integer.parseInt(config.getInitParameter("width"));
        height = Integer.parseInt(config.getInitParameter("height"));
        number = Integer.parseInt(config.getInitParameter("number"));
        codes = config.getInitParameter("codes");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        checkcode(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        checkcode(request, response);
    }

    public void checkcode(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("image/jpeg");
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
        Graphics2D g = image.createGraphics();
        g.setColor(Color.WHITE);
        g.fillRect(0, 0, width, height);
        g.setColor(Color.BLACK);
        g.drawRect(0, 0, width - 2, height - 2);
        Random random = new Random();
        int x = (width - 1) / number;
        int y = height - 4;
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < number; i++) {
            String code = String.valueOf(codes.charAt(random.nextInt(codes.length())));
            int red = random.nextInt(255);
            int green = random.nextInt(255);
            int blue = random.nextInt(255);
            g.setColor(new Color(red, green, blue));
            Font font = new Font("Arial", Font.PLAIN, random(height / 2, height));
            g.setFont(font);
            g.drawString(code, i * x + 1, y);
            sb.append(code);
        }
        request.getSession().setAttribute("codes", sb.toString());
        for (int i = 0; i < 50; i++) {
            int red = random.nextInt(255);
            int green = random.nextInt(255);
            int blue = random.nextInt(255);
            g.setColor(new Color(red, green, blue));
            g.drawOval(random.nextInt(width), random.nextInt(height), 1, 1);
        }

        OutputStream out = response.getOutputStream();
        JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);
        encoder.encode(image);
        ImageIO.write(image, "jpg", out);
        out.flush();
        out.close();
    }

    private int random(int min, int max) {
        int m = new Random().nextInt(999999) % (max - min);
        return m + min;
    }
}
