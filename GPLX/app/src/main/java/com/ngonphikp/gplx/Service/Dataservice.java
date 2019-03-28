package com.ngonphikp.gplx.Service;

import com.ngonphikp.gplx.Model.BBDB;
import com.ngonphikp.gplx.Model.Bang;
import com.ngonphikp.gplx.Model.CauHoi;
import com.ngonphikp.gplx.Model.CauTraLoi;
import com.ngonphikp.gplx.Model.HLT;
import com.ngonphikp.gplx.Model.Luat;

import java.util.List;

import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;

public interface Dataservice {

    //Lấy các loại biển báo đường bộ
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

    // Lấy loại theo tên bằng
    @FormUrlEncoded
    @POST("getHLTByGPLX.php")
    Call<List<HLT>> GetHLTByGPLX(@Field("tenBang") String tenBang);

    // Lấy câu hỏi theo id
    @FormUrlEncoded
    @POST("getCauHoibyId.php")
    Call<CauHoi> GetCauHoiById(@Field("id") int id);

    // Lấy câu trả lời theo idCH
    @FormUrlEncoded
    @POST("getCTLbyIdCH.php")
    Call<List<CauTraLoi>> GetCTLByIdCH(@Field("id") int id);

    // Lấy idCH ôn thi
    @FormUrlEncoded
    @POST("getIdCHOnThi.php")
    Call<List<Integer>> GetIdCHOnThi(@Field("tenBang") String tenBang, @Field("loai") String loai);

    // Lấy idCH thi
    @FormUrlEncoded
    @POST("getIdCHThi.php")
    Call<List<Integer>> GetIdCHThi(@Field("tenBang") String tenBang, @Field("stt") int stt);

    // Lấy số bộ đề
    @FormUrlEncoded
    @POST("getLengthThi.php")
    Call<Integer> GetLengthThi(@Field("tenBang") String tenBang);

    //Lấy các bằng
    @GET("getALLBang.php")
    Call<List<Bang>> GetALLBang();
}
