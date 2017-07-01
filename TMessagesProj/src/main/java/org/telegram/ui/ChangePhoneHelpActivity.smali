.class public Lorg/telegram/ui/ChangePhoneHelpActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChangePhoneHelpActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChangePhoneHelpActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v13, 0x7f020131

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 40
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChangePhoneHelpActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 42
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    .line 44
    .local v10, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v10, :cond_0

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v12, :cond_0

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_0

    .line 45
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "+"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 50
    .local v11, "value":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChangePhoneHelpActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v12, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChangePhoneHelpActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v13, Lorg/telegram/ui/ChangePhoneHelpActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/telegram/ui/ChangePhoneHelpActivity$1;-><init>(Lorg/telegram/ui/ChangePhoneHelpActivity;)V

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 60
    new-instance v12, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/ChangePhoneHelpActivity;->fragmentView:Landroid/view/View;

    .line 61
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChangePhoneHelpActivity;->fragmentView:Landroid/view/View;

    new-instance v13, Lorg/telegram/ui/ChangePhoneHelpActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/telegram/ui/ChangePhoneHelpActivity$2;-><init>(Lorg/telegram/ui/ChangePhoneHelpActivity;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 68
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ChangePhoneHelpActivity;->fragmentView:Landroid/view/View;

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 70
    .local v7, "relativeLayout":Landroid/widget/RelativeLayout;
    new-instance v8, Landroid/widget/ScrollView;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 71
    .local v8, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 72
    invoke-virtual {v8}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 73
    .local v5, "layoutParams3":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v12, -0x1

    iput v12, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 74
    const/4 v12, -0x2

    iput v12, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 75
    const/16 v12, 0xf

    const/4 v13, -0x1

    invoke-virtual {v5, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 76
    invoke-virtual {v8, v5}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 79
    .local v6, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 80
    const/4 v12, 0x0

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/4 v14, 0x0

    const/high16 v15, 0x41a00000    # 20.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-virtual {v6, v12, v13, v14, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 81
    invoke-virtual {v8, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 82
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 83
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v12, -0x1

    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 84
    const/4 v12, -0x2

    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 85
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 88
    .local v2, "imageView":Landroid/widget/ImageView;
    const v12, 0x7f02020c

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 91
    .local v4, "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v12, -0x2

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 92
    const/4 v12, -0x2

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 93
    const/4 v12, 0x1

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 94
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    new-instance v9, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 97
    .local v9, "textView":Landroid/widget/TextView;
    const/4 v12, 0x1

    const/high16 v13, 0x41800000    # 16.0f

    invoke-virtual {v9, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 98
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 99
    const v12, -0xdededf

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    :try_start_0
    const-string/jumbo v12, "PhoneNumberHelp"

    const v13, 0x7f0703db

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_1
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 109
    .restart local v4    # "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v12, -0x2

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 110
    const/4 v12, -0x2

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 111
    const/4 v12, 0x1

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 112
    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 113
    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 114
    const/high16 v12, 0x42600000    # 56.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 115
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance v9, Landroid/widget/TextView;

    .end local v9    # "textView":Landroid/widget/TextView;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 118
    .restart local v9    # "textView":Landroid/widget/TextView;
    const/4 v12, 0x1

    const/high16 v13, 0x41900000    # 18.0f

    invoke-virtual {v9, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 119
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 120
    const v12, -0xb27c4d

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    const-string/jumbo v12, "PhoneNumberChange"

    const v13, 0x7f0703da

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const-string/jumbo v12, "fonts/rmedium.ttf"

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 123
    const/4 v12, 0x0

    const/high16 v13, 0x41200000    # 10.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/4 v14, 0x0

    const/high16 v15, 0x41200000    # 10.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-virtual {v9, v12, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 124
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 126
    .restart local v4    # "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v12, -0x2

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 127
    const/4 v12, -0x2

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 128
    const/4 v12, 0x1

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 129
    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 130
    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 131
    const/high16 v12, 0x42380000    # 46.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 132
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance v12, Lorg/telegram/ui/ChangePhoneHelpActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/telegram/ui/ChangePhoneHelpActivity$3;-><init>(Lorg/telegram/ui/ChangePhoneHelpActivity;)V

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChangePhoneHelpActivity;->fragmentView:Landroid/view/View;

    return-object v12

    .line 47
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "layoutParams3":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v7    # "relativeLayout":Landroid/widget/RelativeLayout;
    .end local v8    # "scrollView":Landroid/widget/ScrollView;
    .end local v9    # "textView":Landroid/widget/TextView;
    .end local v11    # "value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v12, "NumberUnknown"

    const v13, 0x7f07039e

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "value":Ljava/lang/String;
    goto/16 :goto_0

    .line 103
    .restart local v2    # "imageView":Landroid/widget/ImageView;
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v4    # "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v5    # "layoutParams3":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v6    # "linearLayout":Landroid/widget/LinearLayout;
    .restart local v7    # "relativeLayout":Landroid/widget/RelativeLayout;
    .restart local v8    # "scrollView":Landroid/widget/ScrollView;
    .restart local v9    # "textView":Landroid/widget/TextView;
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "tmessages"

    invoke-static {v12, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    const-string/jumbo v12, "PhoneNumberHelp"

    const v13, 0x7f0703db

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
