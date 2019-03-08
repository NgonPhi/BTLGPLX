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

import com.ngonphikp.gplx.Adapter.BBDBAdapter;
import com.ngonphikp.gplx.Model.BienBaoDuongBo;
import com.ngonphikp.gplx.R;

import java.util.ArrayList;

public class BBDBActivity extends AppCompatActivity {

    ListView lvBienBaoDuongBo;
    ArrayList<BienBaoDuongBo> arrayBienBaoDuongBo;
    BBDBAdapter adapter;

    android.support.v7.widget.Toolbar toolbar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_bbdb);

        AnhXa();
        GetData();
        SetToolbar();
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
        lvBienBaoDuongBo = (ListView) findViewById(R.id.listViewBienBaoDuongBo);
        toolbar = findViewById(R.id.toolbar);
    }

    private void GetData(){
        arrayBienBaoDuongBo = new ArrayList<>();

        arrayBienBaoDuongBo.add(new BienBaoDuongBo("Cấm máy kéo","Để báo đường cấm tất cả các loại máy kéo, kể cả máy kéo bánh hơi và bánh xích đi qua", R.drawable.bb1));
        arrayBienBaoDuongBo.add(new BienBaoDuongBo("Cự ly tối thiểu giữa hai xe", "Để báo xe ô to phải đi cách nhau một khoảng tối thiểu. Số ghi trên biển báo cho biết khoảng cách tối thiểu tính bằng mét. Biển có hiệu lực cấm các xe ôtô không được đi cách nhau kể cả các xe được ưu tiên theo luật lệ nhà nước quy định cự ly nhỏ hơn trị số ghi trên biển báo.", R.drawable.bb2));
        arrayBienBaoDuongBo.add(new BienBaoDuongBo("Cấm xe người kéo, đẩy", "Để báo đường cấm xe người kéo, đẩy đi qua. Biển không có giá trị cấm những xe nôi của trẻ em và phương tiện chuyên dùng để đi lại của người tàn tật", R.drawable.bb3));
        arrayBienBaoDuongBo.add(new BienBaoDuongBo("Cấm ô tô khách và ô tô tải", "Để báo đường cấm ô tô chở hành khách và các loại ô tô tải trọng lượng lớn nhất cho phét trên 3,5 tấn kể cả các loại máy kéo và xe máy thi công chuyên dùng đi qua trừ các xe được ưu tiên theo luật nhà nước quy định.", R.drawable.bb4));
        arrayBienBaoDuongBo.add(new BienBaoDuongBo("Cấm máy kéo","Để báo đường cấm tất cả các loại máy kéo, kể cả máy kéo bánh hơi và bánh xích đi qua", R.drawable.bb1));
        arrayBienBaoDuongBo.add(new BienBaoDuongBo("Cự ly tối thiểu giữa hai xe", "Để báo xe ô to phải đi cách nhau một khoảng tối thiểu. Số ghi trên biển báo cho biết khoảng cách tối thiểu tính bằng mét. Biển có hiệu lực cấm các xe ôtô không được đi cách nhau kể cả các xe được ưu tiên theo luật lệ nhà nước quy định cự ly nhỏ hơn trị số ghi trên biển báo.", R.drawable.bb2));
        arrayBienBaoDuongBo.add(new BienBaoDuongBo("Cấm xe người kéo, đẩy", "Để báo đường cấm xe người kéo, đẩy đi qua. Biển không có giá trị cấm những xe nôi của trẻ em và phương tiện chuyên dùng để đi lại của người tàn tật", R.drawable.bb3));
        arrayBienBaoDuongBo.add(new BienBaoDuongBo("Cấm ô tô khách và ô tô tải", "Để báo đường cấm ô tô chở hành khách và các loại ô tô tải trọng lượng lớn nhất cho phét trên 3,5 tấn kể cả các loại máy kéo và xe máy thi công chuyên dùng đi qua trừ các xe được ưu tiên theo luật nhà nước quy định.", R.drawable.bb4));

        adapter = new BBDBAdapter(this, R.layout.dong_bien_bao, arrayBienBaoDuongBo);
        lvBienBaoDuongBo.setAdapter(adapter);
    }


}
