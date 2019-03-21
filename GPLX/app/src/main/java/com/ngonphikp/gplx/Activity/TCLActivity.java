package com.ngonphikp.gplx.Activity;

import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.constraint.ConstraintLayout;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.GravityCompat;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.SearchView;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;
import android.widget.ViewFlipper;

import com.ngonphikp.gplx.R;

public class TCLActivity extends AppCompatActivity {
    ConstraintLayout itemLXM, itemLOT, itemLXK, itemLXT;
    android.support.v7.widget.Toolbar toolbar;
    ViewFlipper viewFlipper;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_tcl);
        AnhXa();
        ClickItem();
        SetUPQC();
        SetUpToolbar();
    }

    private void SetUpToolbar() {
        //Set lại title
        toolbar.setTitle("Luật giao thông");
        setSupportActionBar(toolbar);
        //Thêm nút navigation
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
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

    private void SetUPQC() {
        viewFlipper.setFlipInterval(3000);
        viewFlipper.setAutoStart(true);
    }

    private void ClickItem() {
        itemLXK.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ToLuatAcitivity("Xe Khách");
            }
        });
        itemLXT.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ToLuatAcitivity("Xe Tải");
            }
        });
        itemLOT.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ToLuatAcitivity("Ô Tô");
            }
        });
        itemLXM.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ToLuatAcitivity("Xe Máy");
            }
        });
    }
    private void ToLuatAcitivity(String str){
        Intent intent = new Intent(TCLActivity.this, LuatActivity.class);
        intent.putExtra("loai", str);
        startActivity(intent);
    }
    private void AnhXa() {
        toolbar = findViewById(R.id.toolbar);
        itemLXM = findViewById(R.id.itemloixemay);
        itemLOT = findViewById(R.id.itemloioto);
        itemLXT = findViewById(R.id.itemloixetai);
        itemLXK = findViewById(R.id.itemloixekhach);
        viewFlipper =(ViewFlipper)findViewById(R.id.viewFlipper);
    }
}
