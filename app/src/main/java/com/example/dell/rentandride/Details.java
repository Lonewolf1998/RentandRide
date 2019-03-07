package com.example.dell.rentandride;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.MenuItem;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

public class Details extends AppCompatActivity {

    TextView name,email,phone,id,pbook;
    ImageView imgv;
    Button logout;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_details);
        name = (TextView) findViewById(R.id.d_name2);
        email = (TextView) findViewById(R.id.d_mail2);
        phone = (TextView) findViewById(R.id.d_phone2);
        id = (TextView) findViewById(R.id.d_userid2);
        pbook = (TextView) findViewById(R.id.d_pbook);
        imgv = (ImageView) findViewById(R.id.d_imageView);
        logout = (Button) findViewById(R.id.d_logout);



         if(getSupportActionBar() != null)
        {   getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setDisplayShowHomeEnabled(true);

        }
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if(item.getItemId() == android.R.id.home)
            finish();
        return super.onOptionsItemSelected(item);
    }
}
