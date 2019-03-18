package com.ngonphikp.gplx.Adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

import com.ngonphikp.gplx.Model.Luat;

import java.util.List;

public class LuatAdapter extends BaseAdapter {

    private Context context;
    private int layout;
    private List<Luat> LuatList;

    public LuatAdapter(Context context, int layout, List<Luat> luatList) {
        this.context = context;
        this.layout = layout;
        LuatList = luatList;
    }

    @Override
    public int getCount() {
        return LuatList.size();
    }

    @Override
    public Object getItem(int position) {
        return null;
    }

    @Override
    public long getItemId(int position) {
        return 0;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        //tạo dòng trả về view
        LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        convertView = inflater.inflate(layout, null);

        //Ánh xạ


        //Gán giá trị


        return convertView;
    }
}
