package com.xue.service.impl;

import com.xue.dao.book.BookMapper;
import com.xue.pojo.Books;
import com.xue.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @author xue
 */
@Service
public class BookServiceImpl implements BookService {

    @Autowired
    private BookMapper bookMapper;

    @Override
    public List<Books> findBooks(Map map) {
        return bookMapper.findBooks(map);
    }

    @Override
    public int addBook(Books books) {
return bookMapper.addBook(books);
    }

    @Override
    public int updateBook(Books books) {
return bookMapper.updateBook(books);
    }

    @Override
    public int deleteBook(int bookId) {
        return bookMapper.deleteBook(bookId);
    }
}
