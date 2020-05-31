package club.guoshizhan.service.Impl;

import club.guoshizhan.dao.IProductDao;
import club.guoshizhan.domain.Product;
import club.guoshizhan.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author: guoshizhan
 * @Create: 2020/5/29 23:10
 * @Description: IProductService 接口的实现类
 */
@Service
@Transactional
public class ProductServiceImpl implements IProductService {

    @Autowired
    private IProductDao iProductDao;

    @Override
    public List<Product> findAll() throws Exception {
        return iProductDao.findAll();
    }

}
