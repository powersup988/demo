package com.example.myapplication;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;

public class Main2Activity extends AppCompatActivity {
    TextView textView;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);
        textView=findViewById(R.id.xianshi);
        Intent intent=getIntent();
        String name=intent.getStringExtra("name");
        name=name+",贵工程欢迎你！！";
        textView.setText(name);

    }
    public void ok(View view){
        finish();
    }

}
