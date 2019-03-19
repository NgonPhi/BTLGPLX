package com.ngonphikp.gplx.Adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.ngonphikp.gplx.Model.BBDB;
import com.ngonphikp.gplx.Model.Luat;
import com.ngonphikp.gplx.R;
import com.squareup.picasso.Picasso;

import java.util.ArrayList;
import java.util.List;

import retrofit2.Callback;

public class LuatAdapter extends BaseAdapter {

    private Context context;
    private int layout;
    private ArrayList<Luat> LuatList;

    public LuatAdapter(Context context, int layout, ArrayList<Luat> luatList) {
        this.context = context;
        this.layout = layout;
        this.LuatList = luatList;
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
        ImageView img = convertView.findViewById(R.id.imageviewHinhLuat);
        TextView txtTieuDe = convertView.findViewById(R.id.textviewTenLuat);
        TextView txtNoiDung = convertView.findViewById(R.id.textviewMoTaLuat);
        TextView txtTienPhat = convertView.findViewById(R.id.textViewTienPhat);

        //Gán giá trị
        txtTieuDe.setText(LuatList.get(position).getTieuDe());
        txtNoiDung.setText(LuatList.get(position).getNoiDung());
        txtTienPhat.setText(LuatList.get(position).getTienPhat());
        Picasso.with(context).load(LuatList.get(position).getHinhAnh()).into(img);

        return convertView;
    }
}
