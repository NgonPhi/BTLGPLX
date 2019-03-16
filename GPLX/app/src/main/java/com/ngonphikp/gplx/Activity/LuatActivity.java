package com.ngonphikp.gplx.Activity;

import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.SearchView;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ListView;
import android.widget.Toast;

import com.ngonphikp.gplx.Adapter.LuatAdapter;
import com.ngonphikp.gplx.Model.Luat;
import com.ngonphikp.gplx.R;

import java.util.ArrayList;

public class LuatActivity extends AppCompatActivity {
    android.support.v7.widget.Toolbar toolbar;
    ListView lvLuat;
    LuatAdapter adapter;
    ArrayList<Luat> arrayList;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_luat);

        AnhXa();
        GetData();
        SetToolBar();
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
        searchView.setQueryHint("Tra cứu luật nhanh ...");
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

    private void SetToolBar() {
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

    private void GetData() {
        ArrayList<Luat> data = new ArrayList<>();
        data.add(new Luat("Ten 1", "Mo Ta 1", "1000000 - 2000000", R.drawable.loixemay, "Xe Máy"));
        data.add(new Luat("Ten 2", "Mo Ta 2", "1000000 - 2000000", R.drawable.loixemay, "Xe Máy"));
        data.add(new Luat("Ten 3", "Mo Ta 3", "1000000 - 2000000", R.drawable.loixemay, "Xe Máy"));
        data.add(new Luat("Ten 4", "Mo Ta 4", "1000000 - 2000000", R.drawable.loixemay, "Xe Máy"));
        data.add(new Luat("Ten 5", "Mo Ta 5", "1000000 - 2000000", R.drawable.loixemay, "Xe Máy"));

        data.add(new Luat("Ten 1", "Mo Ta 1", "1000000 - 2000000", R.drawable.loioto, "Ô Tô"));
        data.add(new Luat("Ten 2", "Mo Ta 2", "1000000 - 2000000", R.drawable.loioto, "Ô Tô"));
        data.add(new Luat("Ten 3", "Mo Ta 3", "1000000 - 2000000", R.drawable.loioto, "Ô Tô"));
        data.add(new Luat("Ten 4", "Mo Ta 4", "1000000 - 2000000", R.drawable.loioto, "Ô Tô"));
        data.add(new Luat("Ten 5", "Mo Ta 5", "1000000 - 2000000", R.drawable.loioto, "Ô Tô"));

        String loai = getIntent().getStringExtra("loai");
        arrayList = new ArrayList<>();
        for(int i = 0; i < data.size(); i++){
            if(loai.equals(data.get(i).getLoai())){
                arrayList.add(data.get(i));
            }
        }
        adapter = new LuatAdapter(this, R.layout.dong_tra_cuu_luat, arrayList);
        lvLuat.setAdapter(adapter);
    }

    private void AnhXa() {
        //Ánh xạ listView và toolBar
        toolbar = findViewById(R.id.toolbar);
        lvLuat = (ListView) findViewById(R.id.listViewLuat);
    }
}
