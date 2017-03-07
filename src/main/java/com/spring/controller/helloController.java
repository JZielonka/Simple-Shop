package com.spring.controller;

import com.spring.dao.ProductDAO;
import com.spring.model.Product;
import com.sun.javafx.sg.prism.NGShape;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;


/**
 * Created by Jarek on 2017-02-11.
 */


@Controller
public class helloController {


    @Autowired
  private ProductDAO productDAO;


  Path path;




    @RequestMapping("/")
    public String home()
    {

        return "home";

    }

    @RequestMapping("/productList")
    public  String Products(Model model)
    {

        model.addAttribute("products", productDAO.getAllProducts());

        return "productList";
    }



    @RequestMapping("/admin")
    public String adminPage()
    {


        return "admin";
    }



    @RequestMapping("/productInventory")
    public String productInventory(Model model)
    {

        model.addAttribute("products", productDAO.getAllProducts());

        return "productInventory";
    }

    @RequestMapping(value = "/addProduct")
    public String addProduct()

    {
        return "addProduct";
    }


   @ModelAttribute("product")
    public Product newProduct()
   {
       return new Product();
   }


    @RequestMapping(value = "/addProduct" , method = RequestMethod.POST)
    public String addProductPost (@Valid @ModelAttribute ("product") Product product, BindingResult result, HttpServletRequest request){

        if(result.hasErrors())
        {

            return "addProduct";
        }
       productDAO.addProduct(product);

       MultipartFile productImage = product.getProductImage();


       String rootDirectory = request.getSession().getServletContext().getRealPath("/");


      String path= rootDirectory+"WEB-INF//resources//images//"+product.getProductId()+ ".png";


       // path= Paths.get(rootDirectory+"\\WEB-INF\\resources\\images\\"+product.getProductId()+".png");

       System.out.print("root directory: "+ rootDirectory);


       if (productImage !=null && !productImage.isEmpty()) {
           try {
               productImage.transferTo(new File(path.toString()));
               System.out.println("root directory: "+ path.toString());
           }
           catch (Exception e) {
               e.printStackTrace();
               throw new RuntimeException("product upload failed", e);
           }

       }


        return "redirect:/addProduct";


    }

    @RequestMapping(value = "/productInfo/{id}")
    public String productInfo(@PathVariable("id")String id, Model model)
    {

    model.addAttribute("product", productDAO.getProductById(id));
        return "productInfo";
    }



  @RequestMapping(value = "/productInfo/delete/{productId}")
    public String deleteProduct(@PathVariable("productId")String productId, HttpServletRequest request)
    {

        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path= Paths.get(rootDirectory+"\\WEB-INF\\resources\\images\\"+productId+".png");

        if (Files.exists(path))


        {
            try {
                System.out.print("root directory: "+ rootDirectory);
                Files.delete(path);
            }
            catch (Exception e) {
                e.printStackTrace();
                throw new RuntimeException("product delete failed", e);
            }
        }
        productDAO.deleteProduct(productId);

        return "redirect:/productList";
    }


  @RequestMapping(value = "/productInfo/edit/{productId}")
    public String editProduct( @PathVariable ("productId") String productId, Model model )
    {


        Product product = productDAO.getProductById(productId);
        model.addAttribute(product);
        return "editProduct";
    }






 @RequestMapping(value = "/productInfo/edit/", method = RequestMethod.POST)
    public String editProductPost(@Valid @ModelAttribute ("product") Product product, BindingResult result, HttpServletRequest request)
    {
        if (result.hasErrors())
        {

            return "editProduct";

        }

        MultipartFile multipartFile = product.getProductImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");

        String path= rootDirectory+"WEB-INF/resources/images/"+product.getProductId()+ ".png";

        if(!multipartFile.isEmpty() && multipartFile !=null)

            try {

                multipartFile.transferTo(new File(path));
            } catch (IOException e)

            {
                 throw new RuntimeException("product edit failed",e);

            }


        productDAO.editProduct(product);

        return "redirect:/productList";
    }


    @RequestMapping("/test")
    public String test()
    {


        return "test";
    }
}
