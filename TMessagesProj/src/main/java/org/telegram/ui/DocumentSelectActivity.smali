.class public Lorg/telegram/ui/DocumentSelectActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "DocumentSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;,
        Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;,
        Lorg/telegram/ui/DocumentSelectActivity$ListItem;,
        Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;
    }
.end annotation


# static fields
.field private static final done:I = 0x3


# instance fields
.field private actionModeViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private currentDir:Ljava/io/File;

.field private delegate:Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;

.field private emptyView:Landroid/widget/TextView;

.field private history:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/DocumentSelectActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private listAdapter:Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

.field private listView:Landroid/widget/ListView;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private receiverRegistered:Z

.field private scrolling:Z

.field private selectedFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/DocumentSelectActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

.field private sizeLimit:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->receiverRegistered:Z

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;

    .line 73
    const-wide/32 v0, 0x60000000

    iput-wide v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->sizeLimit:J

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedFiles:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionModeViews:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Lorg/telegram/ui/DocumentSelectActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/DocumentSelectActivity$1;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 632
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->currentDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/DocumentSelectActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/telegram/ui/DocumentSelectActivity;->listRoots()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/DocumentSelectActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/telegram/ui/DocumentSelectActivity;->showErrorBox(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/DocumentSelectActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 57
    iget-wide v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->sizeLimit:J

    return-wide v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/Components/NumberTextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionModeViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/DocumentSelectActivity;Ljava/io/File;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/telegram/ui/DocumentSelectActivity;->listFiles(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/DocumentSelectActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/telegram/ui/DocumentSelectActivity;->fixLayoutInternal()V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/DocumentSelectActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedFiles:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->delegate:Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/DocumentSelectActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->scrolling:Z

    return v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/DocumentSelectActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lorg/telegram/ui/DocumentSelectActivity;->scrolling:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method private fixLayoutInternal()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    if-nez v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 372
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 373
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    goto :goto_0

    .line 375
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    goto :goto_0
.end method

.method private getRootSubtitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 619
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 620
    .local v1, "stat":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v8, v8

    mul-long v4, v6, v8

    .line 621
    .local v4, "total":J
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v8, v8

    mul-long v2, v6, v8

    .line 622
    .local v2, "free":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 623
    const-string/jumbo p1, ""

    .line 629
    .end local v1    # "stat":Landroid/os/StatFs;
    .end local v2    # "free":J
    .end local v4    # "total":J
    .end local p1    # "path":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 625
    .restart local v1    # "stat":Landroid/os/StatFs;
    .restart local v2    # "free":J
    .restart local v4    # "total":J
    .restart local p1    # "path":Ljava/lang/String;
    :cond_0
    const-string/jumbo v6, "FreeOfTotal"

    const v7, 0x7f070240

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 626
    .end local v1    # "stat":Landroid/os/StatFs;
    .end local v2    # "free":J
    .end local v4    # "total":J
    :catch_0
    move-exception v0

    .line 627
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private listFiles(Ljava/io/File;)Z
    .locals 12
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 400
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v9

    if-nez v9, :cond_3

    .line 401
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "/sdcard"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "/mnt/sdcard"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 404
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "mounted_ro"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 406
    iput-object p1, p0, Lorg/telegram/ui/DocumentSelectActivity;->currentDir:Ljava/io/File;

    .line 407
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 408
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    .line 409
    .local v8, "state":Ljava/lang/String;
    const-string/jumbo v9, "shared"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 410
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->emptyView:Landroid/widget/TextView;

    const-string/jumbo v10, "UsbActive"

    const v11, 0x7f0704e0

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    :goto_0
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Landroid/widget/ListView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    .line 415
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->scrolling:Z

    .line 416
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->listAdapter:Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    invoke-virtual {v9}, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->notifyDataSetChanged()V

    .line 417
    const/4 v9, 0x1

    .line 496
    .end local v8    # "state":Ljava/lang/String;
    :goto_1
    return v9

    .line 412
    .restart local v8    # "state":Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->emptyView:Landroid/widget/TextView;

    const-string/jumbo v10, "NotMounted"

    const v11, 0x7f070352

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 420
    .end local v8    # "state":Ljava/lang/String;
    :cond_2
    const-string/jumbo v9, "AccessError"

    const v10, 0x7f070041

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/telegram/ui/DocumentSelectActivity;->showErrorBox(Ljava/lang/String;)V

    .line 421
    const/4 v9, 0x0

    goto :goto_1

    .line 423
    :cond_3
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->emptyView:Landroid/widget/TextView;

    const-string/jumbo v10, "NoFiles"

    const v11, 0x7f070335

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 431
    .local v4, "files":[Ljava/io/File;
    if-nez v4, :cond_4

    .line 432
    const-string/jumbo v9, "UnknownError"

    const v10, 0x7f0704d5

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/telegram/ui/DocumentSelectActivity;->showErrorBox(Ljava/lang/String;)V

    .line 433
    const/4 v9, 0x0

    goto :goto_1

    .line 427
    .end local v4    # "files":[Ljava/io/File;
    :catch_0
    move-exception v1

    .line 428
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/telegram/ui/DocumentSelectActivity;->showErrorBox(Ljava/lang/String;)V

    .line 429
    const/4 v9, 0x0

    goto :goto_1

    .line 435
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "files":[Ljava/io/File;
    :cond_4
    iput-object p1, p0, Lorg/telegram/ui/DocumentSelectActivity;->currentDir:Ljava/io/File;

    .line 436
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 437
    new-instance v9, Lorg/telegram/ui/DocumentSelectActivity$9;

    invoke-direct {v9, p0}, Lorg/telegram/ui/DocumentSelectActivity$9;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    invoke-static {v4, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 455
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    array-length v9, v4

    if-ge v0, v9, :cond_a

    .line 456
    aget-object v3, v4, v0

    .line 457
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2e

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-nez v9, :cond_5

    .line 455
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 460
    :cond_5
    new-instance v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    const/4 v9, 0x0

    invoke-direct {v6, p0, v9}, Lorg/telegram/ui/DocumentSelectActivity$ListItem;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V

    .line 461
    .local v6, "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    .line 462
    iput-object v3, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    .line 463
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 464
    const v9, 0x7f020151

    iput v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    .line 465
    const-string/jumbo v9, "Folder"

    const v10, 0x7f0701fd

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 476
    :cond_6
    :goto_4
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 467
    :cond_7
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 468
    .local v5, "fname":Ljava/lang/String;
    const-string/jumbo v9, "\\."

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 469
    .local v7, "sp":[Ljava/lang/String;
    array-length v9, v7

    const/4 v10, 0x1

    if-le v9, v10, :cond_9

    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v7, v9

    :goto_5
    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->ext:Ljava/lang/String;

    .line 470
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 471
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 472
    const-string/jumbo v9, ".jpg"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string/jumbo v9, ".png"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string/jumbo v9, ".gif"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string/jumbo v9, ".jpeg"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 473
    :cond_8
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->thumb:Ljava/lang/String;

    goto :goto_4

    .line 469
    :cond_9
    const-string/jumbo v9, "?"

    goto :goto_5

    .line 478
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fname":Ljava/lang/String;
    .end local v6    # "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .end local v7    # "sp":[Ljava/lang/String;
    :cond_a
    new-instance v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    const/4 v9, 0x0

    invoke-direct {v6, p0, v9}, Lorg/telegram/ui/DocumentSelectActivity$ListItem;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V

    .line 479
    .restart local v6    # "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    const-string/jumbo v9, ".."

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    .line 480
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_c

    .line 481
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;

    iget-object v10, p0, Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;

    .line 482
    .local v2, "entry":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    iget-object v9, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->dir:Ljava/io/File;

    if-nez v9, :cond_b

    .line 483
    const-string/jumbo v9, "Folder"

    const v10, 0x7f0701fd

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 490
    .end local v2    # "entry":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    :goto_6
    const v9, 0x7f020151

    iput v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    .line 491
    const/4 v9, 0x0

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    .line 492
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 493
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Landroid/widget/ListView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    .line 494
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->scrolling:Z

    .line 495
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->listAdapter:Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    invoke-virtual {v9}, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->notifyDataSetChanged()V

    .line 496
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 485
    .restart local v2    # "entry":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    :cond_b
    iget-object v9, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->dir:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    goto :goto_6

    .line 488
    .end local v2    # "entry":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    :cond_c
    const-string/jumbo v9, "Folder"

    const v10, 0x7f0701fd

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    goto :goto_6
.end method

.method private listRoots()V
    .locals 23
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 508
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/DocumentSelectActivity;->currentDir:Ljava/io/File;

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 511
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 512
    .local v17, "paths":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 513
    .local v5, "defaultPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v12

    .line 514
    .local v12, "isDefaultPathRemovable":Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 515
    .local v6, "defaultPathState":Ljava/lang/String;
    const-string/jumbo v21, "mounted"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    const-string/jumbo v21, "mounted_ro"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 516
    :cond_0
    new-instance v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/DocumentSelectActivity$ListItem;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V

    .line 517
    .local v8, "ext":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 518
    const-string/jumbo v21, "SdCard"

    const v22, 0x7f070434

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    .line 519
    const v21, 0x7f02015d

    move/from16 v0, v21

    iput v0, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    .line 524
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/telegram/ui/DocumentSelectActivity;->getRootSubtitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 525
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 530
    .end local v8    # "ext":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    :cond_1
    const/4 v3, 0x0

    .line 532
    .local v3, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/FileReader;

    const-string/jumbo v22, "/proc/mounts"

    invoke-direct/range {v21 .. v22}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 534
    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .local v14, "line":Ljava/lang/String;
    if-eqz v14, :cond_a

    .line 535
    const-string/jumbo v21, "vfat"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_3

    const-string/jumbo v21, "/mnt"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 536
    :cond_3
    const-string/jumbo v21, "tmessages"

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    new-instance v19, Ljava/util/StringTokenizer;

    const-string/jumbo v21, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v14, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    .local v19, "tokens":Ljava/util/StringTokenizer;
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    .line 539
    .local v20, "unused":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    .line 540
    .local v16, "path":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 543
    const-string/jumbo v21, "/dev/block/vold"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 544
    const-string/jumbo v21, "/mnt/secure"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    const-string/jumbo v21, "/mnt/asec"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    const-string/jumbo v21, "/mnt/obb"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    const-string/jumbo v21, "/dev/mapper"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    const-string/jumbo v21, "tmpfs"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 545
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isDirectory()Z

    move-result v21

    if-nez v21, :cond_4

    .line 546
    const/16 v21, 0x2f

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 547
    .local v11, "index":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v11, v0, :cond_4

    .line 548
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "/storage/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, v11, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 549
    .local v15, "newPath":Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isDirectory()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 550
    move-object/from16 v16, v15

    .line 554
    .end local v11    # "index":I
    .end local v15    # "newPath":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    :try_start_2
    new-instance v13, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v13, v0, v1}, Lorg/telegram/ui/DocumentSelectActivity$ListItem;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V

    .line 557
    .local v13, "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "sd"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 558
    const-string/jumbo v21, "SdCard"

    const v22, 0x7f070434

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v13, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    .line 562
    :goto_2
    const v21, 0x7f02015d

    move/from16 v0, v21

    iput v0, v13, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    .line 563
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/telegram/ui/DocumentSelectActivity;->getRootSubtitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v13, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 564
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iput-object v0, v13, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 566
    .end local v13    # "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    :catch_0
    move-exception v7

    .line 567
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v21, "tmessages"

    move-object/from16 v0, v21

    invoke-static {v0, v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 573
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "path":Ljava/lang/String;
    .end local v19    # "tokens":Ljava/util/StringTokenizer;
    .end local v20    # "unused":Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v3, v4

    .line 574
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    const-string/jumbo v21, "tmessages"

    move-object/from16 v0, v21

    invoke-static {v0, v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 576
    if-eqz v3, :cond_5

    .line 578
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 584
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_4
    new-instance v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/DocumentSelectActivity$ListItem;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V

    .line 585
    .local v9, "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    const-string/jumbo v21, "/"

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    .line 586
    const-string/jumbo v21, "SystemRoot"

    const v22, 0x7f0704ae

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 587
    const v21, 0x7f020151

    move/from16 v0, v21

    iput v0, v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    .line 588
    new-instance v21, Ljava/io/File;

    const-string/jumbo v22, "/"

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    :try_start_6
    new-instance v18, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    const-string/jumbo v22, "Telegram"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 593
    .local v18, "telegramPath":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 594
    new-instance v10, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v10, v0, v1}, Lorg/telegram/ui/DocumentSelectActivity$ListItem;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 595
    .end local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .local v10, "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    :try_start_7
    const-string/jumbo v21, "Telegram"

    move-object/from16 v0, v21

    iput-object v0, v10, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    .line 596
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v10, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 597
    const v21, 0x7f020151

    move/from16 v0, v21

    iput v0, v10, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    .line 598
    move-object/from16 v0, v18

    iput-object v0, v10, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-object v9, v10

    .line 605
    .end local v10    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .end local v18    # "telegramPath":Ljava/io/File;
    .restart local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    :cond_6
    :goto_5
    new-instance v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    .end local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/DocumentSelectActivity$ListItem;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V

    .line 606
    .restart local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    const-string/jumbo v21, "Gallery"

    const v22, 0x7f07024c

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    .line 607
    const-string/jumbo v21, "GalleryInfo"

    const v22, 0x7f07024d

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 608
    const v21, 0x7f020182

    move/from16 v0, v21

    iput v0, v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    .line 609
    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Landroid/widget/ListView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    .line 613
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/DocumentSelectActivity;->scrolling:Z

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DocumentSelectActivity;->listAdapter:Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->notifyDataSetChanged()V

    .line 615
    return-void

    .line 521
    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .restart local v8    # "ext":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    :cond_7
    const-string/jumbo v21, "InternalStorage"

    const v22, 0x7f07027c

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    .line 522
    const v21, 0x7f020181

    move/from16 v0, v21

    iput v0, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    goto/16 :goto_0

    .line 560
    .end local v8    # "ext":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v13    # "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "path":Ljava/lang/String;
    .restart local v19    # "tokens":Ljava/util/StringTokenizer;
    .restart local v20    # "unused":Ljava/lang/String;
    :cond_8
    :try_start_8
    const-string/jumbo v21, "ExternalStorage"

    const v22, 0x7f0701ed

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v13, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 576
    .end local v13    # "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "path":Ljava/lang/String;
    .end local v19    # "tokens":Ljava/util/StringTokenizer;
    .end local v20    # "unused":Ljava/lang/String;
    :catchall_0
    move-exception v21

    move-object v3, v4

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    :goto_6
    if-eqz v3, :cond_9

    .line 578
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 581
    :cond_9
    :goto_7
    throw v21

    .line 576
    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    :cond_a
    if-eqz v4, :cond_b

    .line 578
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    move-object v3, v4

    .line 581
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 579
    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v7

    .line 580
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string/jumbo v21, "tmessages"

    move-object/from16 v0, v21

    invoke-static {v0, v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v4

    .line 581
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 579
    .end local v14    # "line":Ljava/lang/String;
    :catch_3
    move-exception v7

    .line 580
    const-string/jumbo v21, "tmessages"

    move-object/from16 v0, v21

    invoke-static {v0, v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 579
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v7

    .line 580
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string/jumbo v22, "tmessages"

    move-object/from16 v0, v22

    invoke-static {v0, v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 601
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    :catch_5
    move-exception v7

    .line 602
    .restart local v7    # "e":Ljava/lang/Exception;
    :goto_8
    const-string/jumbo v21, "tmessages"

    move-object/from16 v0, v21

    invoke-static {v0, v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 601
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .restart local v10    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .restart local v18    # "telegramPath":Ljava/io/File;
    :catch_6
    move-exception v7

    move-object v9, v10

    .end local v10    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .restart local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    goto :goto_8

    .line 576
    .end local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .end local v18    # "telegramPath":Ljava/io/File;
    :catchall_1
    move-exception v21

    goto :goto_6

    .line 573
    :catch_7
    move-exception v7

    goto/16 :goto_3

    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    :cond_b
    move-object v3, v4

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    goto/16 :goto_4
.end method

.method private showErrorBox(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 500
    invoke-virtual {p0}, Lorg/telegram/ui/DocumentSelectActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 504
    :goto_0
    return-void

    .line 503
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/DocumentSelectActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "AppName"

    const v2, 0x7f07009a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "OK"

    const v2, 0x7f07039f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 134
    iget-boolean v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->receiverRegistered:Z

    if-nez v1, :cond_0

    .line 135
    iput-boolean v3, p0, Lorg/telegram/ui/DocumentSelectActivity;->receiverRegistered:Z

    .line 136
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string/jumbo v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string/jumbo v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string/jumbo v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string/jumbo v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string/jumbo v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string/jumbo v1, "file"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 147
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    .end local v8    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 152
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "SelectFile"

    const v3, 0x7f070449

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/DocumentSelectActivity$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/DocumentSelectActivity$2;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 173
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 174
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 176
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v7

    .line 178
    .local v7, "actionMode":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    new-instance v1, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    .line 179
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 180
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 181
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const v2, -0x8c8c8d

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 182
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    new-instance v2, Lorg/telegram/ui/DocumentSelectActivity$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/DocumentSelectActivity$3;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 188
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x41

    move v4, v0

    move v5, v0

    move v6, v0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v9, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionModeViews:Ljava/util/ArrayList;

    const/4 v2, 0x3

    const v3, 0x7f020135

    const v4, -0xf0f10

    const/high16 v1, 0x42580000    # 54.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    move-object v1, v7

    move-object v5, v10

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IIILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-virtual {p0}, Lorg/telegram/ui/DocumentSelectActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030024

    invoke-virtual {v1, v2, v10, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->fragmentView:Landroid/view/View;

    .line 193
    new-instance v0, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listAdapter:Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->fragmentView:Landroid/view/View;

    const v1, 0x7f0e00b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->emptyView:Landroid/widget/TextView;

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->emptyView:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/DocumentSelectActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DocumentSelectActivity$4;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->fragmentView:Landroid/view/View;

    const v1, 0x7f0e00b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Landroid/widget/ListView;

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listAdapter:Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lorg/telegram/ui/DocumentSelectActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DocumentSelectActivity$5;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lorg/telegram/ui/DocumentSelectActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DocumentSelectActivity$6;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 261
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lorg/telegram/ui/DocumentSelectActivity$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DocumentSelectActivity$7;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 338
    invoke-direct {p0}, Lorg/telegram/ui/DocumentSelectActivity;->listRoots()V

    .line 340
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    .line 381
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 382
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;

    .line 383
    .local v0, "he":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v0, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v1, v0, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->dir:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, v0, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->dir:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/telegram/ui/DocumentSelectActivity;->listFiles(Ljava/io/File;)Z

    .line 389
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Landroid/widget/ListView;

    iget v2, v0, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->scrollItem:I

    iget v3, v0, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->scrollOffset:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 390
    const/4 v1, 0x0

    .line 392
    .end local v0    # "he":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    :goto_1
    return v1

    .line 387
    .restart local v0    # "he":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/DocumentSelectActivity;->listRoots()V

    goto :goto_0

    .line 392
    .end local v0    # "he":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v1

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 354
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 355
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 357
    .local v0, "obs":Landroid/view/ViewTreeObserver;
    new-instance v1, Lorg/telegram/ui/DocumentSelectActivity$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DocumentSelectActivity$8;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 366
    .end local v0    # "obs":Landroid/view/ViewTreeObserver;
    :cond_0
    return-void
.end method

.method public onFragmentDestroy()V
    .locals 3

    .prologue
    .line 123
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->receiverRegistered:Z

    if-eqz v1, :cond_0

    .line 124
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    :goto_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 130
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 345
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listAdapter:Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listAdapter:Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->notifyDataSetChanged()V

    .line 349
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/DocumentSelectActivity;->fixLayoutInternal()V

    .line 350
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;

    .prologue
    .line 396
    iput-object p1, p0, Lorg/telegram/ui/DocumentSelectActivity;->delegate:Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;

    .line 397
    return-void
.end method
