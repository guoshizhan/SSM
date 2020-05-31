package club.guoshizhan.controller;

import club.guoshizhan.domain.Product;
import club.guoshizhan.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @Author: guoshizhan
 * @Create: 2020/5/30 10:26
 * @Description: 产品 controller
 */

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private IProductService productService;


    @RequestMapping("/findAll.do")
    public ModelAndView findAll() throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Product> all = productService.findAll();
        mv.addObject("all",all);
        mv.setViewName("product-list");
        return mv;
    }

}
