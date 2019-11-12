package com.example.myapplication;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {
    EditText username,mima;
    Button bt_queding,bt_quxiao;
    Intent intent;
    int i=0;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main4);
        username=findViewById(R.id.name);
        mima=findViewById(R.id.password);
        bt_queding=findViewById(R.id.sure_bt);
        bt_quxiao=findViewById(R.id.nosure_bt);
        bt_queding.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                System.out.println(username.getText().toString());
                System.out.println("admin");
                System.out.println((boolean)username.getText().toString().equals("admin"));

                if (username.getText().toString().equals("admin")&&mima.getText().toString()
                        .equals("123456")){
                    System.out.println(mima.getText().toString());
                    intent=new Intent();
                    intent.setClass(MainActivity.this,Main3Activity.class);
                    intent.putExtra("name","王太恒，你好");
                    startActivity(intent);
                }
                else {
                    i++;
                    Toast.makeText(MainActivity.this, "你输入的密码错误，请重新输入！", Toast.LENGTH_SHORT).show();

                    if (i>=3){
                        Toast.makeText(MainActivity.this,"你已经输入三次，系统将直接退出！",Toast.LENGTH_SHORT).show();
                        finish();
                    }

                }
            }

        });
        bt_quxiao.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                username.setText("");
                mima.setText("");
                username.setFocusableInTouchMode(true);//使光标回到首行
                username.requestFocus();

            }

        });
    }
}
