package com.ngonphikp.gplx.Activity;

import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.Toast;

import com.ngonphikp.gplx.Adapter.HLTAdapter;
import com.ngonphikp.gplx.Model.HocLyThuyet;
import com.ngonphikp.gplx.R;

import java.util.ArrayList;

public class HLTActivity extends AppCompatActivity {

    ListView lvHocLyThuyet;
    ArrayList<HocLyThuyet> arrayHocLyThuyet;
    HLTAdapter adapter;

    android.support.v7.widget.Toolbar toolbar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_hlt);

        AnhXa();
        GetData();
        ClickItem();
        SetToolbar();
    }

    //Bắt sự kiện click vào dòng học lý thuyết
    private void ClickItem() {
        lvHocLyThuyet.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                Toast.makeText(HLTActivity.this, position + "", Toast.LENGTH_SHORT).show();
            }
        });
    }

    // Liên kết menu tạo bên res
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater menuInflater = getMenuInflater();
        menuInflater.inflate(R.menu.menu_reset, menu);
        return true;
    }

    // Bắt sự kiện click item trong menu
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()){
            case R.id.menuReset:
                Toast.makeText(this, "Reset", Toast.LENGTH_SHORT).show();
                break;
        }
        return true;
    }

    // Set toolbar thay cho actionbar
    private void SetToolbar() {
        //Set lại title
        toolbar.setTitle("Học lý thuyết");
        setSupportActionBar(toolbar);

        //Thêm nút navigation và thay đổi icon
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
                overridePendingTransition(R.anim.slide_out, R.anim.slide_in);
            }
        });
    }

    private void AnhXa() {
        lvHocLyThuyet = (ListView) findViewById(R.id.listViewHocLyThuyet);
        toolbar = findViewById(R.id.toolbar);
    }

    private void GetData() {
        arrayHocLyThuyet = new ArrayList<>();

        arrayHocLyThuyet.add(new HocLyThuyet(R.drawable.kythuatlaixe, "Tiêu đề 1", 5, 30));
        arrayHocLyThuyet.add(new HocLyThuyet(R.drawable.kythuatlaixe, "Tiêu đề 2", 15, 44));
        arrayHocLyThuyet.add(new HocLyThuyet(R.drawable.kythuatlaixe, "Tiêu đề 3", 20, 96));
        arrayHocLyThuyet.add(new HocLyThuyet(R.drawable.kythuatlaixe, "Tiêu đề 4", 8, 78));

        adapter = new HLTAdapter(this, R.layout.dong_hoc_ly_thuyet, arrayHocLyThuyet);
        lvHocLyThuyet.setAdapter(adapter);
    }
}
