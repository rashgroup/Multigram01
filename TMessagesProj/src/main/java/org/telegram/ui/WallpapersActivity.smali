.class public Lorg/telegram/ui/WallpapersActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "WallpapersActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/WallpapersActivity$ListAdapter;
    }
.end annotation


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private backgroundImage:Landroid/widget/ImageView;

.field private currentPicturePath:Ljava/lang/String;

.field private doneButton:Landroid/view/View;

.field private listAdapter:Lorg/telegram/ui/WallpapersActivity$ListAdapter;

.field private loadingFile:Ljava/lang/String;

.field private loadingFileObject:Ljava/io/File;

.field private loadingSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field private progressView:Landroid/widget/FrameLayout;

.field private progressViewBackground:Landroid/view/View;

.field private selectedBackground:I

.field private selectedColor:I

.field private wallPapers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$WallPaper;",
            ">;"
        }
    .end annotation
.end field

.field private wallpappersByIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$WallPaper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->wallPapers:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->wallpappersByIds:Ljava/util/HashMap;

    .line 72
    iput-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFile:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFileObject:Ljava/io/File;

    .line 74
    iput-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->loadingSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 477
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/WallpapersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/WallpapersActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/WallpapersActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/WallpapersActivity;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/WallpapersActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/WallpapersActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->wallpappersByIds:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/WallpapersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/WallpapersActivity;

    .prologue
    .line 61
    iget v0, p0, Lorg/telegram/ui/WallpapersActivity;->selectedColor:I

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/WallpapersActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/WallpapersActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lorg/telegram/ui/WallpapersActivity;->currentPicturePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/WallpapersActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/WallpapersActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->wallPapers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/WallpapersActivity;)Lorg/telegram/ui/WallpapersActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/WallpapersActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->listAdapter:Lorg/telegram/ui/WallpapersActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/WallpapersActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/WallpapersActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/WallpapersActivity;->processSelectedBackground()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/WallpapersActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/WallpapersActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method private loadWallpapers()V
    .locals 4

    .prologue
    .line 437
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPapers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getWallPapers;-><init>()V

    .line 438
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_account_getWallPapers;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/WallpapersActivity$4;

    invoke-direct {v3, p0}, Lorg/telegram/ui/WallpapersActivity$4;-><init>(Lorg/telegram/ui/WallpapersActivity;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v1

    .line 465
    .local v1, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/WallpapersActivity;->classGuid:I

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    .line 466
    return-void
.end method

.method private processSelectedBackground()V
    .locals 15

    .prologue
    .line 316
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->wallpappersByIds:Ljava/util/HashMap;

    iget v12, p0, Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 317
    .local v9, "wallPaper":Lorg/telegram/tgnet/TLRPC$WallPaper;
    iget v11, p0, Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    iget v11, p0, Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I

    const v12, 0xf4241

    if-eq v11, v12, :cond_5

    if-eqz v9, :cond_5

    instance-of v11, v9, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v11, :cond_5

    .line 318
    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v11, Landroid/graphics/Point;->x:I

    .line 319
    .local v10, "width":I
    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v11, Landroid/graphics/Point;->y:I

    .line 320
    .local v4, "height":I
    if-le v10, v4, :cond_0

    .line 321
    move v7, v10

    .line 322
    .local v7, "temp":I
    move v10, v4

    .line 323
    move v4, v7

    .line 325
    .end local v7    # "temp":I
    :cond_0
    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$WallPaper;->sizes:Ljava/util/ArrayList;

    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v6

    .line 326
    .local v6, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v6, :cond_2

    .line 395
    .end local v4    # "height":I
    .end local v6    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v10    # "width":I
    :cond_1
    :goto_0
    return-void

    .line 329
    .restart local v4    # "height":I
    .restart local v6    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v10    # "width":I
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ".jpg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v11

    invoke-direct {v2, v11, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 331
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    .line 332
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->calcDrawableColor(Landroid/graphics/drawable/Drawable;)[I

    move-result-object v5

    .line 333
    .local v5, "result":[I
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->progressViewBackground:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    const/4 v13, 0x0

    aget v13, v5, v13

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v13, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 334
    iput-object v3, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFile:Ljava/lang/String;

    .line 335
    iput-object v2, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFileObject:Ljava/io/File;

    .line 336
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->doneButton:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 337
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->progressView:Landroid/widget/FrameLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 338
    iput-object v6, p0, Lorg/telegram/ui/WallpapersActivity;->loadingSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 339
    const/4 v11, 0x0

    iput v11, p0, Lorg/telegram/ui/WallpapersActivity;->selectedColor:I

    .line 340
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v6, v12, v13}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;Ljava/lang/String;Z)V

    .line 341
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    .line 343
    .end local v5    # "result":[I
    :cond_3
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFile:Ljava/lang/String;

    if-eqz v11, :cond_4

    .line 344
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/ui/WallpapersActivity;->loadingSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 346
    :cond_4
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFileObject:Ljava/io/File;

    .line 347
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFile:Ljava/lang/String;

    .line 348
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->loadingSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 350
    :try_start_0
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_1
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 355
    const/4 v11, 0x0

    iput v11, p0, Lorg/telegram/ui/WallpapersActivity;->selectedColor:I

    .line 356
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->doneButton:Landroid/view/View;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 357
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->progressView:Landroid/widget/FrameLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 351
    :catch_0
    move-exception v1

    .line 352
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 360
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "height":I
    .end local v6    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v10    # "width":I
    :cond_5
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFile:Ljava/lang/String;

    if-eqz v11, :cond_6

    .line 361
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/ui/WallpapersActivity;->loadingSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 363
    :cond_6
    iget v11, p0, Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I

    const v12, 0xf4241

    if-ne v11, v12, :cond_8

    .line 364
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    const v12, 0x7f02006f

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 365
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 366
    const/4 v11, 0x0

    iput v11, p0, Lorg/telegram/ui/WallpapersActivity;->selectedColor:I

    .line 389
    :cond_7
    :goto_2
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFileObject:Ljava/io/File;

    .line 390
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFile:Ljava/lang/String;

    .line 391
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->loadingSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 392
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->doneButton:Landroid/view/View;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 393
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->progressView:Landroid/widget/FrameLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 367
    :cond_8
    iget v11, p0, Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_b

    .line 368
    new-instance v8, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v11

    const-string/jumbo v12, "wallpaper-temp.jpg"

    invoke-direct {v8, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 369
    .local v8, "toFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_9

    .line 370
    new-instance v8, Ljava/io/File;

    .end local v8    # "toFile":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v11

    const-string/jumbo v12, "wallpaper.jpg"

    invoke-direct {v8, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 372
    .restart local v8    # "toFile":Ljava/io/File;
    :cond_9
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 373
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_2

    .line 375
    :cond_a
    const v11, 0xf4241

    iput v11, p0, Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I

    .line 376
    invoke-direct {p0}, Lorg/telegram/ui/WallpapersActivity;->processSelectedBackground()V

    goto :goto_2

    .line 379
    .end local v8    # "toFile":Ljava/io/File;
    :cond_b
    if-eqz v9, :cond_1

    .line 382
    instance-of v11, v9, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSolid;

    if-eqz v11, :cond_7

    .line 383
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 384
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 385
    const/high16 v11, -0x1000000

    iget v12, v9, Lorg/telegram/tgnet/TLRPC$WallPaper;->bg_color:I

    or-int/2addr v11, v12

    iput v11, p0, Lorg/telegram/ui/WallpapersActivity;->selectedColor:I

    .line 386
    iget-object v11, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    iget v12, p0, Lorg/telegram/ui/WallpapersActivity;->selectedColor:I

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_2
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f020131

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "ChatBackground"

    const v2, 0x7f07015b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/WallpapersActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/WallpapersActivity$1;-><init>(Lorg/telegram/ui/WallpapersActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v10

    .line 159
    .local v10, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v0, 0x1

    const v1, 0x7f020152

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v10, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->doneButton:Landroid/view/View;

    .line 161
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 162
    .local v7, "frameLayout":Landroid/widget/FrameLayout;
    iput-object v7, p0, Lorg/telegram/ui/WallpapersActivity;->fragmentView:Landroid/view/View;

    .line 164
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/WallpapersActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/WallpapersActivity$2;-><init>(Lorg/telegram/ui/WallpapersActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->progressView:Landroid/widget/FrameLayout;

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->progressView:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 176
    iget-object v12, p0, Lorg/telegram/ui/WallpapersActivity;->progressView:Landroid/widget/FrameLayout;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42500000    # 52.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v12, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->progressViewBackground:Landroid/view/View;

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->progressViewBackground:Landroid/view/View;

    const v1, 0x7f020280

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->progressView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->progressViewBackground:Landroid/view/View;

    const/16 v2, 0x24

    const/16 v3, 0x24

    const/16 v4, 0x11

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    new-instance v11, Landroid/widget/ProgressBar;

    invoke-direct {v11, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 184
    .local v11, "progressBar":Landroid/widget/ProgressBar;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 189
    const/16 v0, 0x5dc

    invoke-static {v11, v0}, Lorg/telegram/messenger/AndroidUtilities;->setProgressBarAnimationDuration(Landroid/widget/ProgressBar;I)V

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->progressView:Landroid/widget/FrameLayout;

    const/16 v1, 0x20

    const/16 v2, 0x20

    const/16 v3, 0x11

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    new-instance v9, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v9, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    .line 193
    .local v9, "listView":Lorg/telegram/ui/Components/RecyclerListView;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 194
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 195
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v9, v0, v1, v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 196
    new-instance v8, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {v8, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 197
    .local v8, "layoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 198
    invoke-virtual {v9, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 199
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setDisallowInterceptTouchEvents(Z)V

    .line 200
    const/4 v0, 0x2

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOverScrollMode(I)V

    .line 201
    new-instance v0, Lorg/telegram/ui/WallpapersActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/WallpapersActivity$ListAdapter;-><init>(Lorg/telegram/ui/WallpapersActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->listAdapter:Lorg/telegram/ui/WallpapersActivity$ListAdapter;

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 202
    const/4 v0, -0x1

    const/16 v1, 0x66

    const/16 v2, 0x53

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    new-instance v0, Lorg/telegram/ui/WallpapersActivity$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/WallpapersActivity$3;-><init>(Lorg/telegram/ui/WallpapersActivity;)V

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 249
    invoke-direct {p0}, Lorg/telegram/ui/WallpapersActivity;->processSelectedBackground()V

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->fragmentView:Landroid/view/View;

    return-object v0

    .line 185
    .end local v8    # "layoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .end local v9    # "listView":Lorg/telegram/ui/Components/RecyclerListView;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 400
    sget v3, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    if-ne p1, v3, :cond_1

    .line 401
    aget-object v1, p2, v6

    check-cast v1, Ljava/lang/String;

    .line 402
    .local v1, "location":Ljava/lang/String;
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFile:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFile:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 403
    iput-object v5, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFileObject:Ljava/io/File;

    .line 404
    iput-object v5, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFile:Ljava/lang/String;

    .line 405
    iput-object v5, p0, Lorg/telegram/ui/WallpapersActivity;->loadingSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 406
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 407
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity;->doneButton:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 434
    .end local v1    # "location":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    sget v3, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    if-ne p1, v3, :cond_2

    .line 410
    aget-object v1, p2, v6

    check-cast v1, Ljava/lang/String;

    .line 411
    .restart local v1    # "location":Ljava/lang/String;
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFile:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFile:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 412
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFileObject:Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 413
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 414
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 415
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity;->doneButton:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 416
    iput-object v5, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFileObject:Ljava/io/File;

    .line 417
    iput-object v5, p0, Lorg/telegram/ui/WallpapersActivity;->loadingFile:Ljava/lang/String;

    .line 418
    iput-object v5, p0, Lorg/telegram/ui/WallpapersActivity;->loadingSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto :goto_0

    .line 420
    .end local v1    # "location":Ljava/lang/String;
    :cond_2
    sget v3, Lorg/telegram/messenger/NotificationCenter;->wallpapersDidLoaded:I

    if-ne p1, v3, :cond_0

    .line 421
    aget-object v3, p2, v6

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lorg/telegram/ui/WallpapersActivity;->wallPapers:Ljava/util/ArrayList;

    .line 422
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity;->wallpappersByIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 423
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity;->wallPapers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 424
    .local v2, "wallPaper":Lorg/telegram/tgnet/TLRPC$WallPaper;
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity;->wallpappersByIds:Ljava/util/HashMap;

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 426
    .end local v2    # "wallPaper":Lorg/telegram/tgnet/TLRPC$WallPaper;
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity;->listAdapter:Lorg/telegram/ui/WallpapersActivity$ListAdapter;

    if-eqz v3, :cond_4

    .line 427
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity;->listAdapter:Lorg/telegram/ui/WallpapersActivity$ListAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 429
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity;->wallPapers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    .line 430
    invoke-direct {p0}, Lorg/telegram/ui/WallpapersActivity;->processSelectedBackground()V

    .line 432
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/WallpapersActivity;->loadWallpapers()V

    goto :goto_0
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 256
    const/4 v7, -0x1

    if-ne p2, v7, :cond_2

    .line 257
    const/16 v7, 0xa

    if-ne p1, v7, :cond_4

    .line 258
    iget-object v7, p0, Lorg/telegram/ui/WallpapersActivity;->currentPicturePath:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/lang/String;)V

    .line 259
    const/4 v4, 0x0

    .line 261
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v3

    .line 262
    .local v3, "screenSize":Landroid/graphics/Point;
    iget-object v7, p0, Lorg/telegram/ui/WallpapersActivity;->currentPicturePath:Ljava/lang/String;

    const/4 v8, 0x0

    iget v9, v3, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v3, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    const/4 v11, 0x1

    invoke-static {v7, v8, v9, v10, v11}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 263
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "wallpaper-temp.jpg"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 264
    .local v6, "toFile":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .local v5, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x57

    invoke-virtual {v0, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 266
    const/4 v7, -0x1

    iput v7, p0, Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I

    .line 267
    const/4 v7, 0x0

    iput v7, p0, Lorg/telegram/ui/WallpapersActivity;->selectedColor:I

    .line 268
    iget-object v7, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 269
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 274
    if-eqz v5, :cond_0

    .line 275
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v4, v5

    .line 281
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "screenSize":Landroid/graphics/Point;
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .end local v6    # "toFile":Ljava/io/File;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/telegram/ui/WallpapersActivity;->currentPicturePath:Ljava/lang/String;

    .line 301
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 277
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "screenSize":Landroid/graphics/Point;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v6    # "toFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 278
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v5

    .line 280
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 270
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "screenSize":Landroid/graphics/Point;
    .end local v6    # "toFile":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 271
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 274
    if-eqz v4, :cond_1

    .line 275
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 277
    :catch_2
    move-exception v2

    .line 278
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 273
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 274
    :goto_3
    if-eqz v4, :cond_3

    .line 275
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 279
    :cond_3
    :goto_4
    throw v7

    .line 277
    :catch_3
    move-exception v2

    .line 278
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "tmessages"

    invoke-static {v8, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 282
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :cond_4
    const/16 v7, 0xb

    if-ne p1, v7, :cond_2

    .line 283
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 287
    :try_start_6
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v3

    .line 288
    .restart local v3    # "screenSize":Landroid/graphics/Point;
    const/4 v7, 0x0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    iget v9, v3, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v3, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    const/4 v11, 0x1

    invoke-static {v7, v8, v9, v10, v11}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 289
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "wallpaper-temp.jpg"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 290
    .restart local v6    # "toFile":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 291
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x57

    invoke-virtual {v0, v7, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 292
    const/4 v7, -0x1

    iput v7, p0, Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I

    .line 293
    const/4 v7, 0x0

    iput v7, p0, Lorg/telegram/ui/WallpapersActivity;->selectedColor:I

    .line 294
    iget-object v7, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 295
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 296
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "screenSize":Landroid/graphics/Point;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .end local v6    # "toFile":Ljava/io/File;
    :catch_4
    move-exception v2

    .line 297
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "tmessages"

    invoke-static {v7, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 273
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "screenSize":Landroid/graphics/Point;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v6    # "toFile":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 270
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public onFragmentCreate()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 81
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 83
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 84
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 85
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->wallpapersDidLoaded:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 87
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "selectedBackground"

    const v3, 0xf4241

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I

    .line 89
    const-string/jumbo v2, "selectedColor"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/WallpapersActivity;->selectedColor:I

    .line 90
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getWallpapers()V

    .line 91
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper-temp.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    .local v1, "toFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 93
    const/4 v2, 0x1

    return v2
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 99
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 100
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 101
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wallpapersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 102
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 470
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 471
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->listAdapter:Lorg/telegram/ui/WallpapersActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->listAdapter:Lorg/telegram/ui/WallpapersActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 474
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/WallpapersActivity;->processSelectedBackground()V

    .line 475
    return-void
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 312
    const-string/jumbo v0, "path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->currentPicturePath:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 305
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity;->currentPicturePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 306
    const-string/jumbo v0, "path"

    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity;->currentPicturePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_0
    return-void
.end method
