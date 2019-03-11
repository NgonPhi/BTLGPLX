package com.ngonphikp.gplx.Activity;

import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.constraint.ConstraintLayout;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.Toast;

import com.ngonphikp.gplx.Adapter.TSHAdapter;
import com.ngonphikp.gplx.Model.ThiSatHach;
import com.ngonphikp.gplx.R;

import java.util.ArrayList;

public class TSHActivity extends AppCompatActivity {

    android.support.v7.widget.Toolbar toolbar;
    GridView gvDanhSachThi;
    ArrayList<ThiSatHach> arrayThiSatHach;
    TSHAdapter adapter;
    ConstraintLayout itemThiNgauNhien;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_tsh);

        AnhXa();
        GetData();
        ClickItem();
        SetToolbar();
    }

    // Bắt sự kiện Click Item Thi
    private void ClickItem() {
        gvDanhSachThi.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                Toast.makeText(TSHActivity.this, position + "", Toast.LENGTH_SHORT).show();
            }
        });
        itemThiNgauNhien.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(TSHActivity.this, "Thi Ngẫu Nhiên", Toast.LENGTH_SHORT).show();
            }
        });
    }

    private void GetData() {
        arrayThiSatHach = new ArrayList<>();

        arrayThiSatHach.add(new ThiSatHach(8, 30));
        arrayThiSatHach.add(new ThiSatHach(1, 30));
        arrayThiSatHach.add(new ThiSatHach(4, 30));
        arrayThiSatHach.add(new ThiSatHach(0, 30));
        arrayThiSatHach.add(new ThiSatHach(15, 30));
        arrayThiSatHach.add(new ThiSatHach(0, 30));
        arrayThiSatHach.add(new ThiSatHach(23, 30));

        adapter = new TSHAdapter(this, R.layout.item_thi, arrayThiSatHach);
        gvDanhSachThi.setAdapter(adapter);
    }

    // Set toolbar thay cho actionbar
    private void SetToolbar() {
        //Set lại title
        toolbar.setTitle("Thi sát hạch");
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

    private void AnhXa(){
        toolbar = findViewById(R.id.toolbar);
        gvDanhSachThi = findViewById(R.id.GridViewDanhSachThi);
        itemThiNgauNhien = (ConstraintLayout) findViewById(R.id.itemThiNgauNhien);
    }
}
