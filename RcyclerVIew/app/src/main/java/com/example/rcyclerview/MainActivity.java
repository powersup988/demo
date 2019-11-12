package com.example.rcyclerview;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import androidx.recyclerview.widget.RecyclerView;

/**
 * @author sunda
 */
public class MainActivity extends AppCompatActivity {

    RecyclerView mRecyclerView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
//    class HomeAdapter extends RecyclerView.Adapter<HomeAdapter.MyViewHolder>{
//        @Override
//        public MyViewHolder onCreateViewHolder(viewGroup parent, int viewType) {
//            MyViewHolder holder=new MyViewHolder(LayoutInflater.from(MainActivity.this).inflate(R.layout.layout,parent,false));
//            return holder;
//        }
//
//        @NonNull
//        @Override
//        public HomeAdapter.MyViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
//            return null;
//        }
//
//        @Override
//        public void onBindViewHolder(MyViewHolder holder, int position) {
//           holder.name.setText(names[])
//        }
//
//        @Override
//        public int getItemCount() {
//            return 0;
//        }
//
//        O
    //}
}
