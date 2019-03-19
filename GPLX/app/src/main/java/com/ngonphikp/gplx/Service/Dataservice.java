package com.ngonphikp.gplx.Service;

import com.ngonphikp.gplx.Model.BBDB;
import com.ngonphikp.gplx.Model.Luat;

import java.util.List;

import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;

public interface Dataservice {

    //Lấy các loại biển báo đường bộ getTypeBBDB.php
    @GET("getTypeBBDB.php")
    Call<List<String>> GetTypeBBDB();

    //Lấy biển báo đường bộ theo loại
    @FormUrlEncoded
    @POST("getBBDBbyType.php")
    Call<List<BBDB>> GetBBDBbyType(@Field("loai") String loai);

    //Lấy mảng nội dung các chi tiết mẹo thi theo loại
    @FormUrlEncoded
    @POST("getCTMTbyType.php")
    Call<List<String>> GetCTMTbyType(@Field("loai") String loai);

    // Lấy luật theo loại
    @FormUrlEncoded
    @POST("getLuatbyType.php")
    Call<List<Luat>> GetLuatbyType(@Field("loai") String loai);
}
