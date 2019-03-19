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
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import com.ngonphikp.gplx.Adapter.LeftMenuAdapter;
import com.ngonphikp.gplx.Model.ItemLeftMenu;
import com.ngonphikp.gplx.R;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {

    ConstraintLayout itemTSH, itemHLT, itemBB, itemMT, itemTCL, itemCCS;
    android.support.v7.widget.Toolbar toolbar;
    DrawerLayout drawerLayout;

    ListView lvTop;
    ListView lvBot;
    TextView txtURL;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        AnhXa();
        InitLeftMenu();
        ClickLeftMenuItem();
        ClickItem();
        SetToolbar();
    }

    // Khởi tạo Left menu
    private void InitLeftMenu() {
        ArrayList<ItemLeftMenu> arrayTop = new ArrayList<ItemLeftMenu>();
        arrayTop.add(new ItemLeftMenu("Thi Sát Hạch", R.drawable.thisathach));
        arrayTop.add(new ItemLeftMenu("Học Lý Thuyết", R.drawable.hoclythuyet));
        arrayTop.add(new ItemLeftMenu("Mẹo Thi Kết Quả Cao", R.drawable.meothiketquacao));
        arrayTop.add(new ItemLeftMenu("Biển Báo Đường Bộ", R.drawable.bienbaoduongbo));
        arrayTop.add(new ItemLeftMenu("Tra Cứu Luật Nhanh", R.drawable.tracuuluat));
        arrayTop.add(new ItemLeftMenu("Các Câu Hay Sai", R.drawable.cauhaysai));
        LeftMenuAdapter adapter = new LeftMenuAdapter(this, R.layout.dong_left_menu, arrayTop);

        ArrayList<ItemLeftMenu> arrayBot = new ArrayList<ItemLeftMenu>();
        arrayBot.add(new ItemLeftMenu("Chọn Bằng GPLX",R.drawable.chonbanggplx));
        arrayBot.add(new ItemLeftMenu("Đánh Giá Ứng Dụng",R.drawable.danhgiaungdung));
        arrayBot.add(new ItemLeftMenu("Ứng Dụng Khác",R.drawable.ungdungkhac));
        arrayBot.add(new ItemLeftMenu("Chính Sách Và Điều Khoản",R.drawable.dieukhoanvachinhsach));
        LeftMenuAdapter adapter1 = new LeftMenuAdapter(this, R.layout.dong_left_menu,arrayBot);

        lvTop.setAdapter(adapter);
        lvBot.setAdapter(adapter1);
    }

    //Bắt sự kiện với LeftMenu
    private void ClickLeftMenuItem(){
        //text URL
        txtURL.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(MainActivity.this, "Google", Toast.LENGTH_SHORT).show();
            }
        });
        //listview top
        lvTop.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                CallMethod(position);
            }
        });
        //istview bot
        lvBot.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                switch (position){
                case 0:
                    Intent intent = new Intent(MainActivity.this, SetUpGPLXActivity.class);
                    startActivity(intent);
                    break;
                case 1:
                    Toast.makeText(MainActivity.this, "Đánh Giá Ứng Dụng", Toast.LENGTH_SHORT).show();
                    break;
                case 2:
                    Toast.makeText(MainActivity.this, "Ứng Dụng Khác", Toast.LENGTH_SHORT).show();
                    break;
                case 3:
                    Toast.makeText(MainActivity.this, "Chính Sách Và Điều Khoản", Toast.LENGTH_SHORT).show();
                    break;
                }
            }
        });
    }

    // Set toolbar thay cho actionbar
    private void SetToolbar() {
        //Set lại title
        toolbar.setTitle("Ôn thi giấy phép lái xe");
        setSupportActionBar(toolbar);

        //Thêm nút navigation và thay đổi icon
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
            case 5:
                // Các câu hay sai
                OpenCCSActivity();
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
        lvTop = (ListView) findViewById(R.id.listViewTop);
        lvBot = (ListView) findViewById(R.id.listViewBot);
        txtURL = (TextView) findViewById(R.id.textViewURL);
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
        Intent intent = new Intent(MainActivity.this, TCLActivity.class);
        startActivity(intent);
    }

    private void OpenMTActivity(){
        Intent intent = new Intent(MainActivity.this, MTActivity.class);
        startActivity(intent);
    }

    private void OpenCCSActivity(){
        Intent intent = new Intent(MainActivity.this, CCSActivity.class);
        startActivity(intent);
    }
}
