package com.ngonphikp.gplx.Adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.ngonphikp.gplx.Model.BBDB;
import com.ngonphikp.gplx.R;
import com.squareup.picasso.Picasso;

import java.util.ArrayList;
import java.util.List;

public class BBDBAdapter extends BaseAdapter {

    private Context context;
    private int layout;
    private ArrayList<BBDB> BBDBList;

    public BBDBAdapter(Context context, int layout, ArrayList<BBDB> BBDBList) {
        this.context = context;
        this.layout = layout;
        this.BBDBList = BBDBList;
    }

    @Override
    public int getCount() {
        return BBDBList.size();
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
    public View getView(int position, View convertView, ViewGroup viewGroup) {
        //tạo dòng trả về view
        LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        convertView = inflater.inflate(layout, null);
        //ánh xạ view
        TextView txtTen = (TextView) convertView.findViewById(R.id.textviewTen);
        TextView txtMoTa = (TextView) convertView.findViewById(R.id.textviewMoTa);
        ImageView imgHinh = (ImageView) convertView.findViewById(R.id.imageviewHinh);

        //gán giá trị
        txtTen.setText(BBDBList.get(position).getTieuDe());
        txtMoTa.setText(BBDBList.get(position).getNoiDung());
        Picasso.with(context).load(BBDBList.get(position).getHinhAnh()).into(imgHinh);
        return convertView;
    }
}
