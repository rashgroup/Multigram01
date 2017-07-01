.class public Lorg/telegram/ui/IdenticonActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "IdenticonActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/IdenticonActivity$LinkMovementMethodMy;
    }
.end annotation


# instance fields
.field private chat_id:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IdenticonActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IdenticonActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IdenticonActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IdenticonActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IdenticonActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IdenticonActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/IdenticonActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IdenticonActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method private fixLayout()V
    .locals 2

    .prologue
    .line 169
    iget-object v1, p0, Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 170
    .local v0, "obs":Landroid/view/ViewTreeObserver;
    new-instance v1, Lorg/telegram/ui/IdenticonActivity$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/IdenticonActivity$3;-><init>(Lorg/telegram/ui/IdenticonActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 191
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/IdenticonActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v14, 0x7f020131

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 74
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/IdenticonActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 75
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/IdenticonActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v14, "EncryptionKey"

    const v15, 0x7f0701db

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/IdenticonActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v14, Lorg/telegram/ui/IdenticonActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lorg/telegram/ui/IdenticonActivity$1;-><init>(Lorg/telegram/ui/IdenticonActivity;)V

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 86
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;

    .line 87
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;

    check-cast v9, Landroid/widget/LinearLayout;

    .line 88
    .local v9, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 89
    const/high16 v13, 0x42c80000    # 100.0f

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 90
    const v13, -0xf0f10

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 91
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;

    new-instance v14, Lorg/telegram/ui/IdenticonActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lorg/telegram/ui/IdenticonActivity$2;-><init>(Lorg/telegram/ui/IdenticonActivity;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 98
    new-instance v4, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 99
    .local v4, "frameLayout":Landroid/widget/FrameLayout;
    const/high16 v13, 0x41a00000    # 20.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/high16 v14, 0x41a00000    # 20.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    const/high16 v15, 0x41a00000    # 20.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    const/high16 v16, 0x41a00000    # 20.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v13, v14, v15, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 100
    const/4 v13, -0x1

    const/4 v14, -0x1

    const/high16 v15, 0x42480000    # 50.0f

    invoke-static {v13, v14, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v9, v4, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 103
    .local v7, "identiconView":Landroid/widget/ImageView;
    sget-object v13, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 104
    const/4 v13, -0x1

    const/high16 v14, -0x40800000    # -1.0f

    invoke-static {v13, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v4, v7, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance v4, Landroid/widget/FrameLayout;

    .end local v4    # "frameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 107
    .restart local v4    # "frameLayout":Landroid/widget/FrameLayout;
    const/4 v13, -0x1

    invoke-virtual {v4, v13}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 108
    const/high16 v13, 0x41200000    # 10.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/4 v14, 0x0

    const/high16 v15, 0x41200000    # 10.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    const/high16 v16, 0x41200000    # 10.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v13, v14, v15, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 109
    const/4 v13, -0x1

    const/4 v14, -0x1

    const/high16 v15, 0x42480000    # 50.0f

    invoke-static {v13, v14, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v9, v4, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v10, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 112
    .local v10, "textView":Landroid/widget/TextView;
    const v13, -0x808081

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    const/4 v13, 0x1

    const/high16 v14, 0x41800000    # 16.0f

    invoke-virtual {v10, v13, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 114
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 115
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setClickable(Z)V

    .line 116
    new-instance v13, Lorg/telegram/ui/IdenticonActivity$LinkMovementMethodMy;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lorg/telegram/ui/IdenticonActivity$LinkMovementMethodMy;-><init>(Lorg/telegram/ui/IdenticonActivity$1;)V

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 118
    const v13, -0xd9874a

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 119
    const/16 v13, 0x11

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 120
    const/4 v13, -0x1

    const/high16 v14, -0x40800000    # -1.0f

    invoke-static {v13, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v4, v10, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/IdenticonActivity;->chat_id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v3

    .line 123
    .local v3, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v3, :cond_5

    .line 124
    new-instance v2, Lorg/telegram/ui/Components/IdenticonDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/IdenticonDrawable;-><init>()V

    .line 125
    .local v2, "drawable":Lorg/telegram/ui/Components/IdenticonDrawable;
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/IdenticonDrawable;->setEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 127
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    iget v14, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v12

    .line 128
    .local v12, "user":Lorg/telegram/tgnet/TLRPC$User;
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 129
    .local v5, "hash":Landroid/text/SpannableStringBuilder;
    iget-object v13, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    array-length v13, v13

    const/16 v14, 0x10

    if-le v13, v14, :cond_3

    .line 130
    iget-object v13, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    invoke-static {v13}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, "hex":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_0
    const/16 v13, 0x20

    if-ge v1, v13, :cond_2

    .line 132
    if-eqz v1, :cond_0

    .line 133
    rem-int/lit8 v13, v1, 0x8

    if-nez v13, :cond_1

    .line 134
    const/16 v13, 0xa

    invoke-virtual {v5, v13}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 139
    :cond_0
    :goto_1
    mul-int/lit8 v13, v1, 0x2

    mul-int/lit8 v14, v1, 0x2

    add-int/lit8 v14, v14, 0x2

    invoke-virtual {v6, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 140
    const/16 v13, 0x20

    invoke-virtual {v5, v13}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_1
    rem-int/lit8 v13, v1, 0x4

    if-nez v13, :cond_0

    .line 136
    const/16 v13, 0x20

    invoke-virtual {v5, v13}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 142
    :cond_2
    const-string/jumbo v13, "\n\n"

    invoke-virtual {v5, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 144
    .end local v1    # "a":I
    .end local v6    # "hex":Ljava/lang/String;
    :cond_3
    const-string/jumbo v13, "EncryptionKeyDescription"

    const v14, 0x7f0701dc

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v0, v12, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    iget-object v0, v12, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 145
    const-string/jumbo v11, "telegram.org"

    .line 146
    .local v11, "url":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "telegram.org"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 147
    .local v8, "index":I
    const/4 v13, -0x1

    if-eq v8, v13, :cond_4

    .line 148
    new-instance v13, Lorg/telegram/ui/Components/URLSpanReplacement;

    const-string/jumbo v14, "EncryptionKeyLink"

    const v15, 0x7f0701dd

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;)V

    const-string/jumbo v14, "telegram.org"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v14, v8

    const/16 v15, 0x21

    invoke-virtual {v5, v13, v8, v14, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 150
    :cond_4
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .end local v2    # "drawable":Lorg/telegram/ui/Components/IdenticonDrawable;
    .end local v5    # "hash":Landroid/text/SpannableStringBuilder;
    .end local v8    # "index":I
    .end local v11    # "url":Ljava/lang/String;
    .end local v12    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/IdenticonActivity;->fragmentView:Landroid/view/View;

    return-object v13
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 158
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 159
    invoke-direct {p0}, Lorg/telegram/ui/IdenticonActivity;->fixLayout()V

    .line 160
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/telegram/ui/IdenticonActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "chat_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/IdenticonActivity;->chat_id:I

    .line 68
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 165
    invoke-direct {p0}, Lorg/telegram/ui/IdenticonActivity;->fixLayout()V

    .line 166
    return-void
.end method
