package com.example.dell.rentandride;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class Forgot extends AppCompatActivity {
    EditText fmail;
    EditText fphone;
    Button send;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_forgot);

        fmail = (EditText) findViewById(R.id.f_email);
        fphone = (EditText) findViewById(R.id.f_phone);
        send = (Button) findViewById(R.id.f_btn_send);

        send.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                validate(fmail.getText().toString(), fphone.getText().toString());
            }
        });
        if(getSupportActionBar() != null)
        {   getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setDisplayShowHomeEnabled(true);

        }
    }
    private void validate(String email,String phone)
    {if(email.equals("abcdefg@mail.com") || (phone.equals("0123456789")))
        {
            Intent intent =new Intent(Forgot.this, OTP.class);
            startActivity(intent);
            Toast.makeText(Forgot.this, "OTP Sent", Toast.LENGTH_SHORT).show();
        }else
    {
        Toast.makeText(Forgot.this, "Input Incorrect", Toast.LENGTH_SHORT).show();
    }

    }
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if(item.getItemId() == android.R.id.home)
            finish();
        return super.onOptionsItemSelected(item);
    }
}
