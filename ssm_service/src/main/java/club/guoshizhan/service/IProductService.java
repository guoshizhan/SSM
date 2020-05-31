package club.guoshizhan.service;

import club.guoshizhan.domain.Product;

import java.util.List;

/**
 * @Author: guoshizhan
 * @Create: 2020/5/29 23:07
 * @Description: service 接口
 */
public interface IProductService {

    public List<Product> findAll() throws Exception;

}
