.class Lorg/telegram/messenger/ImageLoader$CacheOutTask;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheOutTask"
.end annotation


# instance fields
.field private cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

.field private isCancelled:Z

.field private runningThread:Ljava/lang/Thread;

.field private final sync:Ljava/lang/Object;

.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V
    .locals 1
    .param p2, "image"    # Lorg/telegram/messenger/ImageLoader$CacheImage;

    .prologue
    .line 549
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    .line 550
    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 551
    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/ImageLoader$CacheOutTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    .prologue
    .line 542
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    return-object v0
.end method

.method private onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1
    .param p1, "bitmapDrawable"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 857
    new-instance v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;-><init>(Lorg/telegram/messenger/ImageLoader$CacheOutTask;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 882
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 885
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 887
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    .line 888
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->runningThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->runningThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 894
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 895
    return-void

    .line 894
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 891
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 46

    .prologue
    .line 555
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v6

    .line 556
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->runningThread:Ljava/lang/Thread;

    .line 557
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 558
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v5, :cond_0

    .line 559
    monitor-exit v6

    .line 854
    :goto_0
    return-void

    .line 561
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 563
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-boolean v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->animatedFile:Z

    if-eqz v5, :cond_3

    .line 564
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v6

    .line 565
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v5, :cond_1

    .line 566
    monitor-exit v6

    goto :goto_0

    .line 568
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 561
    :catchall_1
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 568
    :cond_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 569
    new-instance v28, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, v28

    invoke-direct {v0, v6, v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;Z)V

    .line 570
    .local v28, "fileDrawable":Lorg/telegram/ui/Components/AnimatedFileDrawable;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 571
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V

    goto :goto_0

    .line 569
    .end local v28    # "fileDrawable":Lorg/telegram/ui/Components/AnimatedFileDrawable;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 573
    :cond_3
    const/16 v34, 0x0

    .line 574
    .local v34, "mediaId":Ljava/lang/Long;
    const/16 v35, 0x0

    .line 575
    .local v35, "mediaIsVideo":Z
    const/16 v31, 0x0

    .line 576
    .local v31, "image":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    move-object/from16 v21, v0

    .line 577
    .local v21, "cacheFileFinal":Ljava/io/File;
    const/16 v22, 0x1

    .line 578
    .local v22, "canDeleteFile":Z
    const/16 v44, 0x0

    .line 580
    .local v44, "useNativeWebpLoaded":Z
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-ge v5, v6, :cond_5

    .line 581
    const/16 v39, 0x0

    .line 583
    .local v39, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_4
    new-instance v40, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 585
    .end local v39    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v40, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-boolean v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    if-eqz v5, :cond_8

    .line 586
    # getter for: Lorg/telegram/messenger/ImageLoader;->headerThumb:[B
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1100()[B

    move-result-object v20

    .line 590
    .local v20, "bytes":[B
    :goto_2
    const/4 v5, 0x0

    move-object/from16 v0, v20

    array-length v6, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5, v6}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 591
    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v43

    .line 592
    .local v43, "str":Ljava/lang/String;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v43

    .line 593
    const-string/jumbo v5, "riff"

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "webp"

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 594
    const/16 v44, 0x1

    .line 596
    :cond_4
    invoke-virtual/range {v40 .. v40}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 600
    if-eqz v40, :cond_5

    .line 602
    :try_start_6
    invoke-virtual/range {v40 .. v40}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 610
    .end local v20    # "bytes":[B
    .end local v40    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v43    # "str":Ljava/lang/String;
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-boolean v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    if-eqz v5, :cond_1d

    .line 611
    const/16 v16, 0x0

    .line 612
    .local v16, "blurType":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 613
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v6, "b2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 614
    const/16 v16, 0x3

    .line 623
    :cond_6
    :goto_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    # setter for: Lorg/telegram/messenger/ImageLoader;->lastCacheOutTime:J
    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/ImageLoader;->access$1302(Lorg/telegram/messenger/ImageLoader;J)J

    .line 624
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v6
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 625
    :try_start_8
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v5, :cond_c

    .line 626
    monitor-exit v6

    goto/16 :goto_0

    .line 628
    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v5
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    .line 688
    :catch_0
    move-exception v25

    move-object/from16 v4, v31

    .line 689
    .end local v31    # "image":Landroid/graphics/Bitmap;
    .local v4, "image":Landroid/graphics/Bitmap;
    .local v25, "e":Ljava/lang/Throwable;
    :goto_5
    const-string/jumbo v5, "tmessages"

    move-object/from16 v0, v25

    invoke-static {v5, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 851
    .end local v16    # "blurType":I
    .end local v25    # "e":Ljava/lang/Throwable;
    :cond_7
    :goto_6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 852
    if-eqz v4, :cond_3d

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V

    goto/16 :goto_0

    .line 588
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v40    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :cond_8
    :try_start_a
    # getter for: Lorg/telegram/messenger/ImageLoader;->header:[B
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1200()[B
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move-result-object v20

    .restart local v20    # "bytes":[B
    goto/16 :goto_2

    .line 603
    .restart local v43    # "str":Ljava/lang/String;
    :catch_1
    move-exception v25

    .line 604
    .local v25, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "tmessages"

    move-object/from16 v0, v25

    invoke-static {v5, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 597
    .end local v20    # "bytes":[B
    .end local v25    # "e":Ljava/lang/Exception;
    .end local v40    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v43    # "str":Ljava/lang/String;
    .restart local v39    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v25

    .line 598
    .restart local v25    # "e":Ljava/lang/Exception;
    :goto_8
    :try_start_b
    const-string/jumbo v5, "tmessages"

    move-object/from16 v0, v25

    invoke-static {v5, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 600
    if-eqz v39, :cond_5

    .line 602
    :try_start_c
    invoke-virtual/range {v39 .. v39}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_3

    .line 603
    :catch_3
    move-exception v25

    .line 604
    const-string/jumbo v5, "tmessages"

    move-object/from16 v0, v25

    invoke-static {v5, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 600
    .end local v25    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v5

    :goto_9
    if-eqz v39, :cond_9

    .line 602
    :try_start_d
    invoke-virtual/range {v39 .. v39}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 605
    :cond_9
    :goto_a
    throw v5

    .line 603
    :catch_4
    move-exception v25

    .line 604
    .restart local v25    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "tmessages"

    move-object/from16 v0, v25

    invoke-static {v6, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 615
    .end local v25    # "e":Ljava/lang/Exception;
    .end local v39    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v16    # "blurType":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v6, "b1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 616
    const/16 v16, 0x2

    goto/16 :goto_4

    .line 617
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v6, "b"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 618
    const/16 v16, 0x1

    goto/16 :goto_4

    .line 628
    :cond_c
    :try_start_e
    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 630
    :try_start_f
    new-instance v36, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v36 .. v36}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 631
    .local v36, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move-object/from16 v0, v36

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 633
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_d

    .line 634
    const/4 v5, 0x1

    move-object/from16 v0, v36

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 637
    :cond_d
    if-eqz v44, :cond_10

    .line 638
    new-instance v27, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 639
    .local v27, "file":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v27 .. v27}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v6, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v19

    .line 641
    .local v19, "buffer":Ljava/nio/ByteBuffer;
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 642
    .local v18, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move-object/from16 v0, v18

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 643
    const/4 v5, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v5, v0, v6, v1, v7}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 644
    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    move-result-object v4

    .line 646
    .end local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    :try_start_10
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, v36

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v5, :cond_f

    const/4 v5, 0x1

    :goto_b
    move-object/from16 v0, v19

    invoke-static {v4, v0, v6, v7, v5}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 647
    invoke-virtual/range {v27 .. v27}, Ljava/io/RandomAccessFile;->close()V

    .line 665
    .end local v18    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "buffer":Ljava/nio/ByteBuffer;
    .end local v27    # "file":Ljava/io/RandomAccessFile;
    :goto_c
    if-nez v4, :cond_14

    .line 666
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-nez v5, :cond_7

    .line 667
    :cond_e
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5

    goto/16 :goto_6

    .line 688
    :catch_5
    move-exception v25

    goto/16 :goto_5

    .line 646
    .restart local v18    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v19    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v27    # "file":Ljava/io/RandomAccessFile;
    :cond_f
    const/4 v5, 0x0

    goto :goto_b

    .line 649
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .end local v18    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "buffer":Ljava/nio/ByteBuffer;
    .end local v27    # "file":Ljava/io/RandomAccessFile;
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    :cond_10
    :try_start_11
    move-object/from16 v0, v36

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v5, :cond_13

    .line 650
    new-instance v26, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 651
    .local v26, "f":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v26 .. v26}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v33, v0

    .line 652
    .local v33, "len":I
    # getter for: Lorg/telegram/messenger/ImageLoader;->bytesThumb:[B
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1400()[B

    move-result-object v5

    if-eqz v5, :cond_12

    # getter for: Lorg/telegram/messenger/ImageLoader;->bytesThumb:[B
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1400()[B

    move-result-object v5

    array-length v5, v5

    move/from16 v0, v33

    if-lt v5, v0, :cond_12

    # getter for: Lorg/telegram/messenger/ImageLoader;->bytesThumb:[B
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1400()[B

    move-result-object v23

    .line 653
    .local v23, "data":[B
    :goto_d
    if-nez v23, :cond_11

    .line 654
    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v23, v0

    # setter for: Lorg/telegram/messenger/ImageLoader;->bytesThumb:[B
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/ImageLoader;->access$1402([B)[B

    .line 656
    :cond_11
    const/4 v5, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move/from16 v2, v33

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 657
    const/4 v5, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v33

    move-object/from16 v2, v36

    invoke-static {v0, v5, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 658
    .end local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    goto :goto_c

    .line 652
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .end local v23    # "data":[B
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    :cond_12
    const/16 v23, 0x0

    goto :goto_d

    .line 659
    .end local v26    # "f":Ljava/io/RandomAccessFile;
    .end local v33    # "len":I
    :cond_13
    new-instance v32, Ljava/io/FileInputStream;

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 660
    .local v32, "is":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0

    move-result-object v4

    .line 661
    .end local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    :try_start_12
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_c

    .line 670
    .end local v32    # "is":Ljava/io/FileInputStream;
    :cond_14
    const/4 v5, 0x1

    move/from16 v0, v16

    if-ne v0, v5, :cond_16

    .line 671
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v5, v6, :cond_7

    .line 672
    const/4 v5, 0x3

    move-object/from16 v0, v36

    iget-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v6, :cond_15

    const/4 v6, 0x0

    :goto_e
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    goto/16 :goto_6

    :cond_15
    const/4 v6, 0x1

    goto :goto_e

    .line 674
    :cond_16
    const/4 v5, 0x2

    move/from16 v0, v16

    if-ne v0, v5, :cond_18

    .line 675
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v5, v6, :cond_7

    .line 676
    const/4 v5, 0x1

    move-object/from16 v0, v36

    iget-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v6, :cond_17

    const/4 v6, 0x0

    :goto_f
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    goto/16 :goto_6

    :cond_17
    const/4 v6, 0x1

    goto :goto_f

    .line 678
    :cond_18
    const/4 v5, 0x3

    move/from16 v0, v16

    if-ne v0, v5, :cond_1c

    .line 679
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v5, v6, :cond_7

    .line 680
    const/4 v5, 0x7

    move-object/from16 v0, v36

    iget-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v6, :cond_19

    const/4 v6, 0x0

    :goto_10
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 681
    const/4 v5, 0x7

    move-object/from16 v0, v36

    iget-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v6, :cond_1a

    const/4 v6, 0x0

    :goto_11
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 682
    const/4 v5, 0x7

    move-object/from16 v0, v36

    iget-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v6, :cond_1b

    const/4 v6, 0x0

    :goto_12
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    goto/16 :goto_6

    .line 680
    :cond_19
    const/4 v6, 0x1

    goto :goto_10

    .line 681
    :cond_1a
    const/4 v6, 0x1

    goto :goto_11

    .line 682
    :cond_1b
    const/4 v6, 0x1

    goto :goto_12

    .line 684
    :cond_1c
    if-nez v16, :cond_7

    move-object/from16 v0, v36

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v5, :cond_7

    .line 685
    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_5

    goto/16 :goto_6

    .line 693
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .end local v16    # "blurType":I
    .end local v36    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    :cond_1d
    :try_start_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    if-eqz v5, :cond_1f

    .line 694
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const-string/jumbo v6, "thumb://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 695
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const-string/jumbo v6, ":"

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v30

    .line 696
    .local v30, "idx":I
    if-ltz v30, :cond_1e

    .line 697
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const/16 v6, 0x8

    move/from16 v0, v30

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    .line 698
    const/16 v35, 0x0

    .line 700
    :cond_1e
    const/16 v22, 0x0

    .line 713
    .end local v30    # "idx":I
    :cond_1f
    :goto_13
    const/16 v24, 0x14

    .line 714
    .local v24, "delay":I
    if-eqz v34, :cond_20

    .line 715
    const/16 v24, 0x0

    .line 717
    :cond_20
    if-eqz v24, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->lastCacheOutTime:J
    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->access$1300(Lorg/telegram/messenger/ImageLoader;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->lastCacheOutTime:J
    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->access$1300(Lorg/telegram/messenger/ImageLoader;)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move/from16 v0, v24

    int-to-long v10, v0

    sub-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-lez v5, :cond_21

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_21

    .line 718
    move/from16 v0, v24

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 720
    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    # setter for: Lorg/telegram/messenger/ImageLoader;->lastCacheOutTime:J
    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/ImageLoader;->access$1302(Lorg/telegram/messenger/ImageLoader;J)J

    .line 721
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v6
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_6

    .line 722
    :try_start_14
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v5, :cond_25

    .line 723
    monitor-exit v6

    goto/16 :goto_0

    .line 725
    :catchall_4
    move-exception v5

    monitor-exit v6
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :try_start_15
    throw v5

    .line 847
    .end local v24    # "delay":I
    :catch_6
    move-exception v5

    move-object/from16 v4, v31

    .end local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    goto/16 :goto_6

    .line 701
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    :cond_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const-string/jumbo v6, "vthumb://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 702
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const-string/jumbo v6, ":"

    const/16 v7, 0x9

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v30

    .line 703
    .restart local v30    # "idx":I
    if-ltz v30, :cond_23

    .line 704
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const/16 v6, 0x9

    move/from16 v0, v30

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    .line 705
    const/16 v35, 0x1

    .line 707
    :cond_23
    const/16 v22, 0x0

    .line 708
    goto/16 :goto_13

    .end local v30    # "idx":I
    :cond_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const-string/jumbo v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_6

    move-result v5

    if-nez v5, :cond_1f

    .line 709
    const/16 v22, 0x0

    goto/16 :goto_13

    .line 725
    .restart local v24    # "delay":I
    :cond_25
    :try_start_16
    monitor-exit v6
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 727
    :try_start_17
    new-instance v36, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v36 .. v36}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 728
    .restart local v36    # "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move-object/from16 v0, v36

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 730
    const/16 v45, 0x0

    .line 731
    .local v45, "w_filter":F
    const/16 v29, 0x0

    .line 732
    .local v29, "h_filter":F
    const/4 v15, 0x0

    .line 733
    .local v15, "blur":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v5, :cond_3e

    .line 734
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 735
    .local v12, "args":[Ljava/lang/String;
    array-length v5, v12

    const/4 v6, 0x2

    if-lt v5, v6, :cond_26

    .line 736
    const/4 v5, 0x0

    aget-object v5, v12, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v45, v5, v6

    .line 737
    const/4 v5, 0x1

    aget-object v5, v12, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v29, v5, v6

    .line 739
    :cond_26
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v6, "b"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 740
    const/4 v15, 0x1

    .line 742
    :cond_27
    const/4 v5, 0x0

    cmpl-float v5, v45, v5

    if-eqz v5, :cond_3e

    const/4 v5, 0x0

    cmpl-float v5, v29, v5

    if-eqz v5, :cond_3e

    .line 743
    const/4 v5, 0x1

    move-object/from16 v0, v36

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 745
    if-eqz v34, :cond_2a

    .line 746
    if-eqz v35, :cond_29

    .line 747
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x1

    move-object/from16 v0, v36

    invoke-static {v5, v6, v7, v8, v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_6

    move-object/from16 v4, v31

    .line 757
    .end local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    :goto_14
    :try_start_18
    move-object/from16 v0, v36

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v5

    move/from16 v38, v0

    .line 758
    .local v38, "photoW":F
    move-object/from16 v0, v36

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v5

    move/from16 v37, v0

    .line 759
    .local v37, "photoH":F
    div-float v5, v38, v45

    div-float v6, v37, v29

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v41

    .line 760
    .local v41, "scaleFactor":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v41, v5

    if-gez v5, :cond_28

    .line 761
    const/high16 v41, 0x3f800000    # 1.0f

    .line 763
    :cond_28
    const/4 v5, 0x0

    move-object/from16 v0, v36

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 764
    move/from16 v0, v41

    float-to-int v5, v0

    move-object/from16 v0, v36

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 767
    .end local v12    # "args":[Ljava/lang/String;
    .end local v37    # "photoH":F
    .end local v38    # "photoW":F
    .end local v41    # "scaleFactor":F
    :goto_15
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v6
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_7

    .line 768
    :try_start_19
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v5, :cond_2b

    .line 769
    monitor-exit v6

    goto/16 :goto_0

    .line 771
    :catchall_5
    move-exception v5

    monitor-exit v6
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    :try_start_1a
    throw v5
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_7

    .line 847
    :catch_7
    move-exception v5

    goto/16 :goto_6

    .line 749
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .restart local v12    # "args":[Ljava/lang/String;
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    :cond_29
    :try_start_1b
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x1

    move-object/from16 v0, v36

    invoke-static {v5, v6, v7, v8, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-object/from16 v4, v31

    .end local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    goto :goto_14

    .line 752
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    :cond_2a
    new-instance v32, Ljava/io/FileInputStream;

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 753
    .restart local v32    # "is":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_6

    move-result-object v4

    .line 754
    .end local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    :try_start_1c
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_7

    goto :goto_14

    .line 771
    .end local v12    # "args":[Ljava/lang/String;
    .end local v32    # "is":Ljava/io/FileInputStream;
    :cond_2b
    :try_start_1d
    monitor-exit v6
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    .line 773
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v5, :cond_2c

    if-nez v15, :cond_2c

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    if-eqz v5, :cond_31

    .line 774
    :cond_2c
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v36

    iput-object v5, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 778
    :goto_16
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_2d

    .line 779
    const/4 v5, 0x1

    move-object/from16 v0, v36

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 782
    :cond_2d
    const/4 v5, 0x0

    move-object/from16 v0, v36

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 783
    if-eqz v34, :cond_2e

    .line 784
    if-eqz v35, :cond_32

    .line 785
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x1

    move-object/from16 v0, v36

    invoke-static {v5, v6, v7, v8, v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 790
    :cond_2e
    :goto_17
    if-nez v4, :cond_2f

    .line 791
    if-eqz v44, :cond_34

    .line 792
    new-instance v27, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 793
    .restart local v27    # "file":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v27 .. v27}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v8, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v19

    .line 795
    .restart local v19    # "buffer":Ljava/nio/ByteBuffer;
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 796
    .restart local v18    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move-object/from16 v0, v18

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 797
    const/4 v5, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v5, v0, v6, v1, v7}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 798
    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 800
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, v36

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v5, :cond_33

    const/4 v5, 0x1

    :goto_18
    move-object/from16 v0, v19

    invoke-static {v4, v0, v6, v7, v5}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 801
    invoke-virtual/range {v27 .. v27}, Ljava/io/RandomAccessFile;->close()V

    .line 819
    .end local v18    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "buffer":Ljava/nio/ByteBuffer;
    .end local v27    # "file":Ljava/io/RandomAccessFile;
    :cond_2f
    :goto_19
    if-nez v4, :cond_38

    .line 820
    if-eqz v22, :cond_7

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_30

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-nez v5, :cond_7

    .line 821
    :cond_30
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    goto/16 :goto_6

    .line 776
    :cond_31
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v36

    iput-object v5, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_16

    .line 787
    :cond_32
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x1

    move-object/from16 v0, v36

    invoke-static {v5, v6, v7, v8, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_17

    .line 800
    .restart local v18    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v19    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v27    # "file":Ljava/io/RandomAccessFile;
    :cond_33
    const/4 v5, 0x0

    goto :goto_18

    .line 803
    .end local v18    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "buffer":Ljava/nio/ByteBuffer;
    .end local v27    # "file":Ljava/io/RandomAccessFile;
    :cond_34
    move-object/from16 v0, v36

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v5, :cond_37

    .line 804
    new-instance v26, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 805
    .restart local v26    # "f":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v26 .. v26}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v33, v0

    .line 806
    .restart local v33    # "len":I
    # getter for: Lorg/telegram/messenger/ImageLoader;->bytes:[B
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1500()[B

    move-result-object v5

    if-eqz v5, :cond_36

    # getter for: Lorg/telegram/messenger/ImageLoader;->bytes:[B
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1500()[B

    move-result-object v5

    array-length v5, v5

    move/from16 v0, v33

    if-lt v5, v0, :cond_36

    # getter for: Lorg/telegram/messenger/ImageLoader;->bytes:[B
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1500()[B

    move-result-object v23

    .line 807
    .restart local v23    # "data":[B
    :goto_1a
    if-nez v23, :cond_35

    .line 808
    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v23, v0

    # setter for: Lorg/telegram/messenger/ImageLoader;->bytes:[B
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/ImageLoader;->access$1502([B)[B

    .line 810
    :cond_35
    const/4 v5, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move/from16 v2, v33

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 811
    const/4 v5, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v33

    move-object/from16 v2, v36

    invoke-static {v0, v5, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 812
    goto/16 :goto_19

    .line 806
    .end local v23    # "data":[B
    :cond_36
    const/16 v23, 0x0

    goto :goto_1a

    .line 813
    .end local v26    # "f":Ljava/io/RandomAccessFile;
    .end local v33    # "len":I
    :cond_37
    new-instance v32, Ljava/io/FileInputStream;

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 814
    .restart local v32    # "is":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 815
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_19

    .line 824
    .end local v32    # "is":Ljava/io/FileInputStream;
    :cond_38
    const/16 v17, 0x0

    .line 825
    .local v17, "blured":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v5, :cond_3b

    .line 826
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v14, v5

    .line 827
    .local v14, "bitmapW":F
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v13, v5

    .line 828
    .local v13, "bitmapH":F
    move-object/from16 v0, v36

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v5, :cond_39

    const/4 v5, 0x0

    cmpl-float v5, v45, v5

    if-eqz v5, :cond_39

    cmpl-float v5, v14, v45

    if-eqz v5, :cond_39

    const/high16 v5, 0x41a00000    # 20.0f

    add-float v5, v5, v45

    cmpl-float v5, v14, v5

    if-lez v5, :cond_39

    .line 829
    div-float v41, v14, v45

    .line 830
    .restart local v41    # "scaleFactor":F
    move/from16 v0, v45

    float-to-int v5, v0

    div-float v6, v13, v41

    float-to-int v6, v6

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v42

    .line 831
    .local v42, "scaledBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v42

    if-eq v4, v0, :cond_39

    .line 832
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 833
    move-object/from16 v4, v42

    .line 836
    .end local v41    # "scaleFactor":F
    .end local v42    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_39
    if-eqz v4, :cond_3b

    if-eqz v15, :cond_3b

    const/high16 v5, 0x42c80000    # 100.0f

    cmpg-float v5, v13, v5

    if-gez v5, :cond_3b

    const/high16 v5, 0x42c80000    # 100.0f

    cmpg-float v5, v14, v5

    if-gez v5, :cond_3b

    .line 837
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v5, v6, :cond_3a

    .line 838
    const/4 v5, 0x3

    move-object/from16 v0, v36

    iget-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v6, :cond_3c

    const/4 v6, 0x0

    :goto_1b
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 840
    :cond_3a
    const/16 v17, 0x1

    .line 843
    .end local v13    # "bitmapH":F
    .end local v14    # "bitmapW":F
    :cond_3b
    if-nez v17, :cond_7

    move-object/from16 v0, v36

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v5, :cond_7

    .line 844
    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_7

    goto/16 :goto_6

    .line 838
    .restart local v13    # "bitmapH":F
    .restart local v14    # "bitmapW":F
    :cond_3c
    const/4 v6, 0x1

    goto :goto_1b

    .line 852
    .end local v13    # "bitmapH":F
    .end local v14    # "bitmapW":F
    .end local v15    # "blur":Z
    .end local v17    # "blured":Z
    .end local v24    # "delay":I
    .end local v29    # "h_filter":F
    .end local v36    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v45    # "w_filter":F
    :cond_3d
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 600
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v40    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catchall_6
    move-exception v5

    move-object/from16 v39, v40

    .end local v40    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v39    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_9

    .line 597
    .end local v39    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v40    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v25

    move-object/from16 v39, v40

    .end local v40    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v39    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_8

    .end local v39    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v15    # "blur":Z
    .restart local v24    # "delay":I
    .restart local v29    # "h_filter":F
    .restart local v36    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v45    # "w_filter":F
    :cond_3e
    move-object/from16 v4, v31

    .end local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    goto/16 :goto_15
.end method
