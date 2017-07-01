.class public Lorg/telegram/ui/LaunchActivity;
.super Landroid/app/Activity;
.source "LaunchActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/LaunchActivity$UpdateServiceConnection;,
        Lorg/telegram/ui/LaunchActivity$VcardData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateCheck"

.field private static layerFragmentsStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private static mainFragmentsStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private static rightFragmentsStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field private backgroundTablet:Landroid/widget/ImageView;

.field connection:Lorg/telegram/ui/LaunchActivity$UpdateServiceConnection;

.field private contactsToSend:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private currentConnectionState:I

.field private documentsMimeType:Ljava/lang/String;

.field private documentsOriginalPathsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private documentsPathsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private documentsUrisArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

.field protected drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

.field private finished:Z

.field private layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field private lockRunnable:Ljava/lang/Runnable;

.field private onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private passcodeSaveIntent:Landroid/content/Intent;

.field private passcodeSaveIntentIsNew:Z

.field private passcodeSaveIntentIsRestore:Z

.field private passcodeView:Lorg/telegram/ui/Components/PasscodeView;

.field private photoPathsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field private sendingText:Ljava/lang/String;

.field service:Lcom/farsitel/bazaar/IUpdateCheckService;

.field private shadowTablet:Landroid/widget/FrameLayout;

.field private shadowTabletSide:Landroid/widget/FrameLayout;

.field private tabletFullSize:Z

.field private videoPath:Ljava/lang/String;

.field private visibleDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/LaunchActivity;->layerFragmentsStack:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/LaunchActivity;->rightFragmentsStack:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2305
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/LaunchActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 105
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/LaunchActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/LaunchActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 105
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 105
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->showPasscodeActivity()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/LaunchActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/LaunchActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 105
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/LaunchActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 105
    iget-boolean v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntentIsNew:Z

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/LaunchActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 105
    iget-boolean v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntentIsRestore:Z

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/LaunchActivity;Landroid/content/Intent;ZZZ)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LaunchActivity;->handleIntent(Landroid/content/Intent;ZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/LaunchActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Z
    .param p8, "x8"    # Ljava/lang/Integer;
    .param p9, "x9"    # I

    .prologue
    .line 105
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/LaunchActivity;->runLinkRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;I)V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;ZZZ)Z
    .locals 73
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isNew"    # Z
    .param p3, "restore"    # Z
    .param p4, "fromPassword"    # Z

    .prologue
    .line 546
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v37

    .line 547
    .local v37, "flags":I
    if-nez p4, :cond_1

    const/4 v4, 0x1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v4

    if-nez v4, :cond_0

    sget-boolean v4, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v4, :cond_1

    .line 548
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->showPasscodeActivity()V

    .line 549
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntent:Landroid/content/Intent;

    .line 550
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntentIsNew:Z

    .line 551
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntentIsRestore:Z

    .line 552
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1090
    const/16 v52, 0x0

    :goto_0
    return v52

    .line 554
    :cond_1
    const/16 v52, 0x0

    .line 556
    .local v52, "pushOpened":Z
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    .line 557
    .local v55, "push_user_id":Ljava/lang/Integer;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    .line 558
    .local v53, "push_chat_id":Ljava/lang/Integer;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    .line 559
    .local v54, "push_enc_id":Ljava/lang/Integer;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    .line 560
    .local v45, "open_settings":Ljava/lang/Integer;
    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v13, "dialogId"

    const-wide/16 v14, 0x0

    invoke-virtual {v4, v13, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v32

    .line 561
    .local v32, "dialogId":J
    :goto_1
    const/16 v59, 0x0

    .line 562
    .local v59, "showDialogsList":Z
    const/16 v60, 0x0

    .line 564
    .local v60, "showPlayer":Z
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    .line 565
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    .line 566
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    .line 567
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    .line 568
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    .line 569
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsMimeType:Ljava/lang/String;

    .line 570
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    .line 571
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    .line 573
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v4

    if-eqz v4, :cond_d

    const/high16 v4, 0x100000

    and-int v4, v4, v37

    if-nez v4, :cond_d

    .line 574
    if-eqz p1, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    if-nez p3, :cond_d

    .line 575
    const-string/jumbo v4, "android.intent.action.SEND"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 576
    const/16 v36, 0x0

    .line 577
    .local v36, "error":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v65

    .line 578
    .local v65, "type":Ljava/lang/String;
    if-eqz v65, :cond_18

    const-string/jumbo v4, "text/x-vcard"

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 580
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v13, "android.intent.extra.STREAM"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Landroid/net/Uri;

    .line 581
    .local v66, "uri":Landroid/net/Uri;
    if-eqz v66, :cond_17

    .line 582
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    .line 583
    .local v27, "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, v27

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v61

    .line 584
    .local v61, "stream":Ljava/io/InputStream;
    new-instance v72, Ljava/util/ArrayList;

    invoke-direct/range {v72 .. v72}, Ljava/util/ArrayList;-><init>()V

    .line 585
    .local v72, "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    const/16 v28, 0x0

    .line 587
    .local v28, "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    new-instance v24, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string/jumbo v13, "UTF-8"

    move-object/from16 v0, v61

    invoke-direct {v4, v0, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 589
    .local v24, "bufferedReader":Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v42

    .local v42, "line":Ljava/lang/String;
    if-eqz v42, :cond_14

    .line 590
    const-string/jumbo v4, "tmessages"

    move-object/from16 v0, v42

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string/jumbo v4, ":"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 592
    .local v20, "args":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v4, v0

    const/4 v13, 0x2

    if-ne v4, v13, :cond_2

    .line 595
    const/4 v4, 0x0

    aget-object v4, v20, v4

    const-string/jumbo v13, "BEGIN"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    aget-object v4, v20, v4

    const-string/jumbo v13, "VCARD"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 596
    new-instance v28, Lorg/telegram/ui/LaunchActivity$VcardData;

    .end local v28    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    const/4 v4, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lorg/telegram/ui/LaunchActivity$VcardData;-><init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/LaunchActivity$1;)V

    .restart local v28    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    move-object/from16 v0, v72

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    :cond_3
    :goto_3
    if-eqz v28, :cond_2

    .line 603
    const/4 v4, 0x0

    aget-object v4, v20, v4

    const-string/jumbo v13, "FN"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    aget-object v4, v20, v4

    const-string/jumbo v13, "ORG"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 604
    :cond_4
    const/16 v44, 0x0

    .line 605
    .local v44, "nameEncoding":Ljava/lang/String;
    const/16 v43, 0x0

    .line 606
    .local v43, "nameCharset":Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v20, v4

    const-string/jumbo v13, ";"

    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v48

    .line 607
    .local v48, "params":[Ljava/lang/String;
    move-object/from16 v22, v48

    .local v22, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v41, v0

    .local v41, "len$":I
    const/16 v40, 0x0

    .local v40, "i$":I
    :goto_4
    move/from16 v0, v40

    move/from16 v1, v41

    if-ge v0, v1, :cond_a

    aget-object v47, v22, v40

    .line 608
    .local v47, "param":Ljava/lang/String;
    const-string/jumbo v4, "="

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 609
    .local v21, "args2":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v4, v0

    const/4 v13, 0x2

    if-eq v4, v13, :cond_8

    .line 607
    :cond_5
    :goto_5
    add-int/lit8 v40, v40, 0x1

    goto :goto_4

    .line 560
    .end local v20    # "args":[Ljava/lang/String;
    .end local v21    # "args2":[Ljava/lang/String;
    .end local v22    # "arr$":[Ljava/lang/String;
    .end local v24    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v27    # "cr":Landroid/content/ContentResolver;
    .end local v28    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .end local v32    # "dialogId":J
    .end local v36    # "error":Z
    .end local v40    # "i$":I
    .end local v41    # "len$":I
    .end local v42    # "line":Ljava/lang/String;
    .end local v43    # "nameCharset":Ljava/lang/String;
    .end local v44    # "nameEncoding":Ljava/lang/String;
    .end local v47    # "param":Ljava/lang/String;
    .end local v48    # "params":[Ljava/lang/String;
    .end local v59    # "showDialogsList":Z
    .end local v60    # "showPlayer":Z
    .end local v61    # "stream":Ljava/io/InputStream;
    .end local v65    # "type":Ljava/lang/String;
    .end local v66    # "uri":Landroid/net/Uri;
    .end local v72    # "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    :cond_6
    const-wide/16 v32, 0x0

    goto/16 :goto_1

    .line 597
    .restart local v20    # "args":[Ljava/lang/String;
    .restart local v24    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v27    # "cr":Landroid/content/ContentResolver;
    .restart local v28    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .restart local v32    # "dialogId":J
    .restart local v36    # "error":Z
    .restart local v42    # "line":Ljava/lang/String;
    .restart local v59    # "showDialogsList":Z
    .restart local v60    # "showPlayer":Z
    .restart local v61    # "stream":Ljava/io/InputStream;
    .restart local v65    # "type":Ljava/lang/String;
    .restart local v66    # "uri":Landroid/net/Uri;
    .restart local v72    # "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    :cond_7
    const/4 v4, 0x0

    aget-object v4, v20, v4

    const-string/jumbo v13, "END"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    aget-object v4, v20, v4

    const-string/jumbo v13, "VCARD"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 598
    const/16 v28, 0x0

    goto :goto_3

    .line 612
    .restart local v21    # "args2":[Ljava/lang/String;
    .restart local v22    # "arr$":[Ljava/lang/String;
    .restart local v40    # "i$":I
    .restart local v41    # "len$":I
    .restart local v43    # "nameCharset":Ljava/lang/String;
    .restart local v44    # "nameEncoding":Ljava/lang/String;
    .restart local v47    # "param":Ljava/lang/String;
    .restart local v48    # "params":[Ljava/lang/String;
    :cond_8
    const/4 v4, 0x0

    aget-object v4, v21, v4

    const-string/jumbo v13, "CHARSET"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 613
    const/4 v4, 0x1

    aget-object v43, v21, v4

    goto :goto_5

    .line 614
    :cond_9
    const/4 v4, 0x0

    aget-object v4, v21, v4

    const-string/jumbo v13, "ENCODING"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 615
    const/4 v4, 0x1

    aget-object v44, v21, v4

    goto :goto_5

    .line 618
    .end local v21    # "args2":[Ljava/lang/String;
    .end local v47    # "param":Ljava/lang/String;
    :cond_a
    const/4 v4, 0x1

    aget-object v4, v20, v4

    move-object/from16 v0, v28

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    .line 619
    if-eqz v44, :cond_2

    const-string/jumbo v4, "QUOTED-PRINTABLE"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 620
    :goto_6
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    const-string/jumbo v13, "="

    invoke-virtual {v4, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz v44, :cond_b

    .line 621
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, v28

    iget-object v14, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    .line 622
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v42

    .line 623
    if-nez v42, :cond_12

    .line 628
    :cond_b
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->decodeQuotedPrintable([B)[B

    move-result-object v25

    .line 629
    .local v25, "bytes":[B
    if-eqz v25, :cond_2

    move-object/from16 v0, v25

    array-length v4, v0

    if-eqz v4, :cond_2

    .line 630
    new-instance v31, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 631
    .local v31, "decodedName":Ljava/lang/String;
    if-eqz v31, :cond_2

    .line 632
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 670
    .end local v20    # "args":[Ljava/lang/String;
    .end local v22    # "arr$":[Ljava/lang/String;
    .end local v24    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v25    # "bytes":[B
    .end local v27    # "cr":Landroid/content/ContentResolver;
    .end local v28    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .end local v31    # "decodedName":Ljava/lang/String;
    .end local v40    # "i$":I
    .end local v41    # "len$":I
    .end local v42    # "line":Ljava/lang/String;
    .end local v43    # "nameCharset":Ljava/lang/String;
    .end local v44    # "nameEncoding":Ljava/lang/String;
    .end local v48    # "params":[Ljava/lang/String;
    .end local v61    # "stream":Ljava/io/InputStream;
    .end local v66    # "uri":Landroid/net/Uri;
    .end local v72    # "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    :catch_0
    move-exception v34

    .line 671
    .local v34, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 672
    const/16 v36, 0x1

    .line 740
    .end local v34    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_7
    if-eqz v36, :cond_d

    .line 741
    const-string/jumbo v4, "Unsupported content"

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 943
    .end local v36    # "error":Z
    .end local v65    # "type":Ljava/lang/String;
    :cond_d
    :goto_8
    invoke-virtual/range {v55 .. v55}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_57

    .line 944
    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    .line 945
    .local v20, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "user_id"

    invoke-virtual/range {v55 .. v55}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 946
    sget-object v4, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    sget-object v4, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    sget-object v13, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 947
    :cond_e
    new-instance v38, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v38

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 948
    .local v38, "fragment":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v0, v38

    invoke-virtual {v4, v0, v13, v14, v15}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 949
    const/16 v52, 0x1

    .line 1056
    .end local v20    # "args":Landroid/os/Bundle;
    .end local v38    # "fragment":Lorg/telegram/ui/ChatActivity;
    :cond_f
    :goto_9
    if-nez v52, :cond_11

    if-nez p2, :cond_11

    .line 1057
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_71

    .line 1058
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v4

    if-nez v4, :cond_70

    .line 1059
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1060
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v13, Lorg/telegram/ui/LoginActivity;

    invoke-direct {v13}, Lorg/telegram/ui/LoginActivity;-><init>()V

    invoke-virtual {v4, v13}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1061
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1080
    :cond_10
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1081
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1082
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1083
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1087
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 626
    .local v20, "args":[Ljava/lang/String;
    .restart local v22    # "arr$":[Ljava/lang/String;
    .restart local v24    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v27    # "cr":Landroid/content/ContentResolver;
    .restart local v28    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .restart local v36    # "error":Z
    .restart local v40    # "i$":I
    .restart local v41    # "len$":I
    .restart local v42    # "line":Ljava/lang/String;
    .restart local v43    # "nameCharset":Ljava/lang/String;
    .restart local v44    # "nameEncoding":Ljava/lang/String;
    .restart local v48    # "params":[Ljava/lang/String;
    .restart local v61    # "stream":Ljava/io/InputStream;
    .restart local v65    # "type":Ljava/lang/String;
    .restart local v66    # "uri":Landroid/net/Uri;
    .restart local v72    # "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    :cond_12
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    iget-object v13, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    goto/16 :goto_6

    .line 636
    .end local v22    # "arr$":[Ljava/lang/String;
    .end local v40    # "i$":I
    .end local v41    # "len$":I
    .end local v43    # "nameCharset":Ljava/lang/String;
    .end local v44    # "nameEncoding":Ljava/lang/String;
    .end local v48    # "params":[Ljava/lang/String;
    :cond_13
    const/4 v4, 0x0

    aget-object v4, v20, v4

    const-string/jumbo v13, "TEL"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 637
    const/4 v4, 0x1

    aget-object v4, v20, v4

    const/4 v13, 0x1

    invoke-static {v4, v13}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v51

    .line 638
    .local v51, "phone":Ljava/lang/String;
    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 639
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->phones:Ljava/util/ArrayList;

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 644
    .end local v20    # "args":[Ljava/lang/String;
    .end local v51    # "phone":Ljava/lang/String;
    :cond_14
    :try_start_2
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->close()V

    .line 645
    invoke-virtual/range {v61 .. v61}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 649
    :goto_b
    const/16 v19, 0x0

    .local v19, "a":I
    :goto_c
    :try_start_3
    invoke-virtual/range {v72 .. v72}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_c

    .line 650
    move-object/from16 v0, v72

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Lorg/telegram/ui/LaunchActivity$VcardData;

    .line 651
    .local v71, "vcardData":Lorg/telegram/ui/LaunchActivity$VcardData;
    move-object/from16 v0, v71

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    if-eqz v4, :cond_16

    move-object/from16 v0, v71

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_16

    .line 652
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    if-nez v4, :cond_15

    .line 653
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    .line 656
    :cond_15
    const/16 v23, 0x0

    .local v23, "b":I
    :goto_d
    move-object/from16 v0, v71

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_16

    .line 657
    move-object/from16 v0, v71

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->phones:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/String;

    .line 658
    .restart local v51    # "phone":Ljava/lang/String;
    new-instance v69, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;

    invoke-direct/range {v69 .. v69}, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;-><init>()V

    .line 659
    .local v69, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v51

    move-object/from16 v1, v69

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 660
    move-object/from16 v0, v71

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    move-object/from16 v0, v69

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 661
    const-string/jumbo v4, ""

    move-object/from16 v0, v69

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 662
    const/4 v4, 0x0

    move-object/from16 v0, v69

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 663
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    move-object/from16 v0, v69

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    add-int/lit8 v23, v23, 0x1

    goto :goto_d

    .line 646
    .end local v19    # "a":I
    .end local v23    # "b":I
    .end local v51    # "phone":Ljava/lang/String;
    .end local v69    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v71    # "vcardData":Lorg/telegram/ui/LaunchActivity$VcardData;
    :catch_1
    move-exception v34

    .line 647
    .restart local v34    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_b

    .line 649
    .end local v34    # "e":Ljava/lang/Exception;
    .restart local v19    # "a":I
    .restart local v71    # "vcardData":Lorg/telegram/ui/LaunchActivity$VcardData;
    :cond_16
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_c

    .line 668
    .end local v19    # "a":I
    .end local v24    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v27    # "cr":Landroid/content/ContentResolver;
    .end local v28    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .end local v42    # "line":Ljava/lang/String;
    .end local v61    # "stream":Ljava/io/InputStream;
    .end local v71    # "vcardData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .end local v72    # "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    :cond_17
    const/16 v36, 0x1

    goto/16 :goto_7

    .line 675
    .end local v66    # "uri":Landroid/net/Uri;
    :cond_18
    const-string/jumbo v4, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    .line 676
    .local v63, "text":Ljava/lang/String;
    if-nez v63, :cond_19

    .line 677
    const-string/jumbo v4, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v64

    .line 678
    .local v64, "textSequence":Ljava/lang/CharSequence;
    if-eqz v64, :cond_19

    .line 679
    invoke-interface/range {v64 .. v64}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v63

    .line 682
    .end local v64    # "textSequence":Ljava/lang/CharSequence;
    :cond_19
    const-string/jumbo v4, "android.intent.extra.SUBJECT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 684
    .local v62, "subject":Ljava/lang/String;
    if-eqz v63, :cond_22

    invoke-virtual/range {v63 .. v63}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_22

    .line 685
    const-string/jumbo v4, "http://"

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    const-string/jumbo v4, "https://"

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    :cond_1a
    if-eqz v62, :cond_1b

    invoke-virtual/range {v62 .. v62}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1b

    .line 686
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v62

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v13, "\n"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    .line 688
    :cond_1b
    move-object/from16 v0, v63

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    .line 693
    :cond_1c
    :goto_e
    const-string/jumbo v4, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v49

    .line 694
    .local v49, "parcelable":Landroid/os/Parcelable;
    if-eqz v49, :cond_29

    .line 696
    move-object/from16 v0, v49

    instance-of v4, v0, Landroid/net/Uri;

    if-nez v4, :cond_1d

    .line 697
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v49

    :cond_1d
    move-object/from16 v66, v49

    .line 699
    check-cast v66, Landroid/net/Uri;

    .line 700
    .restart local v66    # "uri":Landroid/net/Uri;
    if-eqz v66, :cond_1e

    .line 701
    invoke-static/range {v66 .. v66}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 702
    const/16 v36, 0x1

    .line 705
    :cond_1e
    if-nez v36, :cond_c

    .line 706
    if-eqz v66, :cond_23

    if-eqz v65, :cond_1f

    const-string/jumbo v4, "image/"

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_20

    :cond_1f
    invoke-virtual/range {v66 .. v66}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v13, ".jpg"

    invoke-virtual {v4, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 707
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_21

    .line 708
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    .line 710
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, v66

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 689
    .end local v49    # "parcelable":Landroid/os/Parcelable;
    .end local v66    # "uri":Landroid/net/Uri;
    :cond_22
    if-eqz v62, :cond_1c

    invoke-virtual/range {v62 .. v62}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1c

    .line 690
    move-object/from16 v0, v62

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    goto :goto_e

    .line 712
    .restart local v49    # "parcelable":Landroid/os/Parcelable;
    .restart local v66    # "uri":Landroid/net/Uri;
    :cond_23
    invoke-static/range {v66 .. v66}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v50

    .line 713
    .local v50, "path":Ljava/lang/String;
    if-eqz v50, :cond_27

    .line 714
    const-string/jumbo v4, "file:"

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 715
    const-string/jumbo v4, "file://"

    const-string/jumbo v13, ""

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v50

    .line 717
    :cond_24
    if-eqz v65, :cond_25

    const-string/jumbo v4, "video/"

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 718
    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    goto/16 :goto_7

    .line 720
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_26

    .line 721
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    .line 722
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    .line 724
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    invoke-virtual/range {v66 .. v66}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 728
    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    if-nez v4, :cond_28

    .line 729
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    .line 731
    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    move-object/from16 v0, v66

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    move-object/from16 v0, v65

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->documentsMimeType:Ljava/lang/String;

    goto/16 :goto_7

    .line 736
    .end local v50    # "path":Ljava/lang/String;
    .end local v66    # "uri":Landroid/net/Uri;
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    if-nez v4, :cond_c

    .line 737
    const/16 v36, 0x1

    goto/16 :goto_7

    .line 743
    .end local v36    # "error":Z
    .end local v49    # "parcelable":Landroid/os/Parcelable;
    .end local v62    # "subject":Ljava/lang/String;
    .end local v63    # "text":Ljava/lang/String;
    .end local v65    # "type":Ljava/lang/String;
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v13, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 744
    const/16 v36, 0x0

    .line 746
    .restart local v36    # "error":Z
    :try_start_4
    const-string/jumbo v4, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v67

    .line 747
    .local v67, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v65

    .line 748
    .restart local v65    # "type":Ljava/lang/String;
    if-eqz v67, :cond_2e

    .line 749
    const/16 v19, 0x0

    .restart local v19    # "a":I
    :goto_f
    invoke-virtual/range {v67 .. v67}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_2d

    .line 750
    move-object/from16 v0, v67

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/os/Parcelable;

    .line 751
    .restart local v49    # "parcelable":Landroid/os/Parcelable;
    move-object/from16 v0, v49

    instance-of v4, v0, Landroid/net/Uri;

    if-nez v4, :cond_2b

    .line 752
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v49

    .line 754
    :cond_2b
    move-object/from16 v0, v49

    check-cast v0, Landroid/net/Uri;

    move-object/from16 v66, v0

    .line 755
    .restart local v66    # "uri":Landroid/net/Uri;
    if-eqz v66, :cond_2c

    .line 756
    invoke-static/range {v66 .. v66}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 757
    move-object/from16 v0, v67

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 758
    add-int/lit8 v19, v19, -0x1

    .line 749
    :cond_2c
    add-int/lit8 v19, v19, 0x1

    goto :goto_f

    .line 762
    .end local v49    # "parcelable":Landroid/os/Parcelable;
    .end local v66    # "uri":Landroid/net/Uri;
    :cond_2d
    invoke-virtual/range {v67 .. v67}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 763
    const/16 v67, 0x0

    .line 766
    .end local v19    # "a":I
    :cond_2e
    if-eqz v67, :cond_37

    .line 767
    if-eqz v65, :cond_31

    const-string/jumbo v4, "image/"

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 768
    const/16 v19, 0x0

    .restart local v19    # "a":I
    :goto_10
    invoke-virtual/range {v67 .. v67}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_38

    .line 769
    move-object/from16 v0, v67

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/os/Parcelable;

    .line 770
    .restart local v49    # "parcelable":Landroid/os/Parcelable;
    move-object/from16 v0, v49

    instance-of v4, v0, Landroid/net/Uri;

    if-nez v4, :cond_2f

    .line 771
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v49

    .line 773
    :cond_2f
    move-object/from16 v0, v49

    check-cast v0, Landroid/net/Uri;

    move-object/from16 v66, v0

    .line 774
    .restart local v66    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_30

    .line 775
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    .line 777
    :cond_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, v66

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    add-int/lit8 v19, v19, 0x1

    goto :goto_10

    .line 780
    .end local v19    # "a":I
    .end local v49    # "parcelable":Landroid/os/Parcelable;
    .end local v66    # "uri":Landroid/net/Uri;
    :cond_31
    const/16 v19, 0x0

    .restart local v19    # "a":I
    :goto_11
    invoke-virtual/range {v67 .. v67}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_38

    .line 781
    move-object/from16 v0, v67

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/os/Parcelable;

    .line 782
    .restart local v49    # "parcelable":Landroid/os/Parcelable;
    move-object/from16 v0, v49

    instance-of v4, v0, Landroid/net/Uri;

    if-nez v4, :cond_32

    .line 783
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v49

    .line 785
    :cond_32
    move-object/from16 v0, v49

    check-cast v0, Landroid/net/Uri;

    move-object v4, v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v50

    .line 786
    .restart local v50    # "path":Ljava/lang/String;
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v46

    .line 787
    .local v46, "originalPath":Ljava/lang/String;
    if-nez v46, :cond_33

    .line 788
    move-object/from16 v46, v50

    .line 790
    :cond_33
    if-eqz v50, :cond_36

    .line 791
    const-string/jumbo v4, "file:"

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 792
    const-string/jumbo v4, "file://"

    const-string/jumbo v13, ""

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v50

    .line 794
    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_35

    .line 795
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    .line 796
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    .line 798
    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 780
    :cond_36
    add-int/lit8 v19, v19, 0x1

    goto :goto_11

    .line 804
    .end local v19    # "a":I
    .end local v46    # "originalPath":Ljava/lang/String;
    .end local v49    # "parcelable":Landroid/os/Parcelable;
    .end local v50    # "path":Ljava/lang/String;
    :cond_37
    const/16 v36, 0x1

    .line 810
    .end local v65    # "type":Ljava/lang/String;
    .end local v67    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_38
    :goto_12
    if-eqz v36, :cond_d

    .line 811
    const-string/jumbo v4, "Unsupported content"

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 806
    :catch_2
    move-exception v34

    .line 807
    .restart local v34    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 808
    const/16 v36, 0x1

    goto :goto_12

    .line 813
    .end local v34    # "e":Ljava/lang/Exception;
    .end local v36    # "error":Z
    :cond_39
    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 814
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v30

    .line 815
    .local v30, "data":Landroid/net/Uri;
    if-eqz v30, :cond_d

    .line 816
    const/4 v5, 0x0

    .line 817
    .local v5, "username":Ljava/lang/String;
    const/4 v6, 0x0

    .line 818
    .local v6, "group":Ljava/lang/String;
    const/4 v7, 0x0

    .line 819
    .local v7, "sticker":Ljava/lang/String;
    const/4 v8, 0x0

    .line 820
    .local v8, "botUser":Ljava/lang/String;
    const/4 v9, 0x0

    .line 821
    .local v9, "botChat":Ljava/lang/String;
    const/4 v10, 0x0

    .line 822
    .local v10, "message":Ljava/lang/String;
    const/4 v12, 0x0

    .line 823
    .local v12, "messageId":Ljava/lang/Integer;
    const/4 v11, 0x0

    .line 824
    .local v11, "hasUrl":Z
    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v57

    .line 825
    .local v57, "scheme":Ljava/lang/String;
    if-eqz v57, :cond_3c

    .line 826
    const-string/jumbo v4, "http"

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    const-string/jumbo v4, "https"

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 827
    :cond_3a
    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v39

    .line 828
    .local v39, "host":Ljava/lang/String;
    const-string/jumbo v4, "telegram.me"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    const-string/jumbo v4, "telegram.dog"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 829
    :cond_3b
    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v50

    .line 830
    .restart local v50    # "path":Ljava/lang/String;
    if-eqz v50, :cond_3c

    invoke-virtual/range {v50 .. v50}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v13, 0x1

    if-le v4, v13, :cond_3c

    .line 831
    const/4 v4, 0x1

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v50

    .line 832
    const-string/jumbo v4, "joinchat/"

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 833
    const-string/jumbo v4, "joinchat/"

    const-string/jumbo v13, ""

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 901
    .end local v39    # "host":Ljava/lang/String;
    .end local v50    # "path":Ljava/lang/String;
    :cond_3c
    :goto_13
    if-nez v5, :cond_3d

    if-nez v6, :cond_3d

    if-nez v7, :cond_3d

    if-eqz v10, :cond_4f

    .line 902
    :cond_3d
    const/4 v13, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v13}, Lorg/telegram/ui/LaunchActivity;->runLinkRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;I)V

    goto/16 :goto_8

    .line 834
    .restart local v39    # "host":Ljava/lang/String;
    .restart local v50    # "path":Ljava/lang/String;
    :cond_3e
    const-string/jumbo v4, "addstickers/"

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 835
    const-string/jumbo v4, "addstickers/"

    const-string/jumbo v13, ""

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_13

    .line 836
    :cond_3f
    const-string/jumbo v4, "msg/"

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_40

    const-string/jumbo v4, "share/"

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 837
    :cond_40
    const-string/jumbo v4, "url"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 838
    if-nez v10, :cond_41

    .line 839
    const-string/jumbo v10, ""

    .line 841
    :cond_41
    const-string/jumbo v4, "text"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3c

    .line 842
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_42

    .line 843
    const/4 v11, 0x1

    .line 844
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v13, "\n"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 846
    :cond_42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v13, "text"

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_13

    .line 848
    :cond_43
    invoke-virtual/range {v50 .. v50}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v13, 0x1

    if-lt v4, v13, :cond_3c

    .line 849
    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v58

    .line 850
    .local v58, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_44

    .line 851
    const/4 v4, 0x0

    move-object/from16 v0, v58

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "username":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 852
    .restart local v5    # "username":Ljava/lang/String;
    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v4

    const/4 v13, 0x1

    if-le v4, v13, :cond_44

    .line 853
    const/4 v4, 0x1

    move-object/from16 v0, v58

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 854
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_44

    .line 855
    const/4 v12, 0x0

    .line 859
    :cond_44
    const-string/jumbo v4, "start"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 860
    const-string/jumbo v4, "startgroup"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_13

    .line 864
    .end local v39    # "host":Ljava/lang/String;
    .end local v50    # "path":Ljava/lang/String;
    .end local v58    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_45
    const-string/jumbo v4, "tg"

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 865
    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v68

    .line 866
    .local v68, "url":Ljava/lang/String;
    const-string/jumbo v4, "tg:resolve"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_46

    const-string/jumbo v4, "tg://resolve"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 867
    :cond_46
    const-string/jumbo v4, "tg:resolve"

    const-string/jumbo v13, "tg://telegram.org"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v13, "tg://resolve"

    const-string/jumbo v14, "tg://telegram.org"

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v68

    .line 868
    invoke-static/range {v68 .. v68}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    .line 869
    const-string/jumbo v4, "domain"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 870
    const-string/jumbo v4, "start"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 871
    const-string/jumbo v4, "startgroup"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 872
    const-string/jumbo v4, "post"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 873
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_3c

    .line 874
    const/4 v12, 0x0

    goto/16 :goto_13

    .line 876
    :cond_47
    const-string/jumbo v4, "tg:join"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_48

    const-string/jumbo v4, "tg://join"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 877
    :cond_48
    const-string/jumbo v4, "tg:join"

    const-string/jumbo v13, "tg://telegram.org"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v13, "tg://join"

    const-string/jumbo v14, "tg://telegram.org"

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v68

    .line 878
    invoke-static/range {v68 .. v68}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    .line 879
    const-string/jumbo v4, "invite"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_13

    .line 880
    :cond_49
    const-string/jumbo v4, "tg:addstickers"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4a

    const-string/jumbo v4, "tg://addstickers"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 881
    :cond_4a
    const-string/jumbo v4, "tg:addstickers"

    const-string/jumbo v13, "tg://telegram.org"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v13, "tg://addstickers"

    const-string/jumbo v14, "tg://telegram.org"

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v68

    .line 882
    invoke-static/range {v68 .. v68}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    .line 883
    const-string/jumbo v4, "set"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_13

    .line 884
    :cond_4b
    const-string/jumbo v4, "tg:msg"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4c

    const-string/jumbo v4, "tg://msg"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4c

    const-string/jumbo v4, "tg://share"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4c

    const-string/jumbo v4, "tg:share"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 885
    :cond_4c
    const-string/jumbo v4, "tg:msg"

    const-string/jumbo v13, "tg://telegram.org"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v13, "tg://msg"

    const-string/jumbo v14, "tg://telegram.org"

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v13, "tg://share"

    const-string/jumbo v14, "tg://telegram.org"

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v13, "tg:share"

    const-string/jumbo v14, "tg://telegram.org"

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v68

    .line 886
    invoke-static/range {v68 .. v68}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    .line 887
    const-string/jumbo v4, "url"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 888
    if-nez v10, :cond_4d

    .line 889
    const-string/jumbo v10, ""

    .line 891
    :cond_4d
    const-string/jumbo v4, "text"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3c

    .line 892
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4e

    .line 893
    const/4 v11, 0x1

    .line 894
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v13, "\n"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 896
    :cond_4e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v13, "text"

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_13

    .line 905
    .end local v68    # "url":Ljava/lang/String;
    :cond_4f
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 906
    .local v29, "cursor":Landroid/database/Cursor;
    if-eqz v29, :cond_d

    .line 907
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_50

    .line 908
    const-string/jumbo v4, "DATA4"

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v70

    .line 909
    .local v70, "userId":I
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v13, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v4, v13, v14}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 910
    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    .line 912
    .end local v70    # "userId":I
    :cond_50
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_8

    .line 914
    .end local v29    # "cursor":Landroid/database/Cursor;
    :catch_3
    move-exception v34

    .line 915
    .restart local v34    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 919
    .end local v5    # "username":Ljava/lang/String;
    .end local v6    # "group":Ljava/lang/String;
    .end local v7    # "sticker":Ljava/lang/String;
    .end local v8    # "botUser":Ljava/lang/String;
    .end local v9    # "botChat":Ljava/lang/String;
    .end local v10    # "message":Ljava/lang/String;
    .end local v11    # "hasUrl":Z
    .end local v12    # "messageId":Ljava/lang/Integer;
    .end local v30    # "data":Landroid/net/Uri;
    .end local v34    # "e":Ljava/lang/Exception;
    .end local v57    # "scheme":Ljava/lang/String;
    :cond_51
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v13, "org.telegram.messenger.OPEN_ACCOUNT"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 920
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    goto/16 :goto_8

    .line 921
    :cond_52
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v13, "com.tmessages.openchat"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 922
    const-string/jumbo v4, "chatId"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    .line 923
    .local v26, "chatId":I
    const-string/jumbo v4, "userId"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v70

    .line 924
    .restart local v70    # "userId":I
    const-string/jumbo v4, "encId"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v35

    .line 925
    .local v35, "encId":I
    if-eqz v26, :cond_53

    .line 926
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v13, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v4, v13, v14}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 927
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    goto/16 :goto_8

    .line 928
    :cond_53
    if-eqz v70, :cond_54

    .line 929
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v13, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v4, v13, v14}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 930
    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    goto/16 :goto_8

    .line 931
    :cond_54
    if-eqz v35, :cond_55

    .line 932
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v13, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v4, v13, v14}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 933
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    goto/16 :goto_8

    .line 935
    :cond_55
    const/16 v59, 0x1

    goto/16 :goto_8

    .line 937
    .end local v26    # "chatId":I
    .end local v35    # "encId":I
    .end local v70    # "userId":I
    :cond_56
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v13, "com.tmessages.openplayer"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 938
    const/16 v60, 0x1

    goto/16 :goto_8

    .line 952
    :cond_57
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_59

    .line 953
    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    .line 954
    .local v20, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "chat_id"

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 955
    sget-object v4, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_58

    sget-object v4, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    sget-object v13, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 956
    :cond_58
    new-instance v38, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v38

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 957
    .restart local v38    # "fragment":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v0, v38

    invoke-virtual {v4, v0, v13, v14, v15}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 958
    const/16 v52, 0x1

    goto/16 :goto_9

    .line 961
    .end local v20    # "args":Landroid/os/Bundle;
    .end local v38    # "fragment":Lorg/telegram/ui/ChatActivity;
    :cond_59
    invoke-virtual/range {v54 .. v54}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_5a

    .line 962
    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    .line 963
    .restart local v20    # "args":Landroid/os/Bundle;
    const-string/jumbo v4, "enc_id"

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 964
    new-instance v38, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v38

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 965
    .restart local v38    # "fragment":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v0, v38

    invoke-virtual {v4, v0, v13, v14, v15}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 966
    const/16 v52, 0x1

    goto/16 :goto_9

    .line 968
    .end local v20    # "args":Landroid/os/Bundle;
    .end local v38    # "fragment":Lorg/telegram/ui/ChatActivity;
    :cond_5a
    if-eqz v59, :cond_5e

    .line 969
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-nez v4, :cond_5c

    .line 970
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 980
    :cond_5b
    :goto_14
    const/16 v52, 0x0

    .line 981
    const/16 p2, 0x0

    goto/16 :goto_9

    .line 972
    :cond_5c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5b

    .line 973
    const/16 v19, 0x0

    .restart local v19    # "a":I
    :goto_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lez v4, :cond_5d

    .line 974
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v13, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 975
    add-int/lit8 v19, v19, -0x1

    .line 973
    add-int/lit8 v19, v19, 0x1

    goto :goto_15

    .line 977
    :cond_5d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto :goto_14

    .line 982
    .end local v19    # "a":I
    :cond_5e
    if-eqz v60, :cond_64

    .line 983
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 984
    const/16 v19, 0x0

    .restart local v19    # "a":I
    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_5f

    .line 985
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 986
    .local v38, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    move-object/from16 v0, v38

    instance-of v4, v0, Lorg/telegram/ui/AudioPlayerActivity;

    if-eqz v4, :cond_60

    .line 987
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 991
    .end local v38    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_5f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 992
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 993
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1004
    :goto_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v13, Lorg/telegram/ui/AudioPlayerActivity;

    invoke-direct {v13}, Lorg/telegram/ui/AudioPlayerActivity;-><init>()V

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v13, v14, v15, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1005
    const/16 v52, 0x1

    goto/16 :goto_9

    .line 984
    .restart local v38    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_60
    add-int/lit8 v19, v19, 0x1

    goto :goto_16

    .line 995
    .end local v19    # "a":I
    .end local v38    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_61
    const/16 v19, 0x0

    .restart local v19    # "a":I
    :goto_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_62

    .line 996
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 997
    .restart local v38    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    move-object/from16 v0, v38

    instance-of v4, v0, Lorg/telegram/ui/AudioPlayerActivity;

    if-eqz v4, :cond_63

    .line 998
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1002
    .end local v38    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_62
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto :goto_17

    .line 995
    .restart local v38    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_63
    add-int/lit8 v19, v19, 0x1

    goto :goto_18

    .line 1006
    .end local v19    # "a":I
    .end local v38    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_64
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    if-nez v4, :cond_65

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_65

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    if-nez v4, :cond_65

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_65

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    if-nez v4, :cond_65

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    if-eqz v4, :cond_6e

    .line 1007
    :cond_65
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-nez v4, :cond_66

    .line 1008
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v13, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v4, v13, v14}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1010
    :cond_66
    const-wide/16 v14, 0x0

    cmp-long v4, v32, v14

    if-nez v4, :cond_6d

    .line 1011
    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    .line 1012
    .restart local v20    # "args":Landroid/os/Bundle;
    const-string/jumbo v4, "onlySelect"

    const/4 v13, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    if-eqz v4, :cond_68

    .line 1014
    const-string/jumbo v4, "selectAlertString"

    const-string/jumbo v13, "SendContactTo"

    const v14, 0x7f070451

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    const-string/jumbo v4, "selectAlertStringGroup"

    const-string/jumbo v13, "SendContactToGroup"

    const v14, 0x7f07044d

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    :goto_19
    new-instance v38, Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, v38

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1021
    .local v38, "fragment":Lorg/telegram/ui/DialogsActivity;
    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 1023
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 1024
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_69

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v13, v13, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/DialogsActivity;

    if-eqz v4, :cond_69

    const/16 v56, 0x1

    .line 1028
    .local v56, "removeLast":Z
    :goto_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v56

    invoke-virtual {v4, v0, v1, v13, v14}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1029
    const/16 v52, 0x1

    .line 1030
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 1031
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v4, v13, v14}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 1034
    :cond_67
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1035
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 1036
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1037
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    goto/16 :goto_9

    .line 1017
    .end local v38    # "fragment":Lorg/telegram/ui/DialogsActivity;
    .end local v56    # "removeLast":Z
    :cond_68
    const-string/jumbo v4, "selectAlertString"

    const-string/jumbo v13, "SendMessagesTo"

    const v14, 0x7f070451

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    const-string/jumbo v4, "selectAlertStringGroup"

    const-string/jumbo v13, "SendMessagesToGroup"

    const v14, 0x7f070452

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19

    .line 1024
    .restart local v38    # "fragment":Lorg/telegram/ui/DialogsActivity;
    :cond_69
    const/16 v56, 0x0

    goto :goto_1a

    .line 1026
    :cond_6a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v13, 0x1

    if-le v4, v13, :cond_6b

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v13, v13, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/DialogsActivity;

    if-eqz v4, :cond_6b

    const/16 v56, 0x1

    .restart local v56    # "removeLast":Z
    :goto_1b
    goto/16 :goto_1a

    .end local v56    # "removeLast":Z
    :cond_6b
    const/16 v56, 0x0

    goto :goto_1b

    .line 1039
    .restart local v56    # "removeLast":Z
    :cond_6c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_9

    .line 1042
    .end local v20    # "args":Landroid/os/Bundle;
    .end local v38    # "fragment":Lorg/telegram/ui/DialogsActivity;
    .end local v56    # "removeLast":Z
    :cond_6d
    const/4 v4, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v4, v1, v2, v13}, Lorg/telegram/ui/LaunchActivity;->didSelectDialog(Lorg/telegram/ui/DialogsActivity;JZ)V

    goto/16 :goto_9

    .line 1044
    :cond_6e
    invoke-virtual/range {v45 .. v45}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_f

    .line 1045
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v13, Lorg/telegram/ui/SettingsActivity;

    invoke-direct {v13}, Lorg/telegram/ui/SettingsActivity;-><init>()V

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v13, v14, v15, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1046
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 1047
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1048
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1049
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1053
    :goto_1c
    const/16 v52, 0x1

    goto/16 :goto_9

    .line 1051
    :cond_6f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto :goto_1c

    .line 1064
    :cond_70
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1065
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v13, Lorg/telegram/ui/DialogsActivity;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v4, v13}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1066
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_a

    .line 1070
    :cond_71
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1071
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v4

    if-nez v4, :cond_72

    .line 1072
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v13, Lorg/telegram/ui/LoginActivity;

    invoke-direct {v13}, Lorg/telegram/ui/LoginActivity;-><init>()V

    invoke-virtual {v4, v13}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1073
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_a

    .line 1075
    :cond_72
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v13, Lorg/telegram/ui/DialogsActivity;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v4, v13}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1076
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_a
.end method

.method private initService()V
    .locals 5

    .prologue
    .line 2291
    const-string/jumbo v2, "UpdateCheck"

    const-string/jumbo v3, "initService()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    new-instance v2, Lorg/telegram/ui/LaunchActivity$UpdateServiceConnection;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LaunchActivity$UpdateServiceConnection;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    iput-object v2, p0, Lorg/telegram/ui/LaunchActivity;->connection:Lorg/telegram/ui/LaunchActivity$UpdateServiceConnection;

    .line 2293
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.farsitel.bazaar.service.UpdateCheckService.BIND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2294
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v2, "com.farsitel.bazaar"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2295
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->connection:Lorg/telegram/ui/LaunchActivity$UpdateServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/LaunchActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 2296
    .local v1, "ret":Z
    const-string/jumbo v2, "UpdateCheck"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initService() bound value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    return-void
.end method

.method private onFinish()V
    .locals 2

    .prologue
    .line 1483
    iget-boolean v0, p0, Lorg/telegram/ui/LaunchActivity;->finished:Z

    if-eqz v0, :cond_0

    .line 1497
    :goto_0
    return-void

    .line 1486
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/LaunchActivity;->finished:Z

    .line 1487
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1488
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1489
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    .line 1491
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1492
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1493
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1494
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdatedConnectionState:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1495
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1496
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wasUnableToFindCurrentLocation:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private onPasscodePause()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x3e8

    .line 1885
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1886
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1887
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    .line 1889
    :cond_0
    sget-object v0, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1890
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    sput v0, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 1891
    new-instance v0, Lorg/telegram/ui/LaunchActivity$17;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LaunchActivity$17;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    .line 1905
    sget-boolean v0, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    if-eqz v0, :cond_2

    .line 1906
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1913
    :cond_1
    :goto_0
    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1914
    return-void

    .line 1907
    :cond_2
    sget v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    if-eqz v0, :cond_1

    .line 1908
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    sget v1, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    int-to-long v2, v1

    mul-long/2addr v2, v4

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 1911
    :cond_3
    sput v6, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    goto :goto_0
.end method

.method private onPasscodeResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1917
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1918
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1919
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    .line 1921
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1922
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->showPasscodeActivity()V

    .line 1924
    :cond_1
    sget v0, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    if-eqz v0, :cond_2

    .line 1925
    sput v1, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 1926
    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1928
    :cond_2
    return-void
.end method

.method private releaseService()V
    .locals 2

    .prologue
    .line 2300
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->connection:Lorg/telegram/ui/LaunchActivity$UpdateServiceConnection;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/LaunchActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2301
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/LaunchActivity;->connection:Lorg/telegram/ui/LaunchActivity$UpdateServiceConnection;

    .line 2302
    const-string/jumbo v0, "UpdateCheck"

    const-string/jumbo v1, "releaseService(): unbound."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    return-void
.end method

.method private runLinkRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;I)V
    .locals 21
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "sticker"    # Ljava/lang/String;
    .param p4, "botUser"    # Ljava/lang/String;
    .param p5, "botChat"    # Ljava/lang/String;
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "hasUrl"    # Z
    .param p8, "messageId"    # Ljava/lang/Integer;
    .param p9, "state"    # I

    .prologue
    .line 1094
    new-instance v5, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1095
    .local v5, "progressDialog":Landroid/app/ProgressDialog;
    const-string/jumbo v3, "Loading"

    const v4, 0x7f0702d1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1096
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1097
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1098
    const/16 v18, 0x0

    .line 1100
    .local v18, "requestId":I
    if-eqz p1, :cond_2

    .line 1101
    new-instance v16, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct/range {v16 .. v16}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 1102
    .local v16, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 1103
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    new-instance v3, Lorg/telegram/ui/LaunchActivity$7;

    move-object/from16 v4, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, p8

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/LaunchActivity$7;-><init>(Lorg/telegram/ui/LaunchActivity;Landroid/app/ProgressDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v18

    .line 1352
    .end local v16    # "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    :cond_0
    :goto_0
    if-eqz v18, :cond_1

    .line 1353
    move/from16 v17, v18

    .line 1354
    .local v17, "reqId":I
    const/4 v3, -0x2

    const-string/jumbo v4, "Cancel"

    const v6, 0x7f0700f2

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/LaunchActivity$11;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/LaunchActivity$11;-><init>(Lorg/telegram/ui/LaunchActivity;I)V

    invoke-virtual {v5, v3, v4, v6}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1365
    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 1367
    .end local v17    # "reqId":I
    :cond_1
    :goto_1
    return-void

    .line 1191
    :cond_2
    if-eqz p2, :cond_4

    .line 1192
    if-nez p9, :cond_3

    .line 1193
    new-instance v16, Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;

    invoke-direct/range {v16 .. v16}, Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;-><init>()V

    .line 1194
    .local v16, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;->hash:Ljava/lang/String;

    .line 1195
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v20

    new-instance v3, Lorg/telegram/ui/LaunchActivity$8;

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    invoke-direct/range {v3 .. v13}, Lorg/telegram/ui/LaunchActivity$8;-><init>(Lorg/telegram/ui/LaunchActivity;Landroid/app/ProgressDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;)V

    const/4 v4, 0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v18

    .line 1254
    goto :goto_0

    .end local v16    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;
    :cond_3
    const/4 v3, 0x1

    move/from16 v0, p9

    if-ne v0, v3, :cond_0

    .line 1255
    new-instance v16, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;

    invoke-direct/range {v16 .. v16}, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;-><init>()V

    .line 1256
    .local v16, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;->hash:Ljava/lang/String;

    .line 1257
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/LaunchActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lorg/telegram/ui/LaunchActivity$9;-><init>(Lorg/telegram/ui/LaunchActivity;Landroid/app/ProgressDialog;)V

    const/4 v6, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    .line 1310
    .end local v16    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;
    :cond_4
    if-eqz p3, :cond_5

    .line 1311
    sget-object v3, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1312
    new-instance v19, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    .line 1313
    .local v19, "stickerset":Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;->short_name:Ljava/lang/String;

    .line 1314
    sget-object v3, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    sget-object v4, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v4, Lorg/telegram/ui/Components/StickersAlert;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1, v6, v7}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 1317
    .end local v19    # "stickerset":Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;
    :cond_5
    if-eqz p6, :cond_0

    .line 1318
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 1319
    .local v14, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "onlySelect"

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1320
    new-instance v15, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v15, v14}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1321
    .local v15, "fragment":Lorg/telegram/ui/DialogsActivity;
    new-instance v3, Lorg/telegram/ui/LaunchActivity$10;

    move-object/from16 v0, p0

    move/from16 v1, p7

    move-object/from16 v2, p6

    invoke-direct {v3, v0, v1, v2}, Lorg/telegram/ui/LaunchActivity$10;-><init>(Lorg/telegram/ui/LaunchActivity;ZLjava/lang/String;)V

    invoke-virtual {v15, v3}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 1349
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3, v4}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    goto/16 :goto_0
.end method

.method private showPasscodeActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 512
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-nez v0, :cond_0

    .line 538
    :goto_0
    return-void

    .line 515
    :cond_0
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    .line 516
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 519
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onShow()V

    .line 520
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    .line 521
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 522
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    new-instance v1, Lorg/telegram/ui/LaunchActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LaunchActivity$6;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;->setDelegate(Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;)V

    goto :goto_0
.end method

.method private updateCurrentConnectionState()V
    .locals 3

    .prologue
    .line 1931
    const/4 v0, 0x0

    .line 1932
    .local v0, "text":Ljava/lang/String;
    iget v1, p0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1933
    const-string/jumbo v1, "WaitingForNetwork"

    const v2, 0x7f0704fd

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1939
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setTitleOverlayText(Ljava/lang/String;)V

    .line 1940
    return-void

    .line 1934
    :cond_1
    iget v1, p0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1935
    const-string/jumbo v1, "Connecting"

    const v2, 0x7f070177

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1936
    :cond_2
    iget v1, p0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1937
    const-string/jumbo v1, "Updating"

    const v2, 0x7f0704de

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 13
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const v12, 0x7f07039f

    const v11, 0x7f07009a

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1788
    sget v7, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    if-ne p1, v7, :cond_6

    .line 1789
    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    if-eqz v7, :cond_0

    .line 1790
    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->notifyDataSetChanged()V

    .line 1792
    :cond_0
    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v7, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1793
    .local v1, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    goto :goto_0

    .line 1795
    .end local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v7, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1796
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1797
    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v7, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1798
    .restart local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    goto :goto_1

    .line 1800
    .end local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v7, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1801
    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v7, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1802
    .restart local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    goto :goto_2

    .line 1804
    .end local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v7, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1806
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lorg/telegram/ui/IntroActivity;

    invoke-direct {v3, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1807
    .local v3, "intent2":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lorg/telegram/ui/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 1808
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 1809
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    .line 1882
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "intent2":Landroid/content/Intent;
    :cond_5
    :goto_3
    return-void

    .line 1810
    :cond_6
    sget v7, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I

    if-ne p1, v7, :cond_7

    .line 1811
    aget-object v7, p2, v8

    if-eq v7, p0, :cond_5

    .line 1812
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 1813
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    goto :goto_3

    .line 1815
    :cond_7
    sget v7, Lorg/telegram/messenger/NotificationCenter;->didUpdatedConnectionState:I

    if-ne p1, v7, :cond_8

    .line 1816
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v5

    .line 1817
    .local v5, "state":I
    iget v7, p0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    if-eq v7, v5, :cond_5

    .line 1818
    const-string/jumbo v7, "tmessages"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "switch to state "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    iput v5, p0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    .line 1820
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->updateCurrentConnectionState()V

    goto :goto_3

    .line 1822
    .end local v5    # "state":I
    :cond_8
    sget v7, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    if-ne p1, v7, :cond_9

    .line 1823
    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 1824
    :cond_9
    sget v7, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    if-ne p1, v7, :cond_e

    .line 1825
    aget-object v4, p2, v8

    check-cast v4, Ljava/lang/Integer;

    .line 1826
    .local v4, "reason":Ljava/lang/Integer;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1827
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v7, "AppName"

    invoke-static {v7, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1828
    const-string/jumbo v7, "OK"

    invoke-static {v7, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1829
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v10, :cond_a

    .line 1830
    const-string/jumbo v7, "MoreInfo"

    const v8, 0x7f070313

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/LaunchActivity$15;

    invoke-direct {v8, p0}, Lorg/telegram/ui/LaunchActivity$15;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1839
    :cond_a
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_c

    .line 1840
    const-string/jumbo v7, "NobodyLikesSpam1"

    const v8, 0x7f07034f

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1846
    :cond_b
    :goto_4
    sget-object v7, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1847
    sget-object v7, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    sget-object v8, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    .line 1841
    :cond_c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v9, :cond_d

    .line 1842
    const-string/jumbo v7, "NobodyLikesSpam2"

    const v8, 0x7f070350

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 1843
    :cond_d
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v10, :cond_b

    .line 1844
    aget-object v7, p2, v9

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 1849
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "reason":Ljava/lang/Integer;
    :cond_e
    sget v7, Lorg/telegram/messenger/NotificationCenter;->wasUnableToFindCurrentLocation:I

    if-ne p1, v7, :cond_5

    .line 1850
    aget-object v6, p2, v8

    check-cast v6, Ljava/util/HashMap;

    .line 1851
    .local v6, "waitingForLocation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/MessageObject;>;"
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1852
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v7, "AppName"

    invoke-static {v7, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1853
    const-string/jumbo v7, "OK"

    invoke-static {v7, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1854
    const-string/jumbo v7, "ShareYouLocationUnableManually"

    const v8, 0x7f07047b

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/LaunchActivity$16;

    invoke-direct {v8, p0, v6}, Lorg/telegram/ui/LaunchActivity$16;-><init>(Lorg/telegram/ui/LaunchActivity;Ljava/util/HashMap;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1877
    const-string/jumbo v7, "ShareYouLocationUnable"

    const v8, 0x7f07047a

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1878
    sget-object v7, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1879
    sget-object v7, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    sget-object v8, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3
.end method

.method public didSelectDialog(Lorg/telegram/ui/DialogsActivity;JZ)V
    .locals 20
    .param p1, "dialogsFragment"    # Lorg/telegram/ui/DialogsActivity;
    .param p2, "dialog_id"    # J
    .param p4, "param"    # Z

    .prologue
    .line 1402
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_2

    .line 1403
    move-wide/from16 v0, p2

    long-to-int v0, v0

    move/from16 v19, v0

    .line 1404
    .local v19, "lower_part":I
    const/16 v2, 0x20

    shr-long v2, p2, v2

    long-to-int v0, v2

    move/from16 v17, v0

    .line 1406
    .local v17, "high_id":I
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 1407
    .local v15, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "scrollToTopOnResume"

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1408
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1409
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1411
    :cond_0
    if-eqz v19, :cond_5

    .line 1412
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    .line 1413
    const-string/jumbo v2, "chat_id"

    move/from16 v0, v19

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1424
    :cond_1
    :goto_0
    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1480
    .end local v15    # "args":Landroid/os/Bundle;
    .end local v17    # "high_id":I
    .end local v19    # "lower_part":I
    :cond_2
    :goto_1
    return-void

    .line 1415
    .restart local v15    # "args":Landroid/os/Bundle;
    .restart local v17    # "high_id":I
    .restart local v19    # "lower_part":I
    :cond_3
    if-lez v19, :cond_4

    .line 1416
    const-string/jumbo v2, "user_id"

    move/from16 v0, v19

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1417
    :cond_4
    if-gez v19, :cond_1

    .line 1418
    const-string/jumbo v2, "chat_id"

    move/from16 v0, v19

    neg-int v3, v0

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1422
    :cond_5
    const-string/jumbo v2, "enc_id"

    move/from16 v0, v17

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1427
    :cond_6
    new-instance v16, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1429
    .local v16, "fragment":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 1430
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_a

    .line 1431
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1432
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1437
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    if-eqz p1, :cond_9

    const/4 v2, 0x1

    :goto_3
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v2, v4}, Lorg/telegram/ui/ChatActivity;->openVideoEditor(Ljava/lang/String;ZZ)Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz p1, :cond_7

    .line 1438
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1439
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/DialogsActivity;->finishFragment(Z)V

    .line 1473
    :cond_7
    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    .line 1474
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    .line 1475
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    .line 1476
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    .line 1477
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    .line 1478
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1434
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;I)Z

    goto :goto_2

    .line 1437
    :cond_9
    const/4 v2, 0x0

    goto :goto_3

    .line 1443
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz p1, :cond_b

    const/4 v2, 0x1

    move v3, v2

    :goto_5
    if-nez p1, :cond_c

    const/4 v2, 0x1

    :goto_6
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v3, v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1444
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-wide/from16 v11, p2

    invoke-static/range {v3 .. v13}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingVideo(Ljava/lang/String;JJIILorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;)V

    goto :goto_4

    .line 1443
    :cond_b
    const/4 v2, 0x0

    move v3, v2

    goto :goto_5

    :cond_c
    const/4 v2, 0x0

    goto :goto_6

    .line 1447
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz p1, :cond_13

    const/4 v2, 0x1

    move v3, v2

    :goto_7
    if-nez p1, :cond_14

    const/4 v2, 0x1

    :goto_8
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v3, v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1449
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    if-eqz v2, :cond_f

    .line 1450
    const/4 v7, 0x0

    .line 1451
    .local v7, "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 1452
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1453
    .restart local v7    # "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1454
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    .line 1456
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    const/4 v6, 0x0

    move-wide/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;)V

    .line 1459
    .end local v7    # "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 1460
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingText(Ljava/lang/String;J)V

    .line 1463
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    if-eqz v2, :cond_12

    .line 1464
    :cond_11
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/LaunchActivity;->documentsMimeType:Ljava/lang/String;

    const/4 v14, 0x0

    move-wide/from16 v12, p2

    invoke-static/range {v8 .. v14}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocuments(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;)V

    .line 1466
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1467
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$User;

    .line 1468
    .local v9, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide/from16 v10, p2

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_9

    .line 1447
    .end local v9    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v18    # "i$":Ljava/util/Iterator;
    :cond_13
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_7

    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_8
.end method

.method public fixLayout()V
    .locals 2

    .prologue
    .line 1584
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1608
    :cond_0
    :goto_0
    return-void

    .line 1587
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v0, :cond_0

    .line 1590
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/LaunchActivity$13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LaunchActivity$13;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public needAddFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z
    .locals 7
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2183
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2184
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    instance-of v2, p1, Lorg/telegram/ui/LoginActivity;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/telegram/ui/CountrySelectActivity;

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2, v3}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2185
    instance-of v2, p1, Lorg/telegram/ui/DialogsActivity;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 2186
    check-cast v1, Lorg/telegram/ui/DialogsActivity;

    .line 2187
    .local v1, "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->isMainDialogList()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p2, v2, :cond_8

    .line 2188
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 2189
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2190
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 2191
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 2192
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2193
    iget-boolean v2, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v2, :cond_0

    .line 2194
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2195
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2196
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2242
    .end local v1    # "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    :cond_0
    :goto_1
    return v4

    :cond_1
    move v2, v4

    .line 2184
    goto :goto_0

    .line 2201
    :cond_2
    instance-of v2, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_6

    .line 2202
    iget-boolean v2, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p2, v2, :cond_4

    .line 2203
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 2204
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2205
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 2206
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2207
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2208
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_3

    .line 2209
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2210
    add-int/lit8 v0, v0, -0x1

    .line 2208
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2212
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto :goto_1

    .line 2215
    .end local v0    # "a":I
    :cond_4
    iget-boolean v2, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p2, v2, :cond_8

    .line 2216
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2217
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2218
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_5

    .line 2219
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2220
    add-int/lit8 v0, v0, -0x1

    .line 2218
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2222
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto/16 :goto_1

    .line 2226
    .end local v0    # "a":I
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p2, v2, :cond_8

    .line 2227
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 2228
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2229
    instance-of v2, p1, Lorg/telegram/ui/LoginActivity;

    if-eqz v2, :cond_7

    .line 2230
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2231
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2232
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2236
    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1

    .line 2234
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_4

    :cond_8
    move v4, v3

    .line 2239
    goto/16 :goto_1

    .line 2241
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    instance-of v2, p1, Lorg/telegram/ui/LoginActivity;

    if-nez v2, :cond_a

    instance-of v2, p1, Lorg/telegram/ui/CountrySelectActivity;

    if-nez v2, :cond_a

    move v2, v3

    :goto_5
    invoke-virtual {v5, v2, v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    move v4, v3

    .line 2242
    goto/16 :goto_1

    :cond_a
    move v2, v4

    .line 2241
    goto :goto_5
.end method

.method public needCloseLastFragment(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z
    .locals 3
    .param p1, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2248
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2249
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p1, v2, :cond_0

    iget-object v2, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 2250
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 2251
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    .line 2269
    :goto_0
    return v0

    .line 2253
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p1, v2, :cond_2

    .line 2254
    iget-boolean v2, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v2, :cond_1

    .line 2255
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    move v0, v1

    .line 2269
    goto :goto_0

    .line 2257
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 2258
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 2259
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    goto :goto_0

    .line 2263
    :cond_3
    iget-object v2, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v1, :cond_1

    .line 2264
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 2265
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    goto :goto_0
.end method

.method public needLayout()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/high16 v10, 0x43a00000    # 320.0f

    const/4 v9, -0x1

    const/16 v7, 0x8

    const/4 v5, 0x0

    .line 1508
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1509
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1510
    .local v3, "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1511
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v6, v8, :cond_2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 1512
    .local v4, "y":I
    :goto_0
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v6, v8

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v4

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1513
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1516
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v11, :cond_9

    .line 1517
    :cond_0
    iput-boolean v5, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    .line 1518
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    div-int/lit8 v6, v6, 0x64

    mul-int/lit8 v2, v6, 0x23

    .line 1519
    .local v2, "leftWidth":I
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 1520
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 1523
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1524
    .restart local v3    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1525
    iput v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1526
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1528
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1529
    .restart local v3    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1530
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1532
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1533
    .restart local v3    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v2

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1534
    iput v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1535
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1536
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1538
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v6, v11, :cond_4

    .line 1539
    const/4 v0, 0x1

    .local v0, "a":I
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 1540
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1541
    .local v1, "chatFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 1542
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1543
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1544
    add-int/lit8 v0, v0, -0x1

    .line 1539
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "a":I
    .end local v1    # "chatFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    .end local v2    # "leftWidth":I
    .end local v4    # "y":I
    :cond_2
    move v4, v5

    .line 1511
    goto/16 :goto_0

    .line 1546
    .restart local v0    # "a":I
    .restart local v2    # "leftWidth":I
    .restart local v4    # "y":I
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/PasscodeView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_4

    .line 1547
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1548
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1552
    .end local v0    # "a":I
    :cond_4
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v7

    :goto_2
    invoke-virtual {v8, v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 1553
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/widget/ImageView;

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v5

    :goto_3
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1554
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v8, v8, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    :goto_4
    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1581
    .end local v2    # "leftWidth":I
    .end local v3    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "y":I
    :cond_5
    :goto_5
    return-void

    .restart local v2    # "leftWidth":I
    .restart local v3    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4    # "y":I
    :cond_6
    move v6, v5

    .line 1552
    goto :goto_2

    :cond_7
    move v6, v7

    .line 1553
    goto :goto_3

    :cond_8
    move v5, v7

    .line 1554
    goto :goto_4

    .line 1556
    .end local v2    # "leftWidth":I
    :cond_9
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    .line 1558
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1559
    .restart local v3    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1560
    iput v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1561
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1563
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1564
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 1565
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/widget/ImageView;

    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v8, v8, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    :goto_6
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1567
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1568
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_7
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 1569
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1570
    .restart local v1    # "chatFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 1571
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1572
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1573
    add-int/lit8 v0, v0, -0x1

    .line 1568
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .end local v0    # "a":I
    .end local v1    # "chatFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_a
    move v7, v5

    .line 1565
    goto :goto_6

    .line 1575
    .restart local v0    # "a":I
    :cond_b
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/PasscodeView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_5

    .line 1576
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    goto :goto_5
.end method

.method public needPresentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/ui/ActionBar/ActionBarLayout;)Z
    .locals 8
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "removeLast"    # Z
    .param p3, "forceWithoutAnimation"    # Z
    .param p4, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2094
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2095
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    instance-of v3, p1, Lorg/telegram/ui/LoginActivity;

    if-nez v3, :cond_1

    instance-of v3, p1, Lorg/telegram/ui/CountrySelectActivity;

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3, v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2096
    instance-of v3, p1, Lorg/telegram/ui/DialogsActivity;

    if-eqz v3, :cond_2

    move-object v1, p1

    .line 2097
    check-cast v1, Lorg/telegram/ui/DialogsActivity;

    .line 2098
    .local v1, "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->isMainDialogList()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p4, v3, :cond_2

    .line 2099
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 2100
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1, p2, p3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 2101
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 2102
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 2103
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2104
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v3, :cond_0

    .line 2105
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2106
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2107
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2177
    .end local v1    # "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    :cond_0
    :goto_1
    return v5

    :cond_1
    move v3, v5

    .line 2095
    goto :goto_0

    .line 2113
    :cond_2
    instance-of v3, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_17

    .line 2114
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p4, v3, :cond_4

    :cond_3
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p4, v3, :cond_b

    .line 2115
    :cond_4
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p4, v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v4, :cond_6

    :cond_5
    move v2, v4

    .line 2116
    .local v2, "result":Z
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 2117
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_7

    .line 2118
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2119
    add-int/lit8 v0, v0, -0x1

    .line 2117
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "a":I
    .end local v2    # "result":Z
    :cond_6
    move v2, v5

    .line 2115
    goto :goto_2

    .line 2121
    .restart local v0    # "a":I
    .restart local v2    # "result":Z
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez p3, :cond_a

    :goto_4
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    .line 2123
    .end local v0    # "a":I
    :cond_8
    if-nez v2, :cond_9

    .line 2124
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1, v5, p3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    :cond_9
    move v5, v2

    .line 2126
    goto :goto_1

    .restart local v0    # "a":I
    :cond_a
    move v4, v5

    .line 2121
    goto :goto_4

    .line 2127
    .end local v0    # "a":I
    .end local v2    # "result":Z
    :cond_b
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v3, :cond_e

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p4, v3, :cond_e

    .line 2128
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 2129
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2130
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 2131
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1, p2, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 2132
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2133
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_5
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_c

    .line 2134
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2135
    add-int/lit8 v0, v0, -0x1

    .line 2133
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2137
    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez p3, :cond_d

    :goto_6
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto/16 :goto_1

    :cond_d
    move v4, v5

    goto :goto_6

    .line 2140
    .end local v0    # "a":I
    :cond_e
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-eqz v3, :cond_12

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p4, v3, :cond_12

    .line 2141
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v4, :cond_f

    move v3, v4

    :goto_7
    invoke-virtual {v6, p1, v3, p3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 2142
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2143
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_8
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_10

    .line 2144
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2145
    add-int/lit8 v0, v0, -0x1

    .line 2143
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .end local v0    # "a":I
    :cond_f
    move v3, v5

    .line 2141
    goto :goto_7

    .line 2147
    .restart local v0    # "a":I
    :cond_10
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez p3, :cond_11

    :goto_9
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto/16 :goto_1

    :cond_11
    move v4, v5

    goto :goto_9

    .line 2151
    .end local v0    # "a":I
    :cond_12
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    .line 2152
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_a
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_13

    .line 2153
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2154
    add-int/lit8 v0, v0, -0x1

    .line 2152
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2156
    :cond_13
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez p3, :cond_15

    move v3, v4

    :goto_b
    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    .line 2158
    .end local v0    # "a":I
    :cond_14
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v4, :cond_16

    :goto_c
    invoke-virtual {v3, p1, v4, p3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    goto/16 :goto_1

    .restart local v0    # "a":I
    :cond_15
    move v3, v5

    .line 2156
    goto :goto_b

    .end local v0    # "a":I
    :cond_16
    move v4, v5

    .line 2158
    goto :goto_c

    .line 2161
    :cond_17
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p4, v3, :cond_19

    .line 2162
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 2163
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2164
    instance-of v3, p1, Lorg/telegram/ui/LoginActivity;

    if-eqz v3, :cond_18

    .line 2165
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2166
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2167
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2171
    :goto_d
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1, p2, p3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    goto/16 :goto_1

    .line 2169
    :cond_18
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    const/high16 v4, 0x7f000000

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_d

    :cond_19
    move v5, v4

    .line 2174
    goto/16 :goto_1

    .line 2176
    :cond_1a
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    instance-of v3, p1, Lorg/telegram/ui/LoginActivity;

    if-nez v3, :cond_1b

    instance-of v3, p1, Lorg/telegram/ui/CountrySelectActivity;

    if-nez v3, :cond_1b

    move v3, v4

    :goto_e
    invoke-virtual {v6, v3, v5}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    move v5, v4

    .line 2177
    goto/16 :goto_1

    :cond_1b
    move v3, v5

    .line 2176
    goto :goto_e
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 2043
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 2044
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2052
    :cond_0
    :goto_0
    return-void

    .line 2047
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeFinished(Ljava/lang/Object;)V

    .line 2048
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2049
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeFinished(Ljava/lang/Object;)V

    .line 2050
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeFinished(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 2030
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 2031
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2039
    :cond_0
    :goto_0
    return-void

    .line 2034
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeStarted(Ljava/lang/Object;)V

    .line 2035
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2036
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeStarted(Ljava/lang/Object;)V

    .line 2037
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeStarted(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 1612
    sget-object v1, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    if-eqz v1, :cond_0

    .line 1613
    sput v2, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 1614
    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1616
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1617
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1618
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1619
    .local v0, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 1621
    .end local v0    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1622
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1623
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1624
    .restart local v0    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 1626
    .end local v0    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1627
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1628
    .restart local v0    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 1631
    .end local v0    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_3
    return-void
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1992
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/PasscodeView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 1993
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    .line 2016
    :cond_0
    :goto_0
    return-void

    .line 1996
    :cond_1
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1997
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto :goto_0

    .line 1998
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isDrawerOpened()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1999
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto :goto_0

    .line 2000
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2001
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 2002
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onBackPressed()V

    goto :goto_0

    .line 2004
    :cond_4
    const/4 v0, 0x0

    .line 2005
    .local v0, "cancel":Z
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2006
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2007
    .local v1, "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v4

    if-nez v4, :cond_6

    move v0, v2

    .line 2009
    .end local v1    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_5
    :goto_1
    if-nez v0, :cond_0

    .line 2010
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onBackPressed()V

    goto :goto_0

    .restart local v1    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_6
    move v0, v3

    .line 2007
    goto :goto_1

    .line 2014
    .end local v0    # "cancel":Z
    .end local v1    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1780
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->checkDisplaySize()V

    .line 1781
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1782
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->fixLayout()V

    .line 1783
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 31
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 144
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->initService()V

    .line 146
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    .line 147
    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/NativeCrashManager;->handleDumpFiles(Landroid/app/Activity;)V

    .line 149
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v26

    if-nez v26, :cond_2

    .line 150
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 151
    .local v12, "intent":Landroid/content/Intent;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_1

    const-string/jumbo v26, "android.intent.action.SEND"

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_0

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 152
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    .line 509
    .end local v12    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 156
    .restart local v12    # "intent":Landroid/content/Intent;
    :cond_1
    if-eqz v12, :cond_2

    const-string/jumbo v26, "fromIntro"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v26

    if-nez v26, :cond_2

    .line 157
    sget-object v26, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v27, "logininfo2"

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 158
    .local v18, "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v24

    .line 159
    .local v24, "state":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_2

    .line 160
    new-instance v13, Landroid/content/Intent;

    const-class v26, Lorg/telegram/ui/IntroActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .local v13, "intent2":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/telegram/ui/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 162
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    goto :goto_0

    .line 169
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "intent2":Landroid/content/Intent;
    .end local v18    # "preferences":Landroid/content/SharedPreferences;
    .end local v24    # "state":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_2
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->requestWindowFeature(I)Z

    .line 170
    const v26, 0x7f0a0086

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->setTheme(I)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v26

    const v27, 0x7f0202b2

    invoke-virtual/range {v26 .. v27}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 173
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 174
    invoke-static/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/Theme;->loadRecources(Landroid/content/Context;)V

    .line 176
    sget-object v26, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    if-eqz v26, :cond_3

    sget-boolean v26, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    if-eqz v26, :cond_3

    .line 177
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v26

    sput v26, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 180
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const-string/jumbo v27, "status_bar_height"

    const-string/jumbo v28, "dimen"

    const-string/jumbo v29, "android"

    invoke-virtual/range {v26 .. v29}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 181
    .local v21, "resourceId":I
    if-lez v21, :cond_4

    .line 182
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    sput v26, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 185
    :cond_4
    new-instance v26, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 187
    new-instance v26, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v26, v0

    new-instance v27, Landroid/view/ViewGroup$LayoutParams;

    const/16 v28, -0x1

    const/16 v29, -0x1

    invoke-direct/range {v27 .. v29}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v26

    if-eqz v26, :cond_7

    .line 191
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v26

    const/16 v27, 0x10

    invoke-virtual/range {v26 .. v27}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 193
    new-instance v14, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 194
    .local v14, "launchLayout":Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->addView(Landroid/view/View;)V

    .line 195
    invoke-virtual {v14}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout$LayoutParams;

    .line 196
    .local v16, "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 197
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 198
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    new-instance v26, Landroid/widget/ImageView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/widget/ImageView;

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    sget-object v27, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    const v27, 0x7f0200a2

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout$LayoutParams;

    .line 205
    .local v20, "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 206
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .end local v20    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v20, Landroid/widget/RelativeLayout$LayoutParams;

    .line 211
    .restart local v20    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 212
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    new-instance v26, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .end local v20    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v20, Landroid/widget/RelativeLayout$LayoutParams;

    .line 218
    .restart local v20    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v26, 0x43a00000    # 320.0f

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 219
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    sget-object v27, Lorg/telegram/ui/LaunchActivity;->rightFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual/range {v26 .. v27}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->init(Ljava/util/ArrayList;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;)V

    .line 224
    new-instance v26, Landroid/widget/FrameLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    const v27, 0x40295274

    invoke-virtual/range {v26 .. v27}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .end local v20    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v20, Landroid/widget/RelativeLayout$LayoutParams;

    .line 228
    .restart local v20    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v26, 0x3f800000    # 1.0f

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 229
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    new-instance v26, Landroid/widget/FrameLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    const/high16 v27, 0x7f000000

    invoke-virtual/range {v26 .. v27}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .end local v20    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v20, Landroid/widget/RelativeLayout$LayoutParams;

    .line 237
    .restart local v20    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 238
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    new-instance v27, Lorg/telegram/ui/LaunchActivity$1;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/LaunchActivity$1;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual/range {v26 .. v27}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    new-instance v27, Lorg/telegram/ui/LaunchActivity$2;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/LaunchActivity$2;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual/range {v26 .. v27}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    new-instance v26, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setRemoveActionBarExtraHeight(Z)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setBackgroundView(Landroid/view/View;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setUseAlphaAnimations(Z)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    const v27, 0x7f02008e

    invoke-virtual/range {v26 .. v27}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setBackgroundResource(I)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .end local v20    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v20, Landroid/widget/RelativeLayout$LayoutParams;

    .line 282
    .restart local v20    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const v26, 0x44048000    # 530.0f

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 283
    const/high16 v26, 0x44040000    # 528.0f

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    sget-object v27, Lorg/telegram/ui/LaunchActivity;->layerFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual/range {v26 .. v27}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->init(Ljava/util/ArrayList;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDrawerLayoutContainer(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 293
    .end local v14    # "launchLayout":Landroid/widget/RelativeLayout;
    .end local v16    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    .end local v20    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    new-instance v17, Lorg/telegram/ui/LaunchActivity$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity$3;-><init>(Lorg/telegram/ui/LaunchActivity;Landroid/content/Context;)V

    .line 299
    .local v17, "listView":Landroid/widget/ListView;
    const/16 v26, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 300
    new-instance v26, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 301
    const/16 v26, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 302
    const/16 v26, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 303
    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 304
    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setDrawerLayout(Landroid/view/ViewGroup;)V

    .line 306
    invoke-virtual/range {v17 .. v17}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 307
    .local v15, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v22

    .line 308
    .local v22, "screenSize":Landroid/graphics/Point;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v26

    if-eqz v26, :cond_8

    const/high16 v26, 0x43a00000    # 320.0f

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v26

    :goto_2
    move/from16 v0, v26

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 309
    const/16 v26, -0x1

    move/from16 v0, v26

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 310
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    new-instance v26, Lorg/telegram/ui/LaunchActivity$4;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/LaunchActivity$4;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setParentActionBarLayout(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDrawerLayoutContainer(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    sget-object v27, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual/range {v26 .. v27}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->init(Ljava/util/ArrayList;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;)V

    .line 389
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->loadWallpaper()V

    .line 391
    new-instance v26, Lorg/telegram/ui/Components/PasscodeView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->addView(Landroid/view/View;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/ui/Components/PasscodeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout$LayoutParams;

    .line 394
    .restart local v16    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 395
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v26

    sget v27, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object p0, v28, v29

    invoke-virtual/range {v26 .. v28}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 399
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    .line 401
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v26

    sget v27, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 402
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v26

    sget v27, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 403
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v26

    sget v27, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 404
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v26

    sget v27, Lorg/telegram/messenger/NotificationCenter;->didUpdatedConnectionState:I

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 405
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v26

    sget v27, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 406
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v26

    sget v27, Lorg/telegram/messenger/NotificationCenter;->wasUnableToFindCurrentLocation:I

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_a

    .line 409
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v26

    if-nez v26, :cond_9

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    new-instance v27, Lorg/telegram/ui/LoginActivity;

    invoke-direct/range {v27 .. v27}, Lorg/telegram/ui/LoginActivity;-><init>()V

    invoke-virtual/range {v26 .. v27}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 418
    :goto_3
    if-eqz p1, :cond_6

    .line 419
    :try_start_0
    const-string/jumbo v26, "fragment"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 420
    .local v10, "fragmentName":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 421
    const-string/jumbo v26, "args"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 422
    .local v6, "args":Landroid/os/Bundle;
    const/16 v26, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v27

    sparse-switch v27, :sswitch_data_0

    :cond_5
    :goto_4
    packed-switch v26, :pswitch_data_0

    .line 495
    .end local v6    # "args":Landroid/os/Bundle;
    .end local v10    # "fragmentName":Ljava/lang/String;
    :cond_6
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const/16 v28, 0x0

    if-eqz p1, :cond_e

    const/16 v26, 0x1

    :goto_6
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v26

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/LaunchActivity;->handleIntent(Landroid/content/Intent;ZZZ)Z

    .line 496
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->needLayout()V

    .line 498
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v25

    .line 499
    .local v25, "view":Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v26

    new-instance v27, Lorg/telegram/ui/LaunchActivity$5;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity$5;-><init>(Lorg/telegram/ui/LaunchActivity;Landroid/view/View;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual/range {v26 .. v27}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_0

    .line 290
    .end local v15    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v16    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    .end local v17    # "listView":Landroid/widget/ListView;
    .end local v22    # "screenSize":Landroid/graphics/Point;
    .end local v25    # "view":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v27, v0

    new-instance v28, Landroid/view/ViewGroup$LayoutParams;

    const/16 v29, -0x1

    const/16 v30, -0x1

    invoke-direct/range {v28 .. v30}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v26 .. v28}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 308
    .restart local v15    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v17    # "listView":Landroid/widget/ListView;
    .restart local v22    # "screenSize":Landroid/graphics/Point;
    :cond_8
    const/high16 v26, 0x43a00000    # 320.0f

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v26

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(II)I

    move-result v27

    const/high16 v28, 0x42600000    # 56.0f

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v28

    sub-int v27, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v26

    goto/16 :goto_2

    .line 413
    .restart local v16    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    new-instance v27, Lorg/telegram/ui/DialogsActivity;

    const/16 v28, 0x0

    invoke-direct/range {v27 .. v28}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual/range {v26 .. v27}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_3

    .line 422
    .restart local v6    # "args":Landroid/os/Bundle;
    .restart local v10    # "fragmentName":Ljava/lang/String;
    :sswitch_0
    :try_start_1
    const-string/jumbo v27, "chat"

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    const/16 v26, 0x0

    goto/16 :goto_4

    :sswitch_1
    const-string/jumbo v27, "settings"

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    const/16 v26, 0x1

    goto/16 :goto_4

    :sswitch_2
    const-string/jumbo v27, "group"

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    const/16 v26, 0x2

    goto/16 :goto_4

    :sswitch_3
    const-string/jumbo v27, "channel"

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    const/16 v26, 0x3

    goto/16 :goto_4

    :sswitch_4
    const-string/jumbo v27, "edit"

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    const/16 v26, 0x4

    goto/16 :goto_4

    :sswitch_5
    const-string/jumbo v27, "chat_profile"

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    const/16 v26, 0x5

    goto/16 :goto_4

    :sswitch_6
    const-string/jumbo v27, "wallpapers"

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    const/16 v26, 0x6

    goto/16 :goto_4

    .line 424
    :pswitch_0
    if-eqz v6, :cond_6

    .line 425
    new-instance v8, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v8, v6}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 426
    .local v8, "chat":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 427
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ChatActivity;->restoreSelfArgs(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 478
    .end local v6    # "args":Landroid/os/Bundle;
    .end local v8    # "chat":Lorg/telegram/ui/ChatActivity;
    .end local v10    # "fragmentName":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 479
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v26, "tmessages"

    move-object/from16 v0, v26

    invoke-static {v0, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 432
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "args":Landroid/os/Bundle;
    .restart local v10    # "fragmentName":Ljava/lang/String;
    :pswitch_1
    :try_start_2
    new-instance v23, Lorg/telegram/ui/SettingsActivity;

    invoke-direct/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;-><init>()V

    .line 433
    .local v23, "settings":Lorg/telegram/ui/SettingsActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 434
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SettingsActivity;->restoreSelfArgs(Landroid/os/Bundle;)V

    goto/16 :goto_5

    .line 438
    .end local v23    # "settings":Lorg/telegram/ui/SettingsActivity;
    :pswitch_2
    if-eqz v6, :cond_6

    .line 439
    new-instance v11, Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-direct {v11, v6}, Lorg/telegram/ui/GroupCreateFinalActivity;-><init>(Landroid/os/Bundle;)V

    .line 440
    .local v11, "group":Lorg/telegram/ui/GroupCreateFinalActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 441
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lorg/telegram/ui/GroupCreateFinalActivity;->restoreSelfArgs(Landroid/os/Bundle;)V

    goto/16 :goto_5

    .line 446
    .end local v11    # "group":Lorg/telegram/ui/GroupCreateFinalActivity;
    :pswitch_3
    if-eqz v6, :cond_6

    .line 447
    new-instance v7, Lorg/telegram/ui/ChannelCreateActivity;

    invoke-direct {v7, v6}, Lorg/telegram/ui/ChannelCreateActivity;-><init>(Landroid/os/Bundle;)V

    .line 448
    .local v7, "channel":Lorg/telegram/ui/ChannelCreateActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 449
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ChannelCreateActivity;->restoreSelfArgs(Landroid/os/Bundle;)V

    goto/16 :goto_5

    .line 454
    .end local v7    # "channel":Lorg/telegram/ui/ChannelCreateActivity;
    :pswitch_4
    if-eqz v6, :cond_6

    .line 455
    new-instance v7, Lorg/telegram/ui/ChannelEditActivity;

    invoke-direct {v7, v6}, Lorg/telegram/ui/ChannelEditActivity;-><init>(Landroid/os/Bundle;)V

    .line 456
    .local v7, "channel":Lorg/telegram/ui/ChannelEditActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 457
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ChannelEditActivity;->restoreSelfArgs(Landroid/os/Bundle;)V

    goto/16 :goto_5

    .line 462
    .end local v7    # "channel":Lorg/telegram/ui/ChannelEditActivity;
    :pswitch_5
    if-eqz v6, :cond_6

    .line 463
    new-instance v19, Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    .line 464
    .local v19, "profile":Lorg/telegram/ui/ProfileActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 465
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->restoreSelfArgs(Landroid/os/Bundle;)V

    goto/16 :goto_5

    .line 470
    .end local v19    # "profile":Lorg/telegram/ui/ProfileActivity;
    :pswitch_6
    new-instance v23, Lorg/telegram/ui/WallpapersActivity;

    invoke-direct/range {v23 .. v23}, Lorg/telegram/ui/WallpapersActivity;-><init>()V

    .line 471
    .local v23, "settings":Lorg/telegram/ui/WallpapersActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 472
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/WallpapersActivity;->restoreSelfArgs(Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    .line 482
    .end local v6    # "args":Landroid/os/Bundle;
    .end local v10    # "fragmentName":Ljava/lang/String;
    .end local v23    # "settings":Lorg/telegram/ui/WallpapersActivity;
    :cond_a
    const/4 v5, 0x1

    .line 483
    .local v5, "allowOpen":Z
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v26

    if-eqz v26, :cond_b

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_d

    const/4 v5, 0x1

    .line 485
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Lorg/telegram/ui/LoginActivity;

    move/from16 v26, v0

    if-eqz v26, :cond_b

    .line 486
    const/4 v5, 0x0

    .line 489
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Lorg/telegram/ui/LoginActivity;

    move/from16 v26, v0

    if-eqz v26, :cond_c

    .line 490
    const/4 v5, 0x0

    .line 492
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_5

    .line 484
    :cond_d
    const/4 v5, 0x0

    goto :goto_7

    .line 495
    .end local v5    # "allowOpen":Z
    :cond_e
    const/16 v26, 0x0

    goto/16 :goto_6

    .line 422
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5b244d4f -> :sswitch_6
        -0x5070143e -> :sswitch_5
        0x2e9358 -> :sswitch_0
        0x2f6e0a -> :sswitch_4
        0x5e0f67f -> :sswitch_2
        0x2c0b7d03 -> :sswitch_3
        0x5582bc23 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 1726
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->releaseService()V

    .line 1728
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoViewer;->destroyPhotoViewer()V

    .line 1729
    invoke-static {}, Lorg/telegram/ui/SecretPhotoViewer;->getInstance()Lorg/telegram/ui/SecretPhotoViewer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/SecretPhotoViewer;->destroyPhotoViewer()V

    .line 1730
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/StickerPreviewViewer;->destroy()V

    .line 1732
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 1733
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1734
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1740
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v2, :cond_1

    .line 1741
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 1742
    .local v1, "view":Landroid/view/View;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_2

    .line 1743
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1751
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1752
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 1753
    return-void

    .line 1736
    :catch_0
    move-exception v0

    .line 1737
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1745
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "view":Landroid/view/View;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1748
    .end local v1    # "view":Landroid/view/View;
    :catch_1
    move-exception v0

    .line 1749
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 2065
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-nez v0, :cond_0

    .line 2066
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2067
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2068
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 2089
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 2069
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2070
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 2072
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 2075
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 2076
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isDrawerOpened()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2077
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2078
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 2080
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->openDrawer(Z)V

    goto :goto_0

    .line 2082
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto :goto_0

    .line 2085
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 2020
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 2021
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onLowMemory()V

    .line 2022
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2023
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onLowMemory()V

    .line 2024
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onLowMemory()V

    .line 2026
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 1396
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1397
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/telegram/ui/LaunchActivity;->handleIntent(Landroid/content/Intent;ZZZ)Z

    .line 1398
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1693
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1694
    sput-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    .line 1695
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onPasscodePause()V

    .line 1696
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onPause()V

    .line 1697
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1698
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onPause()V

    .line 1699
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onPause()V

    .line 1701
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-eqz v0, :cond_1

    .line 1702
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onPause()V

    .line 1704
    :cond_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 1705
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->unregisterUpdates()V

    .line 1706
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1707
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->onPause()V

    .line 1709
    :cond_2
    return-void
.end method

.method public onPreIme()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2056
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2057
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 2060
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onRebuildAllFragments(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V
    .locals 2
    .param p1, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    const/4 v1, 0x1

    .line 2274
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2275
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p1, v0, :cond_0

    .line 2276
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(Z)V

    .line 2277
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 2278
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(Z)V

    .line 2279
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 2282
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->notifyDataSetChanged()V

    .line 2283
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 1635
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1636
    if-eq p1, v7, :cond_0

    if-eq p1, v5, :cond_0

    if-ne p1, v6, :cond_7

    .line 1637
    :cond_0
    array-length v2, p3

    if-lez v2, :cond_3

    aget v2, p3, v4

    if-nez v2, :cond_3

    .line 1638
    if-ne p1, v5, :cond_2

    .line 1639
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageLoader;->checkMediaPaths()V

    .line 1689
    :cond_1
    :goto_0
    return-void

    .line 1640
    :cond_2
    if-ne p1, v6, :cond_1

    .line 1641
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ContactsController;->readContacts()V

    goto :goto_0

    .line 1645
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1646
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "AppName"

    const v3, 0x7f07009a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1647
    if-ne p1, v7, :cond_5

    .line 1648
    const-string/jumbo v2, "PermissionNoAudio"

    const v3, 0x7f0703d0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1654
    :cond_4
    :goto_1
    const-string/jumbo v2, "PermissionOpenSettings"

    const v3, 0x7f0703d3

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LaunchActivity$14;

    invoke-direct {v3, p0}, Lorg/telegram/ui/LaunchActivity$14;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1667
    const-string/jumbo v2, "OK"

    const v3, 0x7f07039f

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1668
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1649
    :cond_5
    if-ne p1, v5, :cond_6

    .line 1650
    const-string/jumbo v2, "PermissionStorage"

    const v3, 0x7f0703d4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1651
    :cond_6
    if-ne p1, v6, :cond_4

    .line 1652
    const-string/jumbo v2, "PermissionContacts"

    const v3, 0x7f0703cf

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1670
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_7
    const/4 v2, 0x2

    if-ne p1, v2, :cond_8

    .line 1671
    array-length v2, p3

    if-lez v2, :cond_8

    aget v2, p3, v4

    if-nez v2, :cond_8

    .line 1672
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1675
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_9

    .line 1676
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1677
    .local v1, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V

    .line 1679
    .end local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_9
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1680
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_a

    .line 1681
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1682
    .restart local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V

    .line 1684
    .end local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1685
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1686
    .restart local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1757
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1758
    sput-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    .line 1759
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onPasscodeResume()V

    .line 1760
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1761
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onResume()V

    .line 1762
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1763
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onResume()V

    .line 1764
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onResume()V

    .line 1769
    :cond_0
    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->checkForCrashes(Landroid/app/Activity;)V

    .line 1770
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->checkForUpdates(Landroid/app/Activity;)V

    .line 1771
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 1772
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->updateCurrentConnectionState()V

    .line 1773
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1774
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->onResume()V

    .line 1776
    :cond_1
    return-void

    .line 1767
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onResume()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1945
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1946
    const/4 v3, 0x0

    .line 1947
    .local v3, "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1948
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1949
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1961
    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    .line 1962
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 1963
    .local v1, "args":Landroid/os/Bundle;
    instance-of v4, v3, Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    .line 1964
    const-string/jumbo v4, "args"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1965
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "chat"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    :cond_1
    :goto_1
    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->saveSelfArgs(Landroid/os/Bundle;)V

    .line 1988
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_2
    :goto_2
    return-void

    .line 1950
    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1951
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    goto :goto_0

    .line 1952
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1953
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    goto :goto_0

    .line 1956
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1957
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    goto :goto_0

    .line 1966
    .restart local v1    # "args":Landroid/os/Bundle;
    :cond_6
    instance-of v4, v3, Lorg/telegram/ui/SettingsActivity;

    if-eqz v4, :cond_7

    .line 1967
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "settings"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1985
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :catch_0
    move-exception v2

    .line 1986
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1968
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "args":Landroid/os/Bundle;
    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_7
    :try_start_1
    instance-of v4, v3, Lorg/telegram/ui/GroupCreateFinalActivity;

    if-eqz v4, :cond_8

    if-eqz v1, :cond_8

    .line 1969
    const-string/jumbo v4, "args"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1970
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "group"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1971
    :cond_8
    instance-of v4, v3, Lorg/telegram/ui/WallpapersActivity;

    if-eqz v4, :cond_9

    .line 1972
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "wallpapers"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1973
    :cond_9
    instance-of v4, v3, Lorg/telegram/ui/ProfileActivity;

    if-eqz v4, :cond_a

    move-object v0, v3

    check-cast v0, Lorg/telegram/ui/ProfileActivity;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/telegram/ui/ProfileActivity;->isChat()Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v1, :cond_a

    .line 1974
    const-string/jumbo v4, "args"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1975
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "chat_profile"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1976
    :cond_a
    instance-of v4, v3, Lorg/telegram/ui/ChannelCreateActivity;

    if-eqz v4, :cond_b

    if-eqz v1, :cond_b

    const-string/jumbo v4, "step"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_b

    .line 1977
    const-string/jumbo v4, "args"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1978
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "channel"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1979
    :cond_b
    instance-of v4, v3, Lorg/telegram/ui/ChannelEditActivity;

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 1980
    const-string/jumbo v4, "args"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1981
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "edit"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 1713
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1714
    invoke-static {p0}, Lorg/telegram/messenger/browser/Browser;->bindCustomTabsService(Landroid/app/Activity;)V

    .line 1715
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 1719
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1720
    invoke-static {p0}, Lorg/telegram/messenger/browser/Browser;->unbindCustomTabsService(Landroid/app/Activity;)V

    .line 1721
    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 1500
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1501
    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z
    .locals 2
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "removeLast"    # Z
    .param p3, "forceWithoutAnimation"    # Z

    .prologue
    .line 1504
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v0

    return v0
.end method

.method public showAlertDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v1, 0x0

    .line 1371
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 1372
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1373
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Landroid/app/AlertDialog;

    .line 1380
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Landroid/app/AlertDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1381
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Landroid/app/AlertDialog;

    new-instance v3, Lorg/telegram/ui/LaunchActivity$12;

    invoke-direct {v3, p0}, Lorg/telegram/ui/LaunchActivity$12;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1387
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Landroid/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1391
    :goto_1
    return-object v1

    .line 1375
    :catch_0
    move-exception v0

    .line 1376
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1388
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1389
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
