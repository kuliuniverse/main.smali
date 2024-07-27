.class public Lcom/android/support/Main;
.super Ljava/lang/Object;
.source "Main.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-string v0, "aphidz"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native CheckOverlayPermission(Landroid/content/Context;)V
.end method

.method public static MD5_Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 242
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 243
    .local v0, "m":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 244
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 245
    .end local v0    # "m":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static ShowLoginMenu(Landroid/content/Context;)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;

    .line 69
    move-object/from16 v8, p0

    const-string v0, "#007e82"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    .line 71
    .local v9, "CheckBoxColor":I
    nop

    .line 72
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v10

    .line 73
    .local v10, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 75
    const-string v0, "SavePref"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 76
    .local v11, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v0, "User"

    const/4 v2, 0x0

    invoke-interface {v11, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 77
    .local v12, "struser":Ljava/lang/String;
    const-string v0, "Pass"

    invoke-interface {v11, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 78
    .local v13, "strpass":Ljava/lang/String;
    const-string v0, "RememberMe"

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 80
    .local v14, "rememberMe":Z
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v15, v0

    .line 81
    .local v15, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    const/4 v0, 0x1

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 83
    const-string v3, "#181D31"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 84
    const/16 v3, 0x10

    invoke-virtual {v15, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 86
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v7, v3

    .line 87
    .local v7, "editTextUser":Landroid/widget/EditText;
    const-string v3, ""

    if-eqz v12, :cond_0

    move-object v4, v12

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const-string v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 89
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setTextColor(I)V

    .line 90
    const-string v5, "Username"

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 92
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v6, v5

    .line 93
    .local v6, "editTextPass":Landroid/widget/EditText;
    if-eqz v13, :cond_1

    move-object v3, v13

    :cond_1
    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 95
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 96
    const-string v3, "Password"

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 97
    const/16 v3, 0x81

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 99
    new-instance v3, Landroid/widget/CheckBox;

    invoke-direct {v3, v8}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    move-object v5, v3

    .line 100
    .local v5, "checkSaveLogin":Landroid/widget/CheckBox;
    const/4 v3, 0x5

    invoke-virtual {v5, v1, v3, v1, v3}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 101
    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 102
    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v5, v4}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 103
    invoke-virtual {v5, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 104
    const/16 v2, 0xff

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 105
    const-string v0, "Save Login"

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 107
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, v8}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 108
    .local v0, "checkShowPassword":Landroid/widget/CheckBox;
    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 109
    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 110
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 111
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 112
    const-string v3, "Show Password"

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 113
    new-instance v3, Lcom/android/support/Main$$ExternalSyntheticLambda1;

    invoke-direct {v3, v6}, Lcom/android/support/Main$$ExternalSyntheticLambda1;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object v4, v3

    .line 116
    .local v4, "btnLogin":Landroid/widget/Button;
    const-string v3, "#37bb83"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 117
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 118
    const-string v3, "Login"

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 121
    .local v3, "btnClose":Landroid/widget/Button;
    const-string v18, "#b6d3d9"

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 122
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 123
    const-string v1, "Close"

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 125
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 126
    .local v1, "textStatus":Landroid/widget/TextView;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 127
    const-string v2, "#1d2854"

    move/from16 v20, v9

    .end local v9    # "CheckBoxColor":I
    .local v20, "CheckBoxColor":I
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 128
    move-object/from16 v21, v10

    const/16 v9, 0xff

    .end local v10    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .local v21, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v9, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    const/high16 v9, 0x41880000    # 17.0f

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 130
    const-string v9, "Awaiting login!"

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {v15, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 133
    invoke-virtual {v15, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    invoke-virtual {v15, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    .local v9, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 142
    .local v10, "title":Landroid/widget/TextView;
    move-object/from16 v22, v0

    .end local v0    # "checkShowPassword":Landroid/widget/CheckBox;
    .local v22, "checkShowPassword":Landroid/widget/CheckBox;
    const-string v0, "LOGIN"

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const/16 v0, 0x14

    const/4 v8, 0x0

    invoke-virtual {v10, v8, v0, v8, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 144
    const/16 v0, 0xff

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 146
    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 147
    const/4 v8, 0x0

    invoke-virtual {v10, v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 148
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 149
    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 150
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 151
    invoke-virtual {v9, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 152
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v8

    .line 154
    .local v8, "alertDialog":Landroid/app/AlertDialog;
    new-instance v0, Lcom/android/support/Main$$ExternalSyntheticLambda2;

    invoke-direct {v0, v3}, Lcom/android/support/Main$$ExternalSyntheticLambda2;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 163
    new-instance v0, Lcom/android/support/Main$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1, v4}, Lcom/android/support/Main$$ExternalSyntheticLambda3;-><init>(Landroid/widget/TextView;Landroid/widget/Button;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    new-instance v2, Lcom/android/support/Main$$ExternalSyntheticLambda4;

    move-object/from16 v16, v22

    .end local v22    # "checkShowPassword":Landroid/widget/CheckBox;
    .local v16, "checkShowPassword":Landroid/widget/CheckBox;
    move-object v0, v2

    move-object/from16 v17, v1

    .end local v1    # "textStatus":Landroid/widget/TextView;
    .local v17, "textStatus":Landroid/widget/TextView;
    move-object v1, v7

    move-object/from16 v18, v9

    move-object v9, v2

    .end local v9    # "builder":Landroid/app/AlertDialog$Builder;
    .local v18, "builder":Landroid/app/AlertDialog$Builder;
    move-object v2, v6

    move-object/from16 v19, v10

    move-object v10, v3

    .end local v3    # "btnClose":Landroid/widget/Button;
    .local v10, "btnClose":Landroid/widget/Button;
    .local v19, "title":Landroid/widget/TextView;
    move-object v3, v5

    move-object/from16 v22, v12

    move-object v12, v4

    .end local v4    # "btnLogin":Landroid/widget/Button;
    .local v12, "btnLogin":Landroid/widget/Button;
    .local v22, "struser":Ljava/lang/String;
    move-object v4, v11

    move-object/from16 v23, v5

    .end local v5    # "checkSaveLogin":Landroid/widget/CheckBox;
    .local v23, "checkSaveLogin":Landroid/widget/CheckBox;
    move-object v5, v8

    move-object/from16 v24, v6

    .end local v6    # "editTextPass":Landroid/widget/EditText;
    .local v24, "editTextPass":Landroid/widget/EditText;
    move-object/from16 v6, p0

    move-object/from16 v25, v7

    .end local v7    # "editTextUser":Landroid/widget/EditText;
    .local v25, "editTextUser":Landroid/widget/EditText;
    move-object/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lcom/android/support/Main$$ExternalSyntheticLambda4;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;Landroid/app/AlertDialog;Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v12, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    new-instance v0, Lcom/android/support/Main$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/support/Main$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    .end local v8    # "alertDialog":Landroid/app/AlertDialog;
    .end local v10    # "btnClose":Landroid/widget/Button;
    .end local v11    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v12    # "btnLogin":Landroid/widget/Button;
    .end local v13    # "strpass":Ljava/lang/String;
    .end local v14    # "rememberMe":Z
    .end local v15    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v16    # "checkShowPassword":Landroid/widget/CheckBox;
    .end local v17    # "textStatus":Landroid/widget/TextView;
    .end local v18    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v19    # "title":Landroid/widget/TextView;
    .end local v21    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v22    # "struser":Ljava/lang/String;
    .end local v23    # "checkSaveLogin":Landroid/widget/CheckBox;
    .end local v24    # "editTextPass":Landroid/widget/EditText;
    .end local v25    # "editTextUser":Landroid/widget/EditText;
    return-void
.end method

.method public static Start(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 63
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/support/CrashHandler;->init(Landroid/content/Context;Z)V

    .line 64
    invoke-static {p0}, Lcom/android/support/Main;->CheckOverlayPermission(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public static StartWithoutPermission(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 50
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/support/CrashHandler;->init(Landroid/content/Context;Z)V

    .line 51
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lcom/android/support/Menu;

    invoke-direct {v0, p0}, Lcom/android/support/Menu;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, "menu":Lcom/android/support/Menu;
    invoke-virtual {v0}, Lcom/android/support/Menu;->SetWindowManagerActivity()V

    .line 55
    invoke-virtual {v0}, Lcom/android/support/Menu;->ShowMenu()V

    .line 56
    .end local v0    # "menu":Lcom/android/support/Menu;
    goto :goto_0

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/android/support/Main;->CheckOverlayPermission(Landroid/content/Context;)V

    .line 60
    :goto_0
    return-void
.end method

.method private static getHttpsURLConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 228
    .local v1, "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 229
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 230
    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    .line 233
    new-instance v2, Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 234
    .local v2, "out":Ljava/io/PrintWriter;
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 236
    .end local v2    # "out":Ljava/io/PrintWriter;
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 237
    return-object v1

    .line 233
    .restart local v2    # "out":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v3

    :try_start_1
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
.end method

.method static synthetic lambda$ShowLoginMenu$0(Landroid/widget/EditText;Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p0, "editTextPass"    # Landroid/widget/EditText;
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .line 113
    if-eqz p2, :cond_0

    const/16 v0, 0x90

    goto :goto_0

    :cond_0
    const/16 v0, 0x81

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method

.method static synthetic lambda$ShowLoginMenu$1(Landroid/widget/Button;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p0, "btnClose"    # Landroid/widget/Button;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 155
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 156
    const-string v0, "#b6d3d9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 158
    const-string v0, "#a4bbbf"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 160
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$ShowLoginMenu$2(Landroid/widget/TextView;Landroid/widget/Button;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p0, "textStatus"    # Landroid/widget/TextView;
    .param p1, "btnLogin"    # Landroid/widget/Button;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;

    .line 164
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 165
    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    const-string v0, "logging in..."

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    const-string v0, "#37bb83"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 169
    const-string v0, "#299164"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 171
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$ShowLoginMenu$3(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/support/Launcher;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic lambda$ShowLoginMenu$4(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;Landroid/app/AlertDialog;Landroid/content/Context;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 16
    .param p0, "editTextUser"    # Landroid/widget/EditText;
    .param p1, "editTextPass"    # Landroid/widget/EditText;
    .param p2, "checkSaveLogin"    # Landroid/widget/CheckBox;
    .param p3, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p4, "alertDialog"    # Landroid/app/AlertDialog;
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "textStatus"    # Landroid/widget/TextView;
    .param p7, "view"    # Landroid/view/View;

    .line 175
    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "user":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "pass":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    .line 178
    .local v5, "isChecked":Z
    invoke-interface/range {p3 .. p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 179
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v5, :cond_0

    .line 180
    const-string v0, "User"

    invoke-interface {v6, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    const-string v0, "Pass"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 183
    :cond_0
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 185
    :goto_0
    const-string v0, "RememberMe"

    invoke-interface {v6, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 186
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 189
    :try_start_0
    sget-object v0, Lcom/android/support/MainActivity;->URL:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "user="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&pass="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/support/Main;->urlRequest(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "result":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v8, v0, v7

    .line 191
    .local v8, "status":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v10, v0, v9

    .line 192
    .local v10, "hashS":Ljava/lang/String;
    const/4 v11, 0x2

    aget-object v11, v0, v11

    .line 193
    .local v11, "msgS":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/support/Main;->MD5_Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 195
    .local v12, "hashL":Ljava/lang/String;
    const-string v13, "1"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 196
    invoke-virtual/range {p4 .. p4}, Landroid/app/AlertDialog;->dismiss()V

    .line 197
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v13, Lcom/android/support/Main$$ExternalSyntheticLambda0;

    invoke-direct {v13, v1}, Lcom/android/support/Main$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const-wide/16 v14, 0x1f4

    invoke-virtual {v7, v13, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 198
    invoke-static {v1, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 200
    :cond_1
    const/16 v9, 0xff

    invoke-static {v9, v9, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v0    # "result":[Ljava/lang/String;
    .end local v8    # "status":Ljava/lang/String;
    .end local v10    # "hashS":Ljava/lang/String;
    .end local v11    # "msgS":Ljava/lang/String;
    .end local v12    # "hashL":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    const/16 v7, 0xc8

    const/16 v8, 0x14

    invoke-static {v7, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method static synthetic lambda$ShowLoginMenu$5(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 209
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public static urlRequest(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-static {p0, p1}, Lcom/android/support/Main;->getHttpsURLConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .line 215
    .local v0, "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v1, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 218
    .local v2, "bufferedReader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 219
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 221
    .end local v4    # "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 222
    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 216
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
.end method
