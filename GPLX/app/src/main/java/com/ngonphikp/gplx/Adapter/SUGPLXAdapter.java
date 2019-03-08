package com.ngonphikp.gplx.Adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RadioButton;
import android.widget.TextView;

import com.ngonphikp.gplx.Activity.MainActivity;
import com.ngonphikp.gplx.Activity.SetUpGPLXActivity;
import com.ngonphikp.gplx.Model.SetUpGPLX;
import com.ngonphikp.gplx.R;

import java.util.List;

public class SUGPLXAdapter extends BaseAdapter {

    private Context context;
    private int layout;
    private List<SetUpGPLX> SUGPLXList;

    private int selectedPosition = -1;

    public int getSelectedPosition() {
        return selectedPosition;
    }

    public void setSelectedPosition(int selectedPosition) {
        this.selectedPosition = selectedPosition;
    }

    public SUGPLXAdapter(Context context, int layout, List<SetUpGPLX> SUGPLXList) {
        this.context = context;
        this.layout = layout;
        this.SUGPLXList = SUGPLXList;
    }


    @Override
    public int getCount() {
        return SUGPLXList.size();
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
    public View getView(final int position, View convertView, ViewGroup parent) {
        //tạo dòng trả về view
        LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        convertView = inflater.inflate(layout, null);
        //ánh xạ view
        TextView txtType = (TextView) convertView.findViewById(R.id.textViewType);
        TextView txtContent = (TextView) convertView.findViewById(R.id.textViewContent);
        RadioButton radioBtn = (RadioButton) convertView.findViewById(R.id.radioButton);
        //gán giá trị
        txtType.setText(SUGPLXList.get(position).getType());
        txtContent.setText(SUGPLXList.get(position).getContent());

        //check the radio button if both position and selectedPosition matches
        radioBtn.setChecked(position == selectedPosition);
        //Set the position tag to both radio button
        radioBtn.setTag(position);
        radioBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                itemCheckChanged(v);
                //Gọi hàm bên Activity
                if(context instanceof SetUpGPLXActivity){
                    ((SetUpGPLXActivity)context).CallMethod(position);
                }
            }
        });
        return convertView;
    }

    //On selecting any view set the current position to selectedPositon and notify adapter
    private void itemCheckChanged(View v) {
        selectedPosition = (Integer) v.getTag();
        notifyDataSetChanged();
    }
}
