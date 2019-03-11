package com.ngonphikp.gplx.Fragment;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;

import com.ngonphikp.gplx.Adapter.BBDBAdapter;
import com.ngonphikp.gplx.Model.BienBaoDuongBo;
import com.ngonphikp.gplx.R;

import java.util.ArrayList;

public class Fragment_bbdb extends Fragment {

    private static final String KEY = "key";
    private int pos;

    public Fragment_bbdb() {
    }

    public static Fragment_bbdb newInstance(int pos){
        Fragment_bbdb fragment_bbdb = new Fragment_bbdb();
        Bundle bundle = new Bundle();
        bundle.putInt(KEY, pos);
        fragment_bbdb.setArguments(bundle);
        return fragment_bbdb;
    }

    View view;
    ListView lvBienBaoDuongBo;
    ArrayList<BienBaoDuongBo> arrayBienBaoDuongBo;
    BBDBAdapter adapter;

    @Override
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        pos = getArguments().getInt(KEY);
    }

    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        view = inflater.inflate(R.layout.fragment_bbdb, container, false);
        AnhXa();
        GetData();

        return view;
    }

    private void GetData(){
        arrayBienBaoDuongBo = new ArrayList<>();

        if(pos == 1){
            arrayBienBaoDuongBo.add(new BienBaoDuongBo("Cấm máy kéo","Để báo đường cấm tất cả các loại máy kéo, kể cả máy kéo bánh hơi và bánh xích đi qua", R.drawable.bb1));
            arrayBienBaoDuongBo.add(new BienBaoDuongBo("Cự ly tối thiểu giữa hai xe", "Để báo xe ô to phải đi cách nhau một khoảng tối thiểu. Số ghi trên biển báo cho biết khoảng cách tối thiểu tính bằng mét. Biển có hiệu lực cấm các xe ôtô không được đi cách nhau kể cả các xe được ưu tiên theo luật lệ nhà nước quy định cự ly nhỏ hơn trị số ghi trên biển báo.", R.drawable.bb2));
        }
        if(pos == 2){
            arrayBienBaoDuongBo.add(new BienBaoDuongBo("Cấm xe người kéo, đẩy", "Để báo đường cấm xe người kéo, đẩy đi qua. Biển không có giá trị cấm những xe nôi của trẻ em và phương tiện chuyên dùng để đi lại của người tàn tật", R.drawable.bb3));
            arrayBienBaoDuongBo.add(new BienBaoDuongBo("Cấm ô tô khách và ô tô tải", "Để báo đường cấm ô tô chở hành khách và các loại ô tô tải trọng lượng lớn nhất cho phét trên 3,5 tấn kể cả các loại máy kéo và xe máy thi công chuyên dùng đi qua trừ các xe được ưu tiên theo luật nhà nước quy định.", R.drawable.bb4));
        }
        adapter = new BBDBAdapter(getActivity(), R.layout.dong_bien_bao, arrayBienBaoDuongBo);
        lvBienBaoDuongBo.setAdapter(adapter);
    }

    private void AnhXa() {
        lvBienBaoDuongBo = (ListView) view.findViewById(R.id.listViewBienBaoDuongBo);
    }
}
