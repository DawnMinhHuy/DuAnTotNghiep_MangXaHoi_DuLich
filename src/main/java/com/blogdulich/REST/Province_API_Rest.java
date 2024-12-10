package com.blogdulich.REST;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.blogdulich.Service.ProvinceService;
import com.blogdulich.entity.Province;

import java.util.List;
@CrossOrigin("*")
@RestController
@RequestMapping("/api/provinces")
public class Province_API_Rest {

    @Autowired
    private ProvinceService provinceService;

    // Lấy toàn bộ danh sách tỉnh/thành phố
    @GetMapping
    public List<Province> getAllProvinces() {
        return provinceService.getAllProvinces();
    }

    // Tìm kiếm tỉnh/thành phố theo tên
    @GetMapping("/search")
    public List<Province> searchProvinces(@RequestParam String name) {
        List<Province> provinces = provinceService.getAllProvinces();
        return provinces.stream()
                .filter(province -> province.getName().toLowerCase().contains(name.toLowerCase()))
                .toList();
    }
}
