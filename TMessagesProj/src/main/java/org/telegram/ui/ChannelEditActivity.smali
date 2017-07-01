.class public Lorg/telegram/ui/ChannelEditActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChannelEditActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

.field private avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/ui/Components/BackupImageView;

.field private avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

.field private chatId:I

.field private createAfterUpload:Z

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private descriptionTextView:Landroid/widget/EditText;

.field private doneButton:Landroid/view/View;

.field private donePressed:Z

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private nameTextView:Landroid/widget/EditText;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private signMessages:Z

.field private typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

.field private uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 84
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 85
    new-instance v0, Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarUpdater;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    .line 86
    const-string/jumbo v0, "chat_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ChannelEditActivity;->chatId:I

    .line 87
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ChannelEditActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 58
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChannelEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ChannelEditActivity;->chatId:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$InputFile;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/ChannelEditActivity;Lorg/telegram/tgnet/TLRPC$InputFile;)Lorg/telegram/tgnet/TLRPC$InputFile;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$InputFile;

    .prologue
    .line 58
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/ChannelEditActivity;Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$FileLocation;

    .prologue
    .line 58
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/Components/AvatarDrawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ChannelEditActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->doneButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChannelEditActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 58
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditActivity;->donePressed:Z

    return v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/ChannelEditActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditActivity;->donePressed:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChannelEditActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/Components/AvatarUpdater;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChannelEditActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 58
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditActivity;->createAfterUpload:Z

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/ChannelEditActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditActivity;->createAfterUpload:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChannelEditActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/ChannelEditActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 58
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChannelEditActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChannelEditActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 58
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditActivity;->signMessages:Z

    return v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/ChannelEditActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditActivity;->signMessages:Z

    return p1
.end method

.method private updateAdminCell()V
    .locals 6

    .prologue
    const v2, 0x7f070107

    const/4 v5, 0x0

    .line 601
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    if-nez v0, :cond_0

    .line 609
    :goto_0
    return-void

    .line 604
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string/jumbo v1, "ChannelAdministrators"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->admins_count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 607
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string/jumbo v1, "ChannelAdministrators"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private updateTypeCell()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, -0x575758

    .line 573
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string/jumbo v1, "ChannelTypePrivate"

    const v2, 0x7f070150

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "type":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_3

    .line 575
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string/jumbo v2, "GroupType"

    const v3, 0x7f070257

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 580
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_username:Z

    if-eqz v1, :cond_4

    .line 581
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v2, Lorg/telegram/ui/ChannelEditActivity$11;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelEditActivity$11;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const v2, -0xdededf

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 592
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const v2, -0xd07337

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextValueColor(I)V

    .line 598
    :goto_2
    return-void

    .line 573
    .end local v0    # "type":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "ChannelTypePublic"

    const v2, 0x7f070151

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 577
    .restart local v0    # "type":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string/jumbo v2, "ChannelType"

    const v3, 0x7f07014f

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 594
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 596
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextValueColor(I)V

    goto :goto_2
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 21
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x7f020131

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ChannelEditActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChannelEditActivity$2;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v15

    .line 216
    .local v15, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v2, 0x1

    const v3, 0x7f020152

    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v15, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->doneButton:Landroid/view/View;

    .line 220
    new-instance v2, Landroid/widget/ScrollView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->fragmentView:Landroid/view/View;

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->fragmentView:Landroid/view/View;

    const v3, -0xf0f10

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditActivity;->fragmentView:Landroid/view/View;

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/ScrollView;

    .line 223
    .local v16, "scrollView":Landroid/widget/ScrollView;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 224
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 225
    .local v13, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "ChannelEdit"

    const v4, 0x7f070118

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 231
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 232
    .local v14, "linearLayout2":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 233
    const/4 v2, -0x1

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 234
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v14, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    new-instance v9, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 237
    .local v9, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v14, v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setDrawPhoto(Z)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v20, v0

    const/16 v2, 0x40

    const/high16 v3, 0x42800000    # 64.0f

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    :goto_0
    or-int/lit8 v4, v4, 0x30

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    :goto_1
    const/high16 v6, 0x41400000    # 12.0f

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_6

    const/high16 v7, 0x41800000    # 16.0f

    :goto_2
    const/high16 v8, 0x41400000    # 12.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v3, Lorg/telegram/ui/ChannelEditActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChannelEditActivity$3;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    new-instance v2, Landroid/widget/EditText;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_7

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const-string/jumbo v3, "GroupName"

    const v4, 0x7f070255

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 284
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    invoke-static {}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getSuperTypeFace()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x5

    :goto_4
    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const v3, -0x686869

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const/16 v3, 0x4001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 293
    const/4 v2, 0x1

    new-array v11, v2, [Landroid/text/InputFilter;

    .line 294
    .local v11, "inputFilters":[Landroid/text/InputFilter;
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v11, v2

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v2, v11}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const v3, -0xdededf

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x10

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_9

    const/high16 v5, 0x41800000    # 16.0f

    :goto_5
    const/4 v6, 0x0

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_a

    const/high16 v7, 0x42c00000    # 96.0f

    :goto_6
    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/ChannelEditActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChannelEditActivity$4;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 317
    new-instance v12, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 318
    .local v12, "lineView":Landroid/view/View;
    const v2, -0x303031

    invoke-virtual {v12, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 319
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v12, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    new-instance v14, Landroid/widget/LinearLayout;

    .end local v14    # "linearLayout2":Landroid/widget/LinearLayout;
    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 322
    .restart local v14    # "linearLayout2":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 323
    const/4 v2, -0x1

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 324
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v14, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    new-instance v2, Landroid/widget/EditText;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    invoke-static {}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getSuperTypeFace()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const v3, -0x686869

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const v3, -0xdededf

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_b

    const/4 v2, 0x5

    :goto_7
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const v3, 0x2c001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 337
    const/4 v2, 0x1

    new-array v11, v2, [Landroid/text/InputFilter;

    .line 338
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xff

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v11, v2

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    invoke-virtual {v2, v11}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const-string/jumbo v3, "DescriptionOptionalPlaceholder"

    const v4, 0x7f0701b7

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/high16 v4, 0x41880000    # 17.0f

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x41880000    # 17.0f

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v14, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/ChannelEditActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChannelEditActivity$5;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/ChannelEditActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChannelEditActivity$6;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 370
    new-instance v17, Lorg/telegram/ui/Cells/ShadowSectionCell;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 371
    .local v17, "sectionCell":Lorg/telegram/ui/Cells/ShadowSectionCell;
    const/16 v2, 0x14

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setSize(I)V

    .line 372
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_1

    .line 375
    :cond_0
    new-instance v9, Landroid/widget/FrameLayout;

    .end local v9    # "frameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 376
    .restart local v9    # "frameLayout":Landroid/widget/FrameLayout;
    const/4 v2, -0x1

    invoke-virtual {v9, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 377
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    new-instance v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 380
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChannelEditActivity;->updateTypeCell()V

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const v3, 0x7f0201ab

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setBackgroundResource(I)V

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    new-instance v12, Landroid/view/View;

    .end local v12    # "lineView":Landroid/view/View;
    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 385
    .restart local v12    # "lineView":Landroid/view/View;
    const v2, -0x303031

    invoke-virtual {v12, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 386
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v12, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    new-instance v9, Landroid/widget/FrameLayout;

    .end local v9    # "frameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 389
    .restart local v9    # "frameLayout":Landroid/widget/FrameLayout;
    const/4 v2, -0x1

    invoke-virtual {v9, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 390
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_c

    .line 393
    new-instance v19, Lorg/telegram/ui/Cells/TextCheckCell;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 394
    .local v19, "textCheckCell":Lorg/telegram/ui/Cells/TextCheckCell;
    const v2, 0x7f0201ab

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundResource(I)V

    .line 395
    const-string/jumbo v2, "ChannelSignMessages"

    const v3, 0x7f07014b

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/ChannelEditActivity;->signMessages:Z

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 396
    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v9, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    new-instance v2, Lorg/telegram/ui/ChannelEditActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChannelEditActivity$7;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    new-instance v10, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 406
    .local v10, "infoCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    const v2, 0x7f020126

    invoke-virtual {v10, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundResource(I)V

    .line 407
    const-string/jumbo v2, "ChannelSignMessagesInfo"

    const v3, 0x7f07014c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 408
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    .end local v10    # "infoCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    .end local v19    # "textCheckCell":Lorg/telegram/ui/Cells/TextCheckCell;
    :cond_1
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v2, :cond_2

    .line 434
    new-instance v9, Landroid/widget/FrameLayout;

    .end local v9    # "frameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 435
    .restart local v9    # "frameLayout":Landroid/widget/FrameLayout;
    const/4 v2, -0x1

    invoke-virtual {v9, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 436
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    new-instance v18, Lorg/telegram/ui/Cells/TextSettingsCell;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 439
    .local v18, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    const v2, -0x12c2c7

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 440
    const v2, 0x7f0201ab

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setBackgroundResource(I)V

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_d

    .line 442
    const-string/jumbo v2, "DeleteMega"

    const v3, 0x7f0701af

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    .line 446
    :goto_9
    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    new-instance v2, Lorg/telegram/ui/ChannelEditActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChannelEditActivity$9;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    new-instance v10, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 476
    .restart local v10    # "infoCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    const v2, 0x7f020127

    invoke-virtual {v10, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundResource(I)V

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_e

    .line 478
    const-string/jumbo v2, "MegaDeleteInfo"

    const v3, 0x7f0702e4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 482
    :goto_a
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    .end local v10    # "infoCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    .end local v18    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_3

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 490
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v2, :cond_f

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChannelEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v4, "50_50"

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 497
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->fragmentView:Landroid/view/View;

    return-object v2

    .line 243
    .end local v11    # "inputFilters":[Landroid/text/InputFilter;
    .end local v12    # "lineView":Landroid/view/View;
    .end local v17    # "sectionCell":Lorg/telegram/ui/Cells/ShadowSectionCell;
    :cond_4
    const/4 v4, 0x3

    goto/16 :goto_0

    :cond_5
    const/high16 v5, 0x41800000    # 16.0f

    goto/16 :goto_1

    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 282
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const-string/jumbo v3, "EnterChannelName"

    const v4, 0x7f0701e1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 287
    :cond_8
    const/4 v2, 0x3

    goto/16 :goto_4

    .line 298
    .restart local v11    # "inputFilters":[Landroid/text/InputFilter;
    :cond_9
    const/high16 v5, 0x42c00000    # 96.0f

    goto/16 :goto_5

    :cond_a
    const/high16 v7, 0x41800000    # 16.0f

    goto/16 :goto_6

    .line 334
    .restart local v12    # "lineView":Landroid/view/View;
    :cond_b
    const/4 v2, 0x3

    goto/16 :goto_7

    .line 410
    .restart local v17    # "sectionCell":Lorg/telegram/ui/Cells/ShadowSectionCell;
    :cond_c
    new-instance v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 411
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChannelEditActivity;->updateAdminCell()V

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const v3, 0x7f0201ab

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setBackgroundResource(I)V

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v3, Lorg/telegram/ui/ChannelEditActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChannelEditActivity$8;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    new-instance v17, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local v17    # "sectionCell":Lorg/telegram/ui/Cells/ShadowSectionCell;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 425
    .restart local v17    # "sectionCell":Lorg/telegram/ui/Cells/ShadowSectionCell;
    const/16 v2, 0x14

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setSize(I)V

    .line 426
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_1

    .line 428
    const v2, 0x7f020127

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setBackgroundResource(I)V

    goto/16 :goto_8

    .line 444
    .restart local v18    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :cond_d
    const-string/jumbo v2, "ChannelDelete"

    const v3, 0x7f070114

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 480
    .restart local v10    # "infoCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    :cond_e
    const-string/jumbo v2, "ChannelDeleteInfo"

    const v3, 0x7f070116

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 494
    .end local v10    # "infoCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    .end local v18    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChannelEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChannelEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 502
    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    if-ne p1, v2, :cond_2

    .line 503
    aget-object v0, p2, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 504
    .local v0, "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    iget v3, p0, Lorg/telegram/ui/ChannelEditActivity;->chatId:I

    if-ne v2, v3, :cond_1

    .line 505
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v2, :cond_0

    .line 506
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 508
    :cond_0
    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 509
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditActivity;->updateAdminCell()V

    .line 510
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditActivity;->updateTypeCell()V

    .line 518
    .end local v0    # "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    :cond_1
    :goto_0
    return-void

    .line 512
    :cond_2
    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v2, :cond_1

    .line 513
    aget-object v2, p2, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 514
    .local v1, "updateMask":I
    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_1

    .line 515
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditActivity;->updateTypeCell()V

    goto :goto_0
.end method

.method public didUploadedPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 1
    .param p1, "file"    # Lorg/telegram/tgnet/TLRPC$InputFile;
    .param p2, "small"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .param p3, "big"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .prologue
    .line 522
    new-instance v0, Lorg/telegram/ui/ChannelEditActivity$10;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/ChannelEditActivity$10;-><init>(Lorg/telegram/ui/ChannelEditActivity;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 541
    return-void
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 545
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/AvatarUpdater;->onActivityResult(IILandroid/content/Intent;)V

    .line 546
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ChannelEditActivity;->chatId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 93
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v3, :cond_1

    .line 94
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 95
    .local v1, "semaphore":Ljava/util/concurrent/Semaphore;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChannelEditActivity$1;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/ChannelEditActivity$1;-><init>(Lorg/telegram/ui/ChannelEditActivity;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 103
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_0

    .line 108
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 112
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v3, :cond_1

    .line 113
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ChannelEditActivity;->chatId:I

    invoke-virtual {v3, v4, v1, v2, v2}, Lorg/telegram/messenger/MessagesStorage;->loadChatInfo(ILjava/util/concurrent/Semaphore;ZZ)V

    .line 115
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v3, :cond_1

    .line 129
    .end local v1    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_0
    :goto_2
    return v2

    .line 104
    .restart local v1    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 117
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iput-object p0, v2, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 125
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iput-object p0, v2, Lorg/telegram/ui/Components/AvatarUpdater;->delegate:Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;

    .line 126
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    iput-boolean v2, p0, Lorg/telegram/ui/ChannelEditActivity;->signMessages:Z

    .line 127
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 128
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 129
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v2

    goto :goto_2
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 135
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->clear()V

    .line 138
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 139
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 140
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelEditActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChannelEditActivity;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    .line 141
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 146
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelEditActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChannelEditActivity;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 147
    return-void
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 563
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    const-string/jumbo v1, "path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    .line 566
    :cond_0
    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 550
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 551
    const-string/jumbo v1, "path"

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v2, v2, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 554
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 556
    const-string/jumbo v1, "nameTextView"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0
    .param p1, "chatFull"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 569
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 570
    return-void
.end method
