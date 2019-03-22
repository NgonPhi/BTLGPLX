package com.ngonphikp.gplx.Adapter;

import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;

import com.ngonphikp.gplx.Fragment.Fragment_bbdb;

import java.util.ArrayList;
import java.util.List;

public class PageAdapter extends FragmentStatePagerAdapter {

    private List<Fragment_bbdb> fragmentList = new ArrayList<>();
    private List<String> titleList = new ArrayList<>();

    public void add(Fragment_bbdb fragment, String title){
        fragmentList.add(fragment);
        titleList.add(title);
    }

    public PageAdapter(FragmentManager fm) {
        super(fm);
    }

    @Override
    public Fragment_bbdb getItem(int i) {
        return fragmentList.get(i);
    }

    @Override
    public int getCount() {
        return fragmentList.size();
    }

    @Nullable
    @Override
    public CharSequence getPageTitle(int position) {
        return titleList.get(position);
    }
}
