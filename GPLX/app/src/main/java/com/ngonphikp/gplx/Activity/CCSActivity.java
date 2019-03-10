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
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import com.ngonphikp.gplx.Adapter.AnswerAdapter;
import com.ngonphikp.gplx.R;
import com.squareup.picasso.Picasso;

import java.util.ArrayList;

public class CCSActivity extends AppCompatActivity {

    android.support.v7.widget.Toolbar toolbar;
    int current = 4;
    int size = 30;

    TextView txtQuestion;
    ImageView imgQuestion;
    ListView lvAnswer;
    Button btnPrevious, btnNext;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_ccs);

        AnhXa();
        GetData();
        SetToolbar();
    }

    private void GetData() {
        txtQuestion.setText("I am trying to add search bar on Actionbar and found Nullpointer exception on getActionVeiw().");
        imgQuestion.setImageResource(R.drawable.question);

        ArrayList<String> array = new ArrayList<>();
        array.add("Câu trả lời 1");
        array.add("Câu trả lời 2");
        array.add("Câu trả lời 3");
        array.add("Câu trả lời 4");

        final AnswerAdapter adapter = new AnswerAdapter(this, R.layout.dong_answer, array);
        lvAnswer.setAdapter(adapter);

        lvAnswer.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                //Demo xét điều kiện check
                if (position % 2 == 0)adapter.checkTrue(view);
                else adapter.checkFalse(view);
            }
        });
    }

    private void AnhXa() {
        toolbar = findViewById(R.id.toolbar);

        txtQuestion = (TextView) findViewById(R.id.textViewQuestion);
        imgQuestion = (ImageView) findViewById(R.id.imageViewQuestion);

        lvAnswer = (ListView) findViewById(R.id.listViewAnswer);

        btnPrevious = (Button) findViewById(R.id.buttonPrevious);
        btnNext = (Button) findViewById(R.id.buttonNext);
    }

    // Liên kết menu tạo bên res
    @Override
    public boolean onCreateOptionsMenu(final Menu menu) {
        MenuInflater menuInflater = getMenuInflater();
        menuInflater.inflate(R.menu.menu_question, menu);
        changeItem(current, size, menu);

        btnNext.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                current++;
                changeItem(current, size, menu);
            }
        });
        btnPrevious.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                current--;
                changeItem(current, size, menu);
            }
        });

        return true;
    }

    // Thay đổi title item menu question
    private void changeItem(int cur, int size, Menu menu){
        MenuItem menuItem = menu.findItem(R.id.menuQuestion);
        menuItem.setTitle("Câu " + cur + " / " + size);
    }

    // Bắt sự kiện click item trong menu
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()){
            case R.id.menuQuestion:
                Toast.makeText(this, item.getTitle(), Toast.LENGTH_SHORT).show();
                break;
        }
        return true;
    }

    // Set toolbar thay cho actionbar
    private void SetToolbar() {
        //Set lại title
        toolbar.setTitle("Các câu hay sai");
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

}
