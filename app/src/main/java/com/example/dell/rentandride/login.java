package com.example.dell.rentandride;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.CardView;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import java.util.HashMap;
import java.util.Map;

import static android.icu.lang.UCharacter.GraphemeClusterBreak.V;

public class login extends AppCompatActivity implements View.OnClickListener {

    private EditText email;
    private EditText pass;
    private TextView fpass;
    private Button reg;
    private CardView login;
    private int counter = 5;
    RequestQueue requestQueue;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        requestQueue= Volley.newRequestQueue(this);
        email = (EditText) findViewById(R.id.l_email);

        pass = (EditText) findViewById(R.id.l_pass);
        fpass = (TextView) findViewById(R.id.l_fpass);
        reg = (Button) findViewById(R.id.l_btn_reg);
        login = (CardView) findViewById(R.id.l_card);
        login.setOnClickListener(this);
        reg.setOnClickListener(this);
        fpass.setOnClickListener(this);

    }
    @Override
    public void onClick(View view) {
        if (view == login) {
            login(email.getText().toString(), pass.getText().toString());
//            validate(email.getText().toString(), pass.getText().toString());
        } else if (view == reg) {
            Intent i = new Intent(login.this, Registration.class);
            startActivity(i);
        } else if (view == fpass) {
            Intent i = new Intent(login.this, Forgot.class);
            startActivity(i);
        }
    }

    private void validate(String uname, String upass) {
        if ((uname .equals("admin") ) && (upass .equals("12345") )) {
            Intent intent = new Intent(login.this, Navi.class);
            startActivity(intent);
            finish();
            Toast.makeText(login.this, "Welcome", Toast.LENGTH_SHORT).show();
        }else{
            counter--;
            Toast.makeText(login.this, "Invalid Input", Toast.LENGTH_SHORT).show();
            if(counter == 0)
                login.setEnabled(false);
        }
    }
    private void login(final String email,final String pass)
    {String url = utility.ip+"login.php";
        StringRequest postRequest = new StringRequest(Request.Method.POST, url,
                new Response.Listener<String>()
                {
                    @Override
                    public void onResponse(String response) {
                        // response
                        Log.d("Response", response);
                        if (response.equals("account doesn't exists")) {
                            Toast.makeText(login.this, "user dosen't exists", Toast.LENGTH_SHORT).show();
                        }
                        else{
                            String[] seperated=response.split("/");

                            utility.user_id=seperated[0];
                            utility.user_name=seperated[1];
                            Intent intent = new Intent(login.this, Navi.class);
                            startActivity(intent);
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
                params.put("email", email);

                params.put("password", pass);

                return params;
            }
        };
        requestQueue.add(postRequest);}
 }


