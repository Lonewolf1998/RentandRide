package com.example.dell.rentandride;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.SearchView;
import android.view.Menu;
import android.widget.CheckBox;

public class Search extends AppCompatActivity {
    SearchView search;
    CheckBox t_w;
    CheckBox f_w;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_search);

        search = (SearchView) findViewById(R.id.s_searchView);
//        t_w =(CheckBox) findViewById(R.id.s_cb_t);
//        f_w =(CheckBox) findViewById(R.id.s_cb_f);
    }
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.navi, menu);
        return true;
    }
}
