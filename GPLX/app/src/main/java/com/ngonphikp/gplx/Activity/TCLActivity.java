package com.ngonphikp.gplx.Activity;

import android.content.Intent;
import android.support.constraint.ConstraintLayout;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

import com.ngonphikp.gplx.R;

public class TCLActivity extends AppCompatActivity {
    ConstraintLayout itemLXM, itemLOT, itemLXK, itemLXT;
    android.support.v7.widget.Toolbar toolbar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_tcl);

        AnhXa();
        ClickItem();
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
        overridePendingTransition(R.anim.slide_out, R.anim.slide_in);
    }
    private void AnhXa() {
        itemLXM = findViewById(R.id.itemloixemay);
        itemLOT = findViewById(R.id.itemloioto);
        itemLXT = findViewById(R.id.itemloixetai);
        itemLXK = findViewById(R.id.itemloixekhach);
    }
}
