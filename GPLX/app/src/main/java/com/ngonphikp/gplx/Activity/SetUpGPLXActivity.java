package com.ngonphikp.gplx.Activity;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import android.widget.Toast;

import com.ngonphikp.gplx.Adapter.SUGPLXAdapter;
import com.ngonphikp.gplx.Model.SetUpGPLX;
import com.ngonphikp.gplx.R;

import java.util.ArrayList;

public class SetUpGPLXActivity extends AppCompatActivity {

    ListView lvSUGPLX;
    ArrayList<SetUpGPLX> arraySUGPLX;
    SUGPLXAdapter adapter;

    int pos;

    android.support.v7.widget.Toolbar toolbar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_set_up_gplx);

        AnhXa();
        GetData();
        SetToolbar();
    }

    // Set toolbar thay cho actionbar
    private void SetToolbar() {
        //Set lại title
        toolbar.setTitle("Chọn hạng bằng thi");
        setSupportActionBar(toolbar);

        //Thêm nút navigation
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        //Thay đổi icon
        //Lấy chiều cao của ActionBar
        TypedArray styledAttributes =
                getTheme().obtainStyledAttributes(new int[] { android.R.attr.actionBarSize });
        int actionBarSize = (int) styledAttributes.getDimension(0, 0);
        styledAttributes.recycle();
        //Tạo Drawable mới bằng cách thu/phóng
        Drawable drawable= ContextCompat.getDrawable(this, R.drawable.back);
        Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
        Drawable newdrawable = new BitmapDrawable(getResources(),
                Bitmap.createScaledBitmap(bitmap, actionBarSize,  actionBarSize, true));
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setHomeAsUpIndicator(newdrawable);

        //Bắt sự kiện click nút home
        toolbar.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
    }

    private void AnhXa() {
        lvSUGPLX = (ListView) findViewById(R.id.listViewSUGPLX);
        toolbar = findViewById(R.id.toolbar);
    }

    private void GetData() {
        arraySUGPLX = new ArrayList<>();

        arraySUGPLX.add(new SetUpGPLX("Bằng A1", "Xe máy"));
        arraySUGPLX.add(new SetUpGPLX("Bằng A2", "Xe mô tô 2 bánh"));
        arraySUGPLX.add(new SetUpGPLX("Bằng B1", "Ô tô tải trọng dưới 3500kg"));
        arraySUGPLX.add(new SetUpGPLX("Bằng B2", "Ô tô chở người đến 9 chỗ"));

        adapter = new SUGPLXAdapter(this, R.layout.dong_set_up_gplx, arraySUGPLX);

        //Lấy dữ liệu trong data
        int getData = 2; // ví dụ :bằng A2 --> pos 1
        pos = getData;
        adapter.setSelectedPosition(pos);

        lvSUGPLX.setAdapter(adapter);
    }

    //Adapter call function in activity - Sự kiện khi chọn radioButton
    public void CallMethod(int pos) {
        //Lưu lại vào data
//        SharedPreferences sharedPreferences = getSharedPreferences("LocalData", Context.MODE_PRIVATE);
//        SharedPreferences.Editor editor = sharedPreferences.edit();
//        editor.putInt("Level",pos);
//        editor.commit();

        //Hiển thị toast
        Toast.makeText(this, "Chọn " + arraySUGPLX.get(pos).getType(), Toast.LENGTH_SHORT).show();
    }
}
