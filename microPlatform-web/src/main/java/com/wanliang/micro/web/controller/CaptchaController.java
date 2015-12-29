package com.wanliang.micro.web.controller;

import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.Producer;
import com.wanliang.micro.web.util.CaptchaUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;

/**
 * @author wanliang
 * @version 1.0
 * @date 2015/12/25
 * @modify
 * @copyright microPlatform
 */
@Controller
public class CaptchaController {

    @Autowired
    private Producer producer;

    @RequestMapping(value = "/captcha.jpg", method = RequestMethod.GET)
    public void kaptcha(HttpServletRequest req,
                        HttpServletResponse rsp) throws Exception {
        HttpSession session = req.getSession();
        String code = (String) session.getAttribute(Constants.KAPTCHA_SESSION_KEY);
        rsp.setDateHeader("Expires", 0);
        rsp.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
        rsp.addHeader("Cache-Control", "post-check=0, pre-check=0");
        rsp.setHeader("Pragma", "no-cache");
        rsp.setContentType("image/jpeg");
        String capText = producer.createText();
        session.setAttribute(Constants.KAPTCHA_SESSION_KEY, capText);

        BufferedImage image = producer.createImage(capText);
        ServletOutputStream out = rsp.getOutputStream();
        ImageIO.write(image, "jpg", out);
        try {
            out.flush();
        } finally {
            out.close();
        }
    }

    @RequestMapping(value = "/checkVerification", method = RequestMethod.GET)
    public void checkKaptcha(HttpServletRequest req,
                        HttpServletResponse rsp,ModelAndView view) throws Exception {
      boolean bool=  CaptchaUtils.verify(req);
        System.out.println(bool);
        rsp.sendRedirect(String.valueOf(bool));//.sendError(200,String.valueOf(bool));
        req.setAttribute("message",bool);
    }
}
