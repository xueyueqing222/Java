package com.xue.controller;

import com.xue.pojo.Books;
import com.xue.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.*;


/**
 * @author xue
 */

@Controller
@RequestMapping("/book")
public class BookController {

    @Autowired
    private BookService bookService;

    /**
     * 查询所有书
     *
     * @param model
     * @return
     */
    @RequestMapping("/allBook")
    public String findAllBooks(Model model) {
        List<Books> books = bookService.findBooks(new HashMap());
        model.addAttribute("book", books);
        return "allBook";
    }
    /**
     * 按条件查询
     *
     * @param findBook 表示书籍的属性名
     * @param value
     * @param model
     * @return
     */
    @RequestMapping("/findBook")
    public String findBook(String findBook, String value, Model model) {
        System.out.println(findBook + "----" + value);
        Map map = new HashMap();
        map.put(findBook, value);
        List<Books> books = bookService.findBooks(map);
        model.addAttribute("book", books);
        return "allBook";
    }

    /**
     * 添加书
     *
     * @return
     */
    @RequestMapping("/toAddBook")
    public String toAddBook() {
        return "toAddBook";
    }

    @RequestMapping("/addBook")
    public String addBook(Books books) {
        bookService.addBook(books);
        return "redirect:/book/allBook";
    }

    /**
     * 修改书
     *
     * @param bookId
     * @param model
     * @return
     */
    @RequestMapping("/toUpdateBook")
    public String toUpdateBook(int bookId, Model model) {
        Map map = new HashMap();
        map.put("bookId", bookId);
        List<Books> books = bookService.findBooks(map);
        model.addAttribute("book", books.get(0));

        return "toUpdateBook";
    }
    @RequestMapping("/updateBook")
    public String updateBook(Books books) {
        bookService.updateBook(books);
        return "redirect:/book/allBook";
    }

    /**
     * 根据id删除一本书
     *
     * @param bookId
     * @return
     */
    @RequestMapping("/deleteBook")
    public String deleteBook(int bookId) {
        bookService.deleteBook(bookId);
        return "redirect:/book/allBook";
    }

}
