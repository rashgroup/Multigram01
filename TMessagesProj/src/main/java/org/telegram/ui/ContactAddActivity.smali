.class public Lorg/telegram/ui/ContactAddActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ContactAddActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private addContact:Z

.field private avatarImage:Lorg/telegram/ui/Components/BackupImageView;

.field private doneButton:Landroid/view/View;

.field private firstNameField:Landroid/widget/EditText;

.field private lastNameField:Landroid/widget/EditText;

.field private nameTextView:Landroid/widget/TextView;

.field private onlineTextView:Landroid/widget/TextView;

.field private phone:Ljava/lang/String;

.field private user_id:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ContactAddActivity;->phone:Ljava/lang/String;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ContactAddActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ContactAddActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ContactAddActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ContactAddActivity;

    .prologue
    .line 45
    iget v0, p0, Lorg/telegram/ui/ContactAddActivity;->user_id:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ContactAddActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ContactAddActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ContactAddActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ContactAddActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/ContactAddActivity;->doneButton:Landroid/view/View;

    return-object v0
.end method

.method private updateAvatarLayout()V
    .locals 6

    .prologue
    .line 263
    iget-object v2, p0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/ContactAddActivity;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 267
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v1, :cond_0

    .line 270
    iget-object v2, p0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v2, p0, Lorg/telegram/ui/ContactAddActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v2, :cond_2

    .line 275
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 277
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ContactAddActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const-string/jumbo v3, "50_50"

    new-instance v4, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v2, v0, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v8, 0x7f020131

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 83
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 84
    iget-boolean v7, p0, Lorg/telegram/ui/ContactAddActivity;->addContact:Z

    if-eqz v7, :cond_2

    .line 85
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v8, "AddContactTitle"

    const v9, 0x7f070071

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    :goto_0
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v8, Lorg/telegram/ui/ContactAddActivity$1;

    invoke-direct {v8, p0}, Lorg/telegram/ui/ContactAddActivity$1;-><init>(Lorg/telegram/ui/ContactAddActivity;)V

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 109
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v5

    .line 110
    .local v5, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v7, 0x1

    const v8, 0x7f020152

    const/high16 v9, 0x42600000    # 56.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v5, v7, v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->doneButton:Landroid/view/View;

    .line 112
    new-instance v7, Landroid/widget/ScrollView;

    invoke-direct {v7, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->fragmentView:Landroid/view/View;

    .line 114
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 115
    .local v4, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 116
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->fragmentView:Landroid/view/View;

    check-cast v7, Landroid/widget/ScrollView;

    invoke-virtual {v7, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 117
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 118
    .local v2, "layoutParams2":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v7, -0x1

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 119
    const/4 v7, -0x2

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 120
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    new-instance v7, Lorg/telegram/ui/ContactAddActivity$2;

    invoke-direct {v7, p0}, Lorg/telegram/ui/ContactAddActivity$2;-><init>(Lorg/telegram/ui/ContactAddActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 131
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 132
    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 133
    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 134
    const/4 v7, -0x1

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 135
    const/4 v7, -0x2

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    new-instance v7, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v7, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    .line 139
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 140
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 141
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/BackupImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 142
    .local v3, "layoutParams3":Landroid/widget/FrameLayout$LayoutParams;
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_3

    const/4 v7, 0x5

    :goto_1
    or-int/lit8 v7, v7, 0x30

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 143
    const/high16 v7, 0x42700000    # 60.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 144
    const/high16 v7, 0x42700000    # 60.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 145
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7, v3}, Lorg/telegram/ui/Components/BackupImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    .line 148
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    const v8, -0xdededf

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v8, 0x1

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 150
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLines(I)V

    .line 151
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 152
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 153
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 154
    iget-object v8, p0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_4

    const/4 v7, 0x5

    :goto_2
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 155
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v8, "fonts/rmedium.ttf"

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 156
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 157
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams3":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 158
    .restart local v3    # "layoutParams3":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v7, -0x2

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 159
    const/4 v7, -0x2

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 160
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    :goto_3
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 161
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_6

    const/high16 v7, 0x42a00000    # 80.0f

    :goto_4
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 162
    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 163
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_7

    const/4 v7, 0x5

    :goto_5
    or-int/lit8 v7, v7, 0x30

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 164
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->onlineTextView:Landroid/widget/TextView;

    .line 167
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->onlineTextView:Landroid/widget/TextView;

    const v8, -0x666667

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v8, 0x1

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 169
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLines(I)V

    .line 170
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 171
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 172
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->onlineTextView:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 173
    iget-object v8, p0, Lorg/telegram/ui/ContactAddActivity;->onlineTextView:Landroid/widget/TextView;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_8

    const/4 v7, 0x5

    :goto_6
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 174
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 175
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams3":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 176
    .restart local v3    # "layoutParams3":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v7, -0x2

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 177
    const/4 v7, -0x2

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 178
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    :goto_7
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 179
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_a

    const/high16 v7, 0x42a00000    # 80.0f

    :goto_8
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 180
    const/high16 v7, 0x42000000    # 32.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 181
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_b

    const/4 v7, 0x5

    :goto_9
    or-int/lit8 v7, v7, 0x30

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 182
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    new-instance v7, Landroid/widget/EditText;

    invoke-direct {v7, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Landroid/widget/EditText;

    .line 185
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v8, 0x1

    const/high16 v9, 0x41900000    # 18.0f

    invoke-virtual {v7, v8, v9}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 186
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Landroid/widget/EditText;

    const v8, -0x686869

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 187
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Landroid/widget/EditText;

    const v8, -0xdededf

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setTextColor(I)V

    .line 188
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 189
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setLines(I)V

    .line 190
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 191
    iget-object v8, p0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Landroid/widget/EditText;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_c

    const/4 v7, 0x5

    :goto_a
    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setGravity(I)V

    .line 192
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Landroid/widget/EditText;

    const v8, 0xc000

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 193
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 194
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Landroid/widget/EditText;

    const-string/jumbo v8, "FirstName"

    const v9, 0x7f0701fa

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Landroid/widget/EditText;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 196
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 197
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 198
    .restart local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 199
    const/high16 v7, 0x42100000    # 36.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 200
    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 201
    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 202
    const/4 v7, -0x1

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 203
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Landroid/widget/EditText;

    new-instance v8, Lorg/telegram/ui/ContactAddActivity$3;

    invoke-direct {v8, p0}, Lorg/telegram/ui/ContactAddActivity$3;-><init>(Lorg/telegram/ui/ContactAddActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 216
    new-instance v7, Landroid/widget/EditText;

    invoke-direct {v7, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Landroid/widget/EditText;

    .line 217
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Landroid/widget/EditText;

    const/4 v8, 0x1

    const/high16 v9, 0x41900000    # 18.0f

    invoke-virtual {v7, v8, v9}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 218
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Landroid/widget/EditText;

    const v8, -0x686869

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 219
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Landroid/widget/EditText;

    const v8, -0xdededf

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setTextColor(I)V

    .line 220
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Landroid/widget/EditText;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 221
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Landroid/widget/EditText;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setLines(I)V

    .line 222
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Landroid/widget/EditText;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 223
    iget-object v8, p0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Landroid/widget/EditText;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_d

    const/4 v7, 0x5

    :goto_b
    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setGravity(I)V

    .line 224
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Landroid/widget/EditText;

    const v8, 0xc000

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 225
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Landroid/widget/EditText;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 226
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Landroid/widget/EditText;

    const-string/jumbo v8, "LastName"

    const v9, 0x7f0702a2

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Landroid/widget/EditText;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 228
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 230
    .restart local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 231
    const/high16 v7, 0x42100000    # 36.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 232
    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 233
    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 234
    const/4 v7, -0x1

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 235
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Landroid/widget/EditText;

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Landroid/widget/EditText;

    new-instance v8, Lorg/telegram/ui/ContactAddActivity$4;

    invoke-direct {v8, p0}, Lorg/telegram/ui/ContactAddActivity$4;-><init>(Lorg/telegram/ui/ContactAddActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 247
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget v8, p0, Lorg/telegram/ui/ContactAddActivity;->user_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 248
    .local v6, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v6, :cond_1

    .line 249
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 250
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->phone:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 251
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->phone:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 254
    :cond_0
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Landroid/widget/EditText;

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Landroid/widget/EditText;

    iget-object v8, p0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setSelection(I)V

    .line 256
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Landroid/widget/EditText;

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->fragmentView:Landroid/view/View;

    return-object v7

    .line 87
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "layoutParams2":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "layoutParams3":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v5    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/ContactAddActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v8, "EditName"

    const v9, 0x7f0701c7

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 142
    .restart local v0    # "frameLayout":Landroid/widget/FrameLayout;
    .restart local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v2    # "layoutParams2":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "layoutParams3":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v4    # "linearLayout":Landroid/widget/LinearLayout;
    .restart local v5    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_3
    const/4 v7, 0x3

    goto/16 :goto_1

    .line 154
    :cond_4
    const/4 v7, 0x3

    goto/16 :goto_2

    .line 160
    :cond_5
    const/high16 v7, 0x42a00000    # 80.0f

    goto/16 :goto_3

    .line 161
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 163
    :cond_7
    const/4 v7, 0x3

    goto/16 :goto_5

    .line 173
    :cond_8
    const/4 v7, 0x3

    goto/16 :goto_6

    .line 178
    :cond_9
    const/high16 v7, 0x42a00000    # 80.0f

    goto/16 :goto_7

    .line 179
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 181
    :cond_b
    const/4 v7, 0x3

    goto/16 :goto_9

    .line 191
    :cond_c
    const/4 v7, 0x3

    goto/16 :goto_a

    .line 223
    :cond_d
    const/4 v7, 0x3

    goto/16 :goto_b
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 281
    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v1, :cond_1

    .line 282
    const/4 v1, 0x0

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 283
    .local v0, "mask":I
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 284
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ContactAddActivity;->updateAvatarLayout()V

    .line 287
    .end local v0    # "mask":I
    :cond_1
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 67
    invoke-virtual {p0}, Lorg/telegram/ui/ContactAddActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/ContactAddActivity;->user_id:I

    .line 68
    invoke-virtual {p0}, Lorg/telegram/ui/ContactAddActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ContactAddActivity;->phone:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ContactAddActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "addContact"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/ContactAddActivity;->addContact:Z

    .line 70
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/ContactAddActivity;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 71
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 77
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 78
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 291
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 292
    invoke-direct {p0}, Lorg/telegram/ui/ContactAddActivity;->updateAvatarLayout()V

    .line 293
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 294
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "view_animations"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 295
    .local v0, "animations":Z
    if-nez v0, :cond_0

    .line 296
    iget-object v2, p0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 297
    iget-object v2, p0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 299
    :cond_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 1
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 303
    if-eqz p1, :cond_0

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 307
    :cond_0
    return-void
.end method
