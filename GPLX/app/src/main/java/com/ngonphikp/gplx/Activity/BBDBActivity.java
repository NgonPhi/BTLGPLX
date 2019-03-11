package com.ngonphikp.gplx.Activity;

import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.design.widget.TabLayout;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.SearchView;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ListView;

import com.ngonphikp.gplx.Adapter.BBDBAdapter;
import com.ngonphikp.gplx.Adapter.PageAdapter;
import com.ngonphikp.gplx.Fragment.Fragment_bbdb;
import com.ngonphikp.gplx.Model.BienBaoDuongBo;
import com.ngonphikp.gplx.R;

import java.util.ArrayList;

public class BBDBActivity extends AppCompatActivity {

    android.support.v7.widget.Toolbar toolbar;
    ViewPager viewPager;
    TabLayout tab;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_bbdb);

        AnhXa();
        SetupViewPager();
        SetToolbar();
    }

    private void SetupViewPager() {
        PageAdapter pageAdapter = new PageAdapter(getSupportFragmentManager());
        pageAdapter.add(Fragment_bbdb.newInstance(1), "Loại 1");
        pageAdapter.add(Fragment_bbdb.newInstance(2), "Loại 2");
        viewPager.setAdapter(pageAdapter);
        tab.setupWithViewPager(viewPager);
    }

    // Set toolbar thay cho actionbar
    private void SetToolbar() {
        //Set lại title
        toolbar.setTitle("Biển báo giao thông");
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

    // Liên kết menu tạo bên res
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater menuInflater = getMenuInflater();
        menuInflater.inflate(R.menu.menu_search, menu);

        //Lấy search view
        MenuItem menuItem = menu.findItem(R.id.menuSearch);
        SearchView searchView = (SearchView) menuItem.getActionView();

        //Set search view
        searchView.setQueryHint("Tìm kiếm biển báo ...");
        searchView.setMaxWidth(Integer.MAX_VALUE);

        //Bắt sự kiện search view
        searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() {
            @Override
            public boolean onQueryTextSubmit(String s) {
                Log.d("Tag", s);
                return false;
            }

            @Override
            public boolean onQueryTextChange(String s) {
                return false;
            }
        });
        return true;
    }

    private void AnhXa() {
        toolbar = findViewById(R.id.toolbar);
        viewPager = findViewById(R.id.viewPager);
        tab = findViewById(R.id.tab);
    }

}
