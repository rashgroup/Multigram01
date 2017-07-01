.class final Lorg/telegram/messenger/MediaController$21;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$finalProgress:Landroid/app/ProgressDialog;

.field final synthetic val$mime:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$sourceFile:Ljava/io/File;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/io/File;Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2831
    iput p1, p0, Lorg/telegram/messenger/MediaController$21;->val$type:I

    iput-object p2, p0, Lorg/telegram/messenger/MediaController$21;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/MediaController$21;->val$sourceFile:Ljava/io/File;

    iput-object p4, p0, Lorg/telegram/messenger/MediaController$21;->val$finalProgress:Landroid/app/ProgressDialog;

    iput-object p5, p0, Lorg/telegram/messenger/MediaController$21;->val$mime:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 2835
    const/4 v15, 0x0

    .line 2836
    .local v15, "destFile":Ljava/io/File;
    :try_start_0
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MediaController$21;->val$type:I

    if-nez v7, :cond_3

    .line 2837
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->generatePicturePath()Ljava/io/File;

    move-result-object v15

    .line 2860
    :cond_0
    :goto_0
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2861
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    .line 2863
    :cond_1
    const/4 v3, 0x0

    .line 2864
    .local v3, "source":Ljava/nio/channels/FileChannel;
    const/4 v2, 0x0

    .line 2865
    .local v2, "destination":Ljava/nio/channels/FileChannel;
    const/16 v22, 0x1

    .line 2866
    .local v22, "result":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v8

    const-wide/16 v10, 0x1f4

    sub-long v20, v8, v10

    .line 2868
    .local v20, "lastProgress":J
    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/MediaController$21;->val$sourceFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 2869
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 2870
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v24

    .line 2871
    .local v24, "size":J
    const-wide/16 v4, 0x0

    .local v4, "a":J
    :goto_1
    cmp-long v7, v4, v24

    if-gez v7, :cond_8

    .line 2872
    const-wide/16 v8, 0x1000

    sub-long v10, v24, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 2873
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MediaController$21;->val$finalProgress:Landroid/app/ProgressDialog;

    if-eqz v7, :cond_2

    .line 2874
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x1f4

    sub-long/2addr v8, v10

    cmp-long v7, v20, v8

    if-gtz v7, :cond_2

    .line 2875
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 2876
    long-to-float v7, v4

    move-wide/from16 v0, v24

    long-to-float v8, v0

    div-float/2addr v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    float-to-int v0, v7

    move/from16 v19, v0

    .line 2877
    .local v19, "progress":I
    new-instance v7, Lorg/telegram/messenger/MediaController$21$1;

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v7, v0, v1}, Lorg/telegram/messenger/MediaController$21$1;-><init>(Lorg/telegram/messenger/MediaController$21;I)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2871
    .end local v19    # "progress":I
    :cond_2
    const-wide/16 v8, 0x1000

    add-long/2addr v4, v8

    goto :goto_1

    .line 2838
    .end local v2    # "destination":Ljava/nio/channels/FileChannel;
    .end local v3    # "source":Ljava/nio/channels/FileChannel;
    .end local v4    # "a":J
    .end local v20    # "lastProgress":J
    .end local v22    # "result":Z
    .end local v24    # "size":J
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MediaController$21;->val$type:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 2839
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->generateVideoPath()Ljava/io/File;

    move-result-object v15

    goto :goto_0

    .line 2840
    :cond_4
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MediaController$21;->val$type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 2841
    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    .line 2842
    .local v18, "f":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    .line 2843
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MediaController$21;->val$name:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v15    # "destFile":Ljava/io/File;
    .local v16, "destFile":Ljava/io/File;
    move-object/from16 v15, v16

    .line 2844
    .end local v16    # "destFile":Ljava/io/File;
    .restart local v15    # "destFile":Ljava/io/File;
    goto/16 :goto_0

    .end local v18    # "f":Ljava/io/File;
    :cond_5
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MediaController$21;->val$type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    .line 2845
    sget-object v7, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    .line 2846
    .restart local v18    # "f":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z

    .line 2847
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MediaController$21;->val$name:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v15    # "destFile":Ljava/io/File;
    .restart local v16    # "destFile":Ljava/io/File;
    move-object/from16 v15, v16

    .line 2848
    .end local v16    # "destFile":Ljava/io/File;
    .restart local v15    # "destFile":Ljava/io/File;
    goto/16 :goto_0

    .line 2850
    .end local v18    # "f":Ljava/io/File;
    :cond_6
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MediaController$21;->val$type:I

    const/16 v8, 0xa

    if-ne v7, v8, :cond_7

    .line 2851
    new-instance v18, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/Telegram/ApoTheme"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2852
    .restart local v18    # "f":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z

    .line 2853
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MediaController$21;->val$name:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v15    # "destFile":Ljava/io/File;
    .restart local v16    # "destFile":Ljava/io/File;
    move-object/from16 v15, v16

    .line 2854
    .end local v16    # "destFile":Ljava/io/File;
    .restart local v15    # "destFile":Ljava/io/File;
    goto/16 :goto_0

    .end local v18    # "f":Ljava/io/File;
    :cond_7
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MediaController$21;->val$type:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_0

    .line 2855
    new-instance v18, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/Telegram/ApoTheme/JustWall"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2856
    .restart local v18    # "f":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z

    .line 2857
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MediaController$21;->val$name:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v15    # "destFile":Ljava/io/File;
    .restart local v16    # "destFile":Ljava/io/File;
    move-object/from16 v15, v16

    .end local v16    # "destFile":Ljava/io/File;
    .restart local v15    # "destFile":Ljava/io/File;
    goto/16 :goto_0

    .line 2894
    .end local v18    # "f":Ljava/io/File;
    .restart local v2    # "destination":Ljava/nio/channels/FileChannel;
    .restart local v3    # "source":Ljava/nio/channels/FileChannel;
    .restart local v4    # "a":J
    .restart local v20    # "lastProgress":J
    .restart local v22    # "result":Z
    .restart local v24    # "size":J
    :cond_8
    if-eqz v3, :cond_9

    .line 2895
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 2897
    :cond_9
    if-eqz v2, :cond_a

    .line 2898
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 2902
    .end local v4    # "a":J
    .end local v24    # "size":J
    :cond_a
    :goto_2
    if-eqz v22, :cond_b

    .line 2903
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MediaController$21;->val$type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_10

    .line 2904
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v8, "download"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/DownloadManager;

    .line 2905
    .local v6, "downloadManager":Landroid/app/DownloadManager;
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController$21;->val$mime:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v12

    const/4 v14, 0x1

    invoke-virtual/range {v6 .. v14}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2913
    .end local v2    # "destination":Ljava/nio/channels/FileChannel;
    .end local v3    # "source":Ljava/nio/channels/FileChannel;
    .end local v6    # "downloadManager":Landroid/app/DownloadManager;
    .end local v20    # "lastProgress":J
    .end local v22    # "result":Z
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MediaController$21;->val$finalProgress:Landroid/app/ProgressDialog;

    if-eqz v7, :cond_c

    .line 2914
    new-instance v7, Lorg/telegram/messenger/MediaController$21$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lorg/telegram/messenger/MediaController$21$2;-><init>(Lorg/telegram/messenger/MediaController$21;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2925
    :cond_c
    return-void

    .line 2890
    .restart local v2    # "destination":Ljava/nio/channels/FileChannel;
    .restart local v3    # "source":Ljava/nio/channels/FileChannel;
    .restart local v20    # "lastProgress":J
    .restart local v22    # "result":Z
    :catch_0
    move-exception v17

    .line 2891
    .local v17, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v7, "tmessages"

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2892
    const/16 v22, 0x0

    .line 2894
    if-eqz v3, :cond_d

    .line 2895
    :try_start_4
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 2897
    :cond_d
    if-eqz v2, :cond_a

    .line 2898
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 2910
    .end local v2    # "destination":Ljava/nio/channels/FileChannel;
    .end local v3    # "source":Ljava/nio/channels/FileChannel;
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v20    # "lastProgress":J
    .end local v22    # "result":Z
    :catch_1
    move-exception v17

    .line 2911
    .restart local v17    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "tmessages"

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 2894
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v2    # "destination":Ljava/nio/channels/FileChannel;
    .restart local v3    # "source":Ljava/nio/channels/FileChannel;
    .restart local v20    # "lastProgress":J
    .restart local v22    # "result":Z
    :catchall_0
    move-exception v7

    if-eqz v3, :cond_e

    .line 2895
    :try_start_5
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 2897
    :cond_e
    if-eqz v2, :cond_f

    .line 2898
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    :cond_f
    throw v7

    .line 2907
    :cond_10
    invoke-static {v15}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Landroid/net/Uri;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3
.end method
