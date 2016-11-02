package com.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.beans.factory.annotation.Autowired;
import com.spring.model.Book;
import com.spring.model.Category;
import com.spring.model.Users;
import com.spring.services.BookService;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import java.io.File;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.h2.tools.Server;

@Controller
public class HelloWorldController {
	
	@Autowired
	public BookService bookService;
	
	
	
	public BookService getBookService() {
		return bookService;
	}


	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}

	@RequestMapping(value = "/aboutUs", method = RequestMethod.GET)
	public String aboutUs() {
	    return "aboutUs";
	}
	
	@RequestMapping(value="/home", method=RequestMethod.GET)
	public String home(){
		return "index";
	}
	
	@RequestMapping("/welcome")
public ModelAndView helloWorld(
		
		@RequestParam(value = "name", required = false) String name) {
			// Name of your jsp file as parameter
			ModelAndView view = new ModelAndView("welcome");
			view.addObject("name", name);
			return view;
	}
	
	
	@RequestMapping("/product")
	public ModelAndView displayPName(
			
			@RequestParam(value = "name", required = false) String name) {
				// Name of your jsp file as parameter
				ModelAndView view = new ModelAndView("product");
				view.addObject("name", name);
				return view;
		}
	
/*	@RequestMapping("/getAllBooks")
	public ModelAndView getAllProducts(){
		List<Book> books = bookService.getAllBooks();
			
		return new ModelAndView("booksList","books",books);
	}*/

	@RequestMapping("/getBookByIsbn/{isbn}")
	
	public ModelAndView getBookByIsbn(@PathVariable(value="isbn") int isbn){
		
		Book b=(Book) bookService.getBookByIsbn(isbn);
		//System.out.println("InSide & Before Redirect");
		return new ModelAndView("bookPage" , "bookObj" , b);
		
	}
	
	@RequestMapping("/remove/{isbn}")
	
	public String removeBook(@PathVariable(value="isbn") int isbn){
		Path path=Paths.get("C:/Users/PRABHASH/MarsFirst/DevDarshan/src/main/webapp/WEB-INF/resources/images/"+isbn+".jpg");
		
		if(Files.exists(path))
			try {
				Files.delete(path);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		bookService.removeBook(isbn);
		return "redirect:/bookListAngular";
	}
	
	@RequestMapping(value="/admin/book/edit/{isbn}")
	public ModelAndView getEditForm(@PathVariable(value="isbn") int isbn){
		
		Book book=this.bookService.getBookByIsbn(isbn);
		return new ModelAndView("editBookForm","editBookObj",book);
	}
	
	@RequestMapping(value="/admin/book/edit", method=RequestMethod.POST)
	public String editBook(@ModelAttribute(value="editBookObj") Book book){
		bookService.editBook(book);
		return "redirect:/bookListAngular";
	}
	
	
	
	@RequestMapping(value="/admin/book/addBook" , method=RequestMethod.GET)
	public String getBookForm(Model model){
		Book book=new Book();
		Category category= new Category();
		category.setCid(1);
		book.setCategory(category);
		model.addAttribute("bookFormObj", book);
		return "bookForm";
	}
	
	@RequestMapping(value="/admin/book/addBook" , method=RequestMethod.POST)
	public String addBook(@Valid @ModelAttribute(value="bookFormObj") Book book,BindingResult result){
		if(result.hasErrors())
			return "bookForm";
		bookService.addBook(book);
		
		MultipartFile image=book.getBookImage();
		
		if(image !=null && !image.isEmpty()){
		Path path=Paths.get("C:/Users/PRABHASH/MarsFirst/DevDarshan/src/main/webapp/WEB-INF/resources/images/"+book.getIsbn()+".png");
		
							try {
								File file=new File(path.toString());
								if(!file.exists()){
									//file.createNewFile();
									image.transferTo(file);
									
								}
								
							} catch (IllegalStateException e) {
								// TODO Auto-generated catch block
								
								e.printStackTrace();
							} catch (IOException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
		}
		return "redirect:/bookListAngular";
	}

	@RequestMapping("/login")
	public String login(@RequestParam(value="error",required=false) String error,@RequestParam(value="logout",required=false) String logout,Model model,HttpSession session,HttpServletRequest request){
						
						if(error!=null)
							model.addAttribute("error", "Invalid UserNmae Or Password");
						
						if(logout !=null)
							model.addAttribute("logout", "You Have Successfully Logged Out");
						
						//session=request.getSession();
						//session.setAttribute("username", new Users().getUsername());
						
						return "login";
	}
	
/*	@RequestMapping("/logout")
    	public String logout(HttpSession session ) {
   
       session.removeAttribute("username");
       return "login";
    }*/
	
	/*Angular Js Addition Start*/
	
	@RequestMapping(value="/getBooksList")
	public @ResponseBody List<Book> getBookListInJSON(){
		return bookService.getAllBooks();
	}
	
	@RequestMapping("/bookListAngular")
	public String getBooks(){
		return "bookListAngular";
	}
	
}
