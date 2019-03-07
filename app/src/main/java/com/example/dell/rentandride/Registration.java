package com.example.dell.rentandride;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import java.util.HashMap;
import java.util.Map;

import static com.example.dell.rentandride.R.id.r_phone;

public class Registration extends AppCompatActivity {
    private EditText rname;
    private EditText remail;
    private EditText rphone;
    private EditText rpass;
    private EditText rcpass;
    private Button rnext;
    RequestQueue requestQueue;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_registration);

        requestQueue= Volley.newRequestQueue(this);

        rname = (EditText) findViewById(R.id.r_name);
        remail = (EditText) findViewById(R.id.r_email);
        rphone = (EditText) findViewById(R.id.r_phone);
        rpass = (EditText) findViewById(R.id.r_pass);
        rcpass = (EditText) findViewById(R.id.r_cpass);
        rnext = (Button) findViewById(R.id.r_next);

        rnext.setOnClickListener(new View.OnClickListener(){
                    public void onClick(View view){
                        register(rname.getText().toString(),remail.getText().toString(),rphone.getText().toString(),rpass.getText().toString());
//            validate(rname.getText().toString(),remail.getText().toString(),rpass.getText().toString(),rcpass.getText().toString());
        }
        }
        );

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

    private void validate(String rname, String remail, String rpass, String rcpass){
        if((rname != null) && (remail != null)  && (rpass .equals(rcpass))) {
            Intent intent = new Intent(Registration.this, Navi.class);
            startActivity(intent);}
        }

    public void register(final String rname, final String remail, final String mobile, final String rpass){
       String url = "http://192.168.43.146/rent_and_ride/register.php";
        StringRequest postRequest = new StringRequest(Request.Method.POST, url,
                new Response.Listener<String>()
                {
                    @Override
                    public void onResponse(String response) {
                        // response
                        Log.d("Response", response);

                        if (response.equals("registered")){
                            Intent intent = new Intent(Registration.this, Navi.class);
                            startActivity(intent);
                            finish();
                            Toast.makeText(Registration.this, "user registration success", Toast.LENGTH_SHORT).show();
                        }
                        else if (response.equals("user already exists")){
                            Toast.makeText(Registration.this, "user already exists", Toast.LENGTH_SHORT).show();
                        }
                    }
                },
                new Response.ErrorListener()
                {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        // error
                        Log.d("Error.Response", error.toString());
                    }
                }
        ) {
            @Override
            protected Map<String, String> getParams()
            {
                Map<String, String>  params = new HashMap<String, String>();
                params.put("name", rname);
                params.put("mobile",mobile);
                params.put("email",remail);
                params.put("password",rpass);

                return params;
            }
        };
        requestQueue.add(postRequest);
    }
    }
