package com.ngonphikp.gplx.Activity;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.app.FragmentManager;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.TextView;
import android.widget.Toast;

import com.ankushgrover.hourglass.Hourglass;
import com.ngonphikp.gplx.Adapter.PageAdapter;
import com.ngonphikp.gplx.Adapter.QuestionAdapter;
import com.ngonphikp.gplx.Fragment.Fragment_thi;
import com.ngonphikp.gplx.R;

import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

public class CTThiAcivity extends AppCompatActivity {

    android.support.v7.widget.Toolbar toolbar;
    private ViewPager pager;
    private ArrayList<Integer> arrCCS;
    private int current;
    private int size;
    MenuItem menuItem;
    Hourglass hourglass;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_ctthi);
        AnhXa();
        GetDataLocal();
        SetUpPage();
        SetToolbar();
        SetUpTimer();
    }

    private void SetUpTimer() {
        hourglass = new Hourglass(50000, 1000) {
            @Override
            public void onTimerTick(long millisUntilFinished) {
                String countTime = String.format("%02d:%02d", TimeUnit.MILLISECONDS.toMinutes(millisUntilFinished), TimeUnit.MILLISECONDS.toSeconds(millisUntilFinished) - TimeUnit.MINUTES.toSeconds(
                        TimeUnit.MILLISECONDS.toMinutes(millisUntilFinished)));
                toolbar.setTitle(countTime);
            }

            @Override
            public void onTimerFinish() {
                toolbar.setTitle("00:00");
            }
        };
        hourglass.startTimer();
    }

    private void SetUpPage() {
        FragmentManager manager = getSupportFragmentManager();
        PageAdapter adapter = new PageAdapter(manager);
        for (int i = 0; i < arrCCS.size() ; i++){
            adapter.add(Fragment_thi.newInstance(arrCCS.get(i)));
        }
        pager.setAdapter(adapter);
        pager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() {
            @Override
            public void onPageScrolled(int i, float v, int i1) {

            }

            @Override
            public void onPageSelected(int i) {
                current = i + 1;
                changeItem(current, size);
            }

            @Override
            public void onPageScrollStateChanged(int i) {

            }
        });
    }

    private void GetDataLocal() {
        arrCCS = new ArrayList<>();
        arrCCS.add(1);
        arrCCS.add(3);
        arrCCS.add(2);
        arrCCS.add(6);
        arrCCS.add(40);
        arrCCS.add(47);
        arrCCS.add(11);
        arrCCS.add(9);

        current = 1;
        size = arrCCS.size();
    }

    private void AnhXa() {
        toolbar = findViewById(R.id.toolbar);
        pager = (ViewPager) findViewById(R.id.view_pager);
    }

    // Liên kết menu tạo bên res
    @Override
    public boolean onCreateOptionsMenu(final Menu menu) {
        MenuInflater menuInflater = getMenuInflater();
        menuInflater.inflate(R.menu.menu_thi, menu);
        menuItem = menu.findItem(R.id.menuQuestion);
        changeItem(current, size);
        return true;
    }

    // Thay đổi title item menu question
    private void changeItem(int cur, int size){
        menuItem.setTitle("Câu " + cur + " / " + size);
    }

    // Bắt sự kiện click item trong menu
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()){
            case R.id.menuQuestion:
                ShowDialogQuestion();
                break;
            case R.id.menuFinish:
                hourglass.pauseTimer();
                AlertDialog.Builder builder = new AlertDialog.Builder(this);
                builder.setTitle("Ôn thi giấy phép lái xe");
                builder.setMessage("Bạn có muốn nộp bài không?");
                builder.setCancelable(false);
                builder.setPositiveButton("Có", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialogInterface, int i) {
                        Finish();
                    }
                });
                builder.setNegativeButton("Không", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.dismiss();
                        hourglass.resumeTimer();
                    }
                });
                AlertDialog alertDialog = builder.create();
                alertDialog.show();
                break;
        }
        return true;
    }

    private void Finish() {
        Toast.makeText(this, "Finish", Toast.LENGTH_SHORT).show();
    }

    private void ShowDialogQuestion() {
        ArrayList<Integer> arrInt = new ArrayList<>();
        for(int i = 1; i <= size ; i++)arrInt.add(i);
        final Dialog dialog = new Dialog(this);
        dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
        dialog.setContentView(R.layout.dialog_question);
        TextView txtTitle = (TextView) dialog.findViewById(R.id.textViewTitle);
        txtTitle.setText("Danh sách câu hỏi: ");
        GridView gvDSCH = (GridView) dialog.findViewById(R.id.GridViewDSCH);
        QuestionAdapter qAdpater = new QuestionAdapter(this, R.layout.item_question, arrInt);
        gvDSCH.setAdapter(qAdpater);
        gvDSCH.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                pager.setCurrentItem(position);
                dialog.dismiss();
            }
        });
        dialog.show();
    }

    // Set toolbar thay cho actionbar
    private void SetToolbar() {
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

}
