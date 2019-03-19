package com.ngonphikp.gplx.Adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.ngonphikp.gplx.Model.HocLyThuyet;
import com.ngonphikp.gplx.R;

import java.util.ArrayList;
import java.util.List;

public class HLTAdapter extends BaseAdapter {

    private Context context;
    private int layout;
    private ArrayList<HocLyThuyet> HocLyThuyetList;

    public HLTAdapter(Context context, int layout, ArrayList<HocLyThuyet> hocLyThuyetList) {
        this.context = context;
        this.layout = layout;
        this.HocLyThuyetList = hocLyThuyetList;
    }

    @Override
    public int getCount() {
        return HocLyThuyetList.size();
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
        //ánh xạ view
        ImageView imgBackGround = (ImageView) convertView.findViewById(R.id.imageViewBackGround);
        TextView textViewNumber = (TextView) convertView.findViewById(R.id.textViewNumber);
        TextView textViewContent = (TextView) convertView.findViewById(R.id.textViewContent);

        //gán giá trị
        HocLyThuyet hocLyThuyet = HocLyThuyetList.get(position);
        imgBackGround.setBackgroundResource(hocLyThuyet.getHinhAnh());
        textViewContent.setText(hocLyThuyet.getTieuDe());

        int current = hocLyThuyet.getCurrent();
        int size = hocLyThuyet.getSize();

        int number = (int)current * 100/ size;
        textViewNumber.setText(number + "%");

        return convertView;
    }
}
