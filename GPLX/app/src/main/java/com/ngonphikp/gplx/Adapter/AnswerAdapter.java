package com.ngonphikp.gplx.Adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.ngonphikp.gplx.R;

import java.util.ArrayList;

public class AnswerAdapter extends BaseAdapter {

    private Context context;
    private int layout;
    private ArrayList<String> AnswerList;

    public AnswerAdapter(Context context, int layout, ArrayList<String> answerList) {
        this.context = context;
        this.layout = layout;
        this.AnswerList = answerList;
    }

    @Override
    public int getCount() {
        return AnswerList.size();
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
        TextView txtCount = (TextView) convertView.findViewById(R.id.textViewCount);
        TextView txtContent = (TextView) convertView.findViewById(R.id.textViewContent);

        //gán giá trị
        txtCount.setText((position + 1) + "");
        txtContent.setText(AnswerList.get(position));
        return convertView;
    }

    public void checkTrue(View convertView){
        ImageView imageViewCheck = (ImageView) convertView.findViewById(R.id.imageViewCheck);
        imageViewCheck.setImageResource(R.drawable.checked);
        ImageView imageViewBG = (ImageView) convertView.findViewById(R.id.imageViewBG);
        imageViewBG.setImageResource(R.drawable.cicletrue);
    }

    public void checkFalse(View convertView){
        ImageView imageViewCheck = (ImageView) convertView.findViewById(R.id.imageViewCheck);
        imageViewCheck.setImageResource(R.drawable.cancel);
        ImageView imageViewBG = (ImageView) convertView.findViewById(R.id.imageViewBG);
        imageViewBG.setImageResource(R.drawable.ciclefalse);
    }
}
