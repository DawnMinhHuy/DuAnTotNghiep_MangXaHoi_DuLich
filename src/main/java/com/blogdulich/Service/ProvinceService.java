package com.blogdulich.Service;

import java.util.List;

import org.springframework.stereotype.Service;

import java.io.InputStream;
import com.blogdulich.entity.Province;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class ProvinceService {
 public List<Province> getAllProvinces() {
        try {
            ObjectMapper mapper = new ObjectMapper();
            InputStream is = getClass().getResourceAsStream("/data/vietnam_cities_api.json");
            return mapper.readValue(is, new TypeReference<List<Province>>() {});
        } catch (Exception e) {
            throw new RuntimeException("Error reading provinces data", e);
        }
    }
}
