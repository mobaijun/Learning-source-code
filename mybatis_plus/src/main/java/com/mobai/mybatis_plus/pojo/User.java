package com.mobai.mybatis_plus.pojo;

import com.baomidou.mybatisplus.annotation.*;
import lombok.*;

import java.util.Date;

/**
 * Software：IntelliJ IDEA 2020.1 x64
 * Author: MoBai·杰
 * Date: 2020/6/8 14:02
 * ClassName:User
 * 类描述：用户实体类
 */
@Getter
@Setter
@ToString
public class User {
    // 常见的主键生成策略(UUID/MySQL自增长/雪花算法/redis/zookeeper...)
    @TableId(type = IdType.AUTO)
    private Long id;
    private String name;
    private Integer age;
    private String email;
    // 逻辑删除
    @TableLogic // 逻辑删除注解
    private Integer deleted;
    // 配置乐观锁插件
    @Version // 乐观锁注解
    private Integer version;
    // 开始时间
    // 插入填充字段
    @TableField(fill = FieldFill.INSERT)
    private Date gmtCreate;
    // 结束时间
    // 更新填充字段
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private Date gmtModified;
}
