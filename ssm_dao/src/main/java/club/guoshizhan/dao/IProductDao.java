package club.guoshizhan.dao;

import club.guoshizhan.domain.Product;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @Author: guoshizhan
 * @Create: 2020/5/29 23:01
 * @Description: 产品接口
 */
public interface IProductDao {

    // 查询所有产品信息
    @Select("select * from product")
    public List<Product> findAll() throws Exception;

}
