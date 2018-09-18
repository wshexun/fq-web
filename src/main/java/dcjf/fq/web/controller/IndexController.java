package dcjf.fq.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;

/**
 * Created by hexun on 2018/9/12.
 */
@Controller
@RequestMapping("")
public class IndexController {
    @RequestMapping("")
    public String index(){
        return "index";
    }

    @RequestMapping(value = "fenqi",method =RequestMethod.POST)
    public String goFenQi(Model model, BigDecimal pay,String massage){
        model.addAttribute("pay",pay);
        model.addAttribute("massage",massage);
        return "fenqi";
    }

    @RequestMapping(value = "info",method =RequestMethod.POST)
    public String goInfo(Model model, String bank,int count,int type){
        model.addAttribute("bank",bank);
        model.addAttribute("count",count);
        model.addAttribute("type",type);
        return "info";
    }

    @RequestMapping(value = "sure",method =RequestMethod.POST)
    public String goSure(Model model, String card,String cvn,String validate,
                          String phone,String userName,String userId){
        model.addAttribute("card",card);
        model.addAttribute("cvn",cvn);
        model.addAttribute("validate",validate);
        model.addAttribute("phone",phone);
        model.addAttribute("userName",userName);
        model.addAttribute("userId",userId);
        return "sure_info";
    }

    @RequestMapping(value = "validate",method =RequestMethod.POST)
    public String goPay(Model model, BigDecimal pay,String validateCode){
        model.addAttribute("validateCode",validateCode);
        return "pay_ok";
    }

    @ResponseBody
    @RequestMapping(value = "sendSecond",method =RequestMethod.POST)
    public Object sendSecond(HttpServletRequest request, String phone){
        //记录获取验证码时间
        request.getSession().setAttribute(phone,System.currentTimeMillis());
        return 60;
    }

    @ResponseBody
    @RequestMapping(value = "getSecond",method =RequestMethod.POST)
    public Object getSecond(HttpServletRequest request, String phone){
        Object phoneNumber=request.getSession().getAttribute(phone);
        if(phoneNumber!=null){
            Long start=(Long)phoneNumber;
            int use=(int)(System.currentTimeMillis()-start)/1000;//用时
            int has=0;
            if(use>=60){
                has=0;
                request.getSession().removeAttribute(phone);
            }else{
                has=60-use;
            }
            return has;
        }else{
            return 0;
        }
    }
}
