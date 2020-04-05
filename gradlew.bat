package com.example.travelapp;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.snackbar.Snackbar;

public class Second extends AppCompatActivity {
TextView fm1,fm2,fm3,t1,t2,t3,t4;


    Context context;
    SharedPreferences sharedpreferences;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_second);
//fm1 = (TextView)findViewById(R.id.frm1);

        fm1 = (TextView)findViewById(R.id.frm1);
fm3 = (TextView)findViewById(R.id.frm13);
t1 = (TextView)findViewById(R.id.frm2);
        t2 = (TextView)findViewById(R.id.frm22);
        t4 = (TextView)findViewById(R.id.frm24);


        sharedpreferences = getApplicationContext().getSharedPreferences("MyPref", Context.MODE_PRIVATE);
fm1.setText(sharedpreferences.getString("from",null));
        fm3.setText(sharedpreferences.getString("from",null));
        t1.setText(sharedpreferences.getString("to",null));
        t2.setText(sharedpreferences.getString("to",null));
        t4.setText(sharedpreferences.getString("to",null));


        Toast.makeText(getApplicationContext(),sharedpreferences.getString("to",null),Toast.LENGTH_SHORT).show();
        FloatingActionButton fab = findViewById(R.id.fab);
        fab.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Snackbar.make(view, "Replace with your own action", Snackbar.LENGTH_LONG)
                        .setAction("Action", null).show();
            }
        });

        View bottomSheet = findViewById(R.id.design_bottom_sheet);
        final BottomSheetBehavior behavior = BottomSheetBehavior.from(bottomSheet);
        behavior.setBottomSheetCallback(new BottomShe