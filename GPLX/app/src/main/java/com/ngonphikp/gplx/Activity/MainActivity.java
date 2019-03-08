package com.ngonphikp.gplx.Activity;

import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.constraint.ConstraintLayout;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.GravityCompat;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.widget.Toast;

import com.ngonphikp.gplx.R;

public class MainActivity extends AppCompatActivity {

    ConstraintLayout itemTSH, itemHLT, itemBB, itemMT, itemTCL, itemCCS;
    android.support.v7.widget.Toolbar toolbar;
    DrawerLayout drawerLayout;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        AnhXa();
        ClickItem();
        SetToolbar();
    }

    // Set toolbar thay cho actionbar
    private void SetToolbar() {
        //Set lại title
        toolbar.setTitle("Ôn thi giấy phép lái xe");
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
        Drawable drawable= ContextCompat.getDrawable(this, R.drawable.menu);
        Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
        Drawable newdrawable = new BitmapDrawable(getResources(),
                Bitmap.createScaledBitmap(bitmap, actionBarSize,  actionBarSize, true));
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setHomeAsUpIndicator(newdrawable);

        //Bắt sự kiện click nút navigation
        toolbar.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                drawerLayout.openDrawer(GravityCompat.START);
            }
        });
    }

    //Adapter call function in activity - Sự kiện khi click vào mỗi item banner
    public void CallMethod(int pos) {
        //pos theo thứ tự add bên fragment
        switch (pos){
            case 0:
                //Thi sát hạch
                OpenTSHActivity();
                break;
            case 1:
                //Học lý thuyết
                OpenHLTActivity();
                break;
            case 2:
                //Mẹo thi
                OpenMTActivity();
                break;
            case 3:
                //Biển báo đường bộ
                OpenBBDBActivity();
                break;
            case 4:
                //Tra cứu luật
                OpenTCLActivity();
                break;
        }
    }

    private void AnhXa(){
        itemTSH = (ConstraintLayout) findViewById(R.id.itemThiSatHach);
        itemHLT = (ConstraintLayout) findViewById(R.id.itemHocLyThuyet);
        itemBB = (ConstraintLayout) findViewById(R.id.itemBienBao);
        itemMT = (ConstraintLayout) findViewById(R.id.itemMeoThi);
        itemTCL = (ConstraintLayout) findViewById(R.id.itemTraCuuLuat);
        itemCCS = (ConstraintLayout) findViewById(R.id.itemCacCauSai);
        toolbar = findViewById(R.id.toolbar);
        drawerLayout = (DrawerLayout) findViewById(R.id.drawerLayout);
    }

    private void ClickItem(){
        itemTSH.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                OpenTSHActivity();
            }
        });
        itemHLT.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                OpenHLTActivity();
            }
        });
        itemBB.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                OpenBBDBActivity();
            }
        });
        itemMT.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                OpenMTActivity();
            }
        });
        itemTCL.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                OpenTCLActivity();
            }
        });
        itemCCS.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                OpenCCSActivity();
            }
        });
    }

    private void OpenTSHActivity(){
        Intent intent = new Intent(MainActivity.this, TSHActivity.class);
        startActivity(intent);
    }

    private void OpenBBDBActivity(){
        Intent intent = new Intent(MainActivity.this, BBDBActivity.class);
        startActivity(intent);
    }

    private void OpenHLTActivity(){
        Intent intent = new Intent(MainActivity.this, HLTActivity.class);
        startActivity(intent);
    }

    private void OpenTCLActivity(){
        Toast.makeText(MainActivity.this, "TRA CỨU LUẬT NHANH", Toast.LENGTH_SHORT).show();
    }

    private void OpenMTActivity(){
        Toast.makeText(MainActivity.this, "MẸO THI KẾT QUẢ CAO", Toast.LENGTH_SHORT).show();
    }

    private void OpenCCSActivity(){
        Toast.makeText(MainActivity.this, "CÁC CÂU SAI", Toast.LENGTH_SHORT).show();
    }
}
