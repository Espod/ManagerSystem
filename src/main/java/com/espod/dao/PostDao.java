package com.espod.dao;

import java.util.List;
import java.util.Map;

import com.espod.entity.Post;
import org.springframework.stereotype.Repository;

@Repository
public interface PostDao {

    public List<Post> findPosts(Map<String, Object> map);

    public Integer getCount(Map<String, Object> map);

    public Integer addPost(Post post);

    public Integer updatePost(Post post);

    public Integer deletePost(Integer id);

    public Post getPostById(Integer id);
}
