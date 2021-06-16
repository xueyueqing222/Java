package com.xue.service;

import com.xue.pojo.Books;

import java.util.Map;
import java.util.List;

/**
 * @author xue
 */

public interface BookService {
    /**
     * 查询书
     * @param map
     * @return
     */
    List<Books> findBooks(Map map);

    /**
     * 增加一本书
     * @param books
     * @return
     */
    int addBook(Books books);

    /**
     * 修改一本书
     * @param books
     * @return
     */
    int updateBook(Books books);

    /**
     * 根据id删除一本书
     * @param bookId
     * @return
     */
    int deleteBook(int bookId);
}
