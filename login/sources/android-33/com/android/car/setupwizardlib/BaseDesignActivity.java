/*
 * Copyright (C) 2019 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.android.car.setupwizardlib;

import androidx.annotation.LayoutRes;

/** The base setup wizard activity that applies heavy theming from the partner overlay.
 */
public class BaseDesignActivity extends BaseSetupWizardActivity {
    @Override
    @LayoutRes
    int getLayout() {
        return isSplitNavLayoutSupported()
                ? R.layout.split_nav_design_activity : R.layout.base_design_activity;
    }

    @Override
    protected CarSetupWizardDesignLayout getCarSetupWizardLayout() {
        return (CarSetupWizardDesignLayout) super.getCarSetupWizardLayout();
    }
}
