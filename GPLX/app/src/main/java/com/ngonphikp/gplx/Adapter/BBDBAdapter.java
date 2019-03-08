package com.ngonphikp.gplx.Adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.ngonphikp.gplx.Model.BienBaoDuongBo;
import com.ngonphikp.gplx.R;

import java.util.List;

public class BBDBAdapter extends BaseAdapter {

    private Context context;
    private int layout;
    private List<BienBaoDuongBo> BienBaoDuongBoList;

    public BBDBAdapter(Context context, int layout, List<BienBaoDuongBo> bienBaoDuongBoList) {
        this.context = context;
        this.layout = layout;
        BienBaoDuongBoList = bienBaoDuongBoList;
    }

    @Override
    public int getCount() {
        return BienBaoDuongBoList.size();
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
        BienBaoDuongBo bienBaoDuongBo = BienBaoDuongBoList.get(position);

        txtTen.setText(bienBaoDuongBo.getTen());
        txtMoTa.setText(bienBaoDuongBo.getMota());
        imgHinh.setImageResource(bienBaoDuongBo.getHinh());
        return convertView;
    }
}
