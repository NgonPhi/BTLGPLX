package com.ngonphikp.gplx.Service;

import com.ngonphikp.gplx.Model.BBDB;

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

}
