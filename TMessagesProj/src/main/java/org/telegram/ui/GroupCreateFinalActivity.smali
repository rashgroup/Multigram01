.class public Lorg/telegram/ui/GroupCreateFinalActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "GroupCreateFinalActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/GroupCreateFinalActivity$ListAdapter;
    }
.end annotation


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/ui/Components/BackupImageView;

.field private avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

.field private chatType:I

.field private createAfterUpload:Z

.field private donePressed:Z

.field private listAdapter:Lorg/telegram/ui/GroupCreateFinalActivity$ListAdapter;

.field private listView:Landroid/widget/ListView;

.field private nameTextView:Landroid/widget/EditText;

.field private nameToSet:Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private selectedContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 68
    new-instance v0, Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarUpdater;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    .line 69
    iput-object v2, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 70
    iput-object v2, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameToSet:Ljava/lang/String;

    .line 71
    iput v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->chatType:I

    .line 77
    const-string/jumbo v0, "chatType"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->chatType:I

    .line 78
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/GroupCreateFinalActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->donePressed:Z

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/GroupCreateFinalActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->donePressed:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/GroupCreateFinalActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/GroupCreateFinalActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;

    .prologue
    .line 56
    iget v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->chatType:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/GroupCreateFinalActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->selectedContacts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/AvatarUpdater;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/GroupCreateFinalActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->createAfterUpload:Z

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/GroupCreateFinalActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->createAfterUpload:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/GroupCreateFinalActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/GroupCreateFinalActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 56
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/GroupCreateFinalActivity;Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$FileLocation;

    .prologue
    .line 56
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object p1
.end method

.method static synthetic access$802(Lorg/telegram/ui/GroupCreateFinalActivity;Lorg/telegram/tgnet/TLRPC$InputFile;)Lorg/telegram/tgnet/TLRPC$InputFile;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$InputFile;

    .prologue
    .line 56
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;

    return-object p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/AvatarDrawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateFinalActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    return-object v0
.end method

.method private updateVisibleRows(I)V
    .locals 4
    .param p1, "mask"    # I

    .prologue
    .line 423
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Landroid/widget/ListView;

    if-nez v3, :cond_1

    .line 433
    :cond_0
    return-void

    .line 426
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 427
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 428
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 429
    .local v1, "child":Landroid/view/View;
    instance-of v3, v1, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v3, :cond_2

    .line 430
    check-cast v1, Lorg/telegram/ui/Cells/UserCell;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    .line 427
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v8, 0x7f020131

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 145
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 146
    iget v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->chatType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 147
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v8, "NewBroadcastList"

    const v9, 0x7f070323

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    :goto_0
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v8, Lorg/telegram/ui/GroupCreateFinalActivity$2;

    invoke-direct {v8, p0}, Lorg/telegram/ui/GroupCreateFinalActivity$2;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;)V

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 198
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v5

    .line 199
    .local v5, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v7, 0x1

    const v8, 0x7f020152

    const/high16 v9, 0x42600000    # 56.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v5, v7, v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 201
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->fragmentView:Landroid/view/View;

    .line 202
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->fragmentView:Landroid/view/View;

    check-cast v4, Landroid/widget/LinearLayout;

    .line 203
    .local v4, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 205
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 206
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 208
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, -0x1

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 209
    const/4 v7, -0x2

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 210
    const/16 v7, 0x33

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 211
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    new-instance v7, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v7, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    .line 214
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v8, 0x42000000    # 32.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 215
    iget-object v8, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->chatType:I

    const/4 v12, 0x1

    if-ne v7, v12, :cond_4

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v8, v9, v10, v11, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 216
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v8, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 218
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/BackupImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 219
    .local v3, "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v7, 0x42800000    # 64.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 220
    const/high16 v7, 0x42800000    # 64.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 221
    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 222
    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 223
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    :goto_2
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 224
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_6

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    :goto_3
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 225
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_7

    const/4 v7, 0x5

    :goto_4
    or-int/lit8 v7, v7, 0x30

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 226
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7, v3}, Lorg/telegram/ui/Components/BackupImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    iget v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->chatType:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 228
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setDrawPhoto(Z)V

    .line 229
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v8, Lorg/telegram/ui/GroupCreateFinalActivity$3;

    invoke-direct {v8, p0}, Lorg/telegram/ui/GroupCreateFinalActivity$3;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;)V

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/BackupImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    :cond_0
    new-instance v7, Landroid/widget/EditText;

    invoke-direct {v7, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;

    .line 266
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;

    invoke-static {}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getSuperTypeFace()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 267
    iget-object v8, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;

    iget v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->chatType:I

    if-nez v7, :cond_8

    const-string/jumbo v7, "EnterGroupNamePlaceholder"

    const v9, 0x7f0701e3

    invoke-static {v7, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    :goto_5
    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameToSet:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 269
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;

    iget-object v8, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameToSet:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 270
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameToSet:Ljava/lang/String;

    .line 272
    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 273
    iget-object v8, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_9

    const/4 v7, 0x5

    :goto_6
    or-int/lit8 v7, v7, 0x10

    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setGravity(I)V

    .line 274
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v8, 0x1

    const/high16 v9, 0x41800000    # 16.0f

    invoke-virtual {v7, v8, v9}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 275
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;

    const v8, -0x686869

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 276
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;

    const/high16 v8, 0x10000000

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 277
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;

    const/16 v8, 0x4000

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 278
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x41000000    # 8.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 279
    const/4 v7, 0x1

    new-array v1, v7, [Landroid/text/InputFilter;

    .line 280
    .local v1, "inputFilters":[Landroid/text/InputFilter;
    const/4 v7, 0x0

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    const/16 v9, 0x64

    invoke-direct {v8, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v1, v7

    .line 281
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 282
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 283
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;

    const v8, -0xdededf

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setTextColor(I)V

    .line 284
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 285
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 286
    .restart local v3    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v7, -0x1

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 287
    const/4 v7, -0x2

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 288
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_a

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    :goto_7
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 289
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_b

    const/high16 v7, 0x42c00000    # 96.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    :goto_8
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 290
    const/16 v7, 0x10

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 291
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    iget v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->chatType:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    .line 293
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;

    new-instance v8, Lorg/telegram/ui/GroupCreateFinalActivity$4;

    invoke-direct {v8, p0}, Lorg/telegram/ui/GroupCreateFinalActivity$4;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 312
    :cond_2
    new-instance v6, Lorg/telegram/ui/Cells/GreySectionCell;

    invoke-direct {v6, p1}, Lorg/telegram/ui/Cells/GreySectionCell;-><init>(Landroid/content/Context;)V

    .line 313
    .local v6, "sectionCell":Lorg/telegram/ui/Cells/GreySectionCell;
    const-string/jumbo v7, "Members"

    iget-object v8, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->selectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/GreySectionCell;->setText(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 316
    new-instance v7, Landroid/widget/ListView;

    invoke-direct {v7, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Landroid/widget/ListView;

    .line 317
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Landroid/widget/ListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 318
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Landroid/widget/ListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 319
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Landroid/widget/ListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 320
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Landroid/widget/ListView;

    new-instance v8, Lorg/telegram/ui/GroupCreateFinalActivity$ListAdapter;

    invoke-direct {v8, p0, p1}, Lorg/telegram/ui/GroupCreateFinalActivity$ListAdapter;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;Landroid/content/Context;)V

    iput-object v8, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listAdapter:Lorg/telegram/ui/GroupCreateFinalActivity$ListAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 321
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 322
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 323
    .restart local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, -0x1

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 324
    const/4 v7, -0x1

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 325
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v7, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->fragmentView:Landroid/view/View;

    return-object v7

    .line 149
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v1    # "inputFilters":[Landroid/text/InputFilter;
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v5    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .end local v6    # "sectionCell":Lorg/telegram/ui/Cells/GreySectionCell;
    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v8, "NewGroup"

    const v9, 0x7f070325

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 215
    .restart local v0    # "frameLayout":Landroid/widget/FrameLayout;
    .restart local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4    # "linearLayout":Landroid/widget/LinearLayout;
    .restart local v5    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 223
    .restart local v3    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    goto/16 :goto_2

    .line 224
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 225
    :cond_7
    const/4 v7, 0x3

    goto/16 :goto_4

    .line 267
    :cond_8
    const-string/jumbo v7, "EnterListName"

    const v9, 0x7f0701e4

    invoke-static {v7, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_5

    .line 273
    :cond_9
    const/4 v7, 0x3

    goto/16 :goto_6

    .line 288
    .restart local v1    # "inputFilters":[Landroid/text/InputFilter;
    :cond_a
    const/high16 v7, 0x42c00000    # 96.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    goto/16 :goto_7

    .line 289
    :cond_b
    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    goto/16 :goto_8
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 389
    sget v4, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v4, :cond_2

    .line 390
    aget-object v4, p2, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 391
    .local v3, "mask":I
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_0

    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_0

    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_1

    .line 392
    :cond_0
    invoke-direct {p0, v3}, Lorg/telegram/ui/GroupCreateFinalActivity;->updateVisibleRows(I)V

    .line 420
    .end local v3    # "mask":I
    :cond_1
    :goto_0
    return-void

    .line 394
    :cond_2
    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatDidFailCreate:I

    if-ne p1, v4, :cond_4

    .line 395
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_3

    .line 397
    :try_start_0
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :cond_3
    :goto_1
    iput-boolean v6, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->donePressed:Z

    goto :goto_0

    .line 398
    :catch_0
    move-exception v2

    .line 399
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 403
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    if-ne p1, v4, :cond_1

    .line 404
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_5

    .line 406
    :try_start_1
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 411
    :cond_5
    :goto_2
    aget-object v4, p2, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 412
    .local v1, "chat_id":I
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 413
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 414
    .local v0, "args2":Landroid/os/Bundle;
    const-string/jumbo v4, "chat_id"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 415
    new-instance v4, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v4, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lorg/telegram/ui/GroupCreateFinalActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 416
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-eqz v4, :cond_1

    .line 417
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;

    invoke-virtual {v4, v1, v5}, Lorg/telegram/messenger/MessagesController;->changeChatAvatar(ILorg/telegram/tgnet/TLRPC$InputFile;)V

    goto :goto_0

    .line 407
    .end local v0    # "args2":Landroid/os/Bundle;
    .end local v1    # "chat_id":I
    :catch_1
    move-exception v2

    .line 408
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public didUploadedPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 1
    .param p1, "file"    # Lorg/telegram/tgnet/TLRPC$InputFile;
    .param p2, "small"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .param p3, "big"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .prologue
    .line 332
    new-instance v0, Lorg/telegram/ui/GroupCreateFinalActivity$5;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/GroupCreateFinalActivity$5;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 344
    return-void
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 348
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/AvatarUpdater;->onActivityResult(IILandroid/content/Intent;)V

    .line 349
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 84
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v8, p0, v9}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 85
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    invoke-virtual {v8, p0, v9}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 86
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->chatDidFailCreate:I

    invoke-virtual {v8, p0, v9}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 87
    iget-object v8, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iput-object p0, v8, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 88
    iget-object v8, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iput-object p0, v8, Lorg/telegram/ui/Components/AvatarUpdater;->delegate:Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;

    .line 89
    invoke-virtual {p0}, Lorg/telegram/ui/GroupCreateFinalActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "result"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->selectedContacts:Ljava/util/ArrayList;

    .line 90
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v6, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v8, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->selectedContacts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 92
    .local v3, "uid":Ljava/lang/Integer;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v8, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    if-nez v8, :cond_0

    .line 93
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    .end local v3    # "uid":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 97
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v7}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 98
    .local v2, "semaphore":Ljava/util/concurrent/Semaphore;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v5, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/GroupCreateFinalActivity$1;

    invoke-direct {v9, p0, v5, v6, v2}, Lorg/telegram/ui/GroupCreateFinalActivity$1;-><init>(Lorg/telegram/ui/GroupCreateFinalActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 107
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v8, v9, :cond_3

    .line 122
    .end local v2    # "semaphore":Ljava/util/concurrent/Semaphore;
    .end local v5    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_2
    :goto_2
    return v7

    .line 108
    .restart local v2    # "semaphore":Ljava/util/concurrent/Semaphore;
    .restart local v5    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "tmessages"

    invoke-static {v8, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 115
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 116
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v4, v8}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    goto :goto_3

    .line 122
    .end local v2    # "semaphore":Ljava/util/concurrent/Semaphore;
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v5    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_4
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v7

    goto :goto_2
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 128
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 129
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 130
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidFailCreate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->clear()V

    .line 132
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listAdapter:Lorg/telegram/ui/GroupCreateFinalActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->listAdapter:Lorg/telegram/ui/GroupCreateFinalActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupCreateFinalActivity$ListAdapter;->notifyDataSetChanged()V

    .line 140
    :cond_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 1
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 381
    if-eqz p1, :cond_0

    .line 382
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 383
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 385
    :cond_0
    return-void
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 366
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    const-string/jumbo v2, "path"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    .line 369
    :cond_0
    const-string/jumbo v1, "nameTextView"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 371
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 372
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 377
    :cond_1
    :goto_0
    return-void

    .line 374
    :cond_2
    iput-object v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameToSet:Ljava/lang/String;

    goto :goto_0
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 353
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 354
    const-string/jumbo v1, "path"

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v2, v2, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 357
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    const-string/jumbo v1, "nameTextView"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    return-void
.end method
