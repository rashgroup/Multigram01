.class final Lorg/telegram/messenger/SendMessagesHelper$18;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingVideo(Ljava/lang/String;JJIILorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog_id:J

.field final synthetic val$duration:J

.field final synthetic val$estimatedSize:J

.field final synthetic val$height:I

.field final synthetic val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

.field final synthetic val$videoPath:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(JLorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JIIJLorg/telegram/messenger/MessageObject;)V
    .locals 1

    .prologue
    .line 4335
    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$dialog_id:J

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$videoPath:Ljava/lang/String;

    iput-wide p5, p0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$duration:J

    iput p7, p0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$height:I

    iput p8, p0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$width:I

    iput-wide p9, p0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$estimatedSize:J

    iput-object p11, p0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 34

    .prologue
    .line 4339
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$dialog_id:J

    long-to-int v4, v4

    if-nez v4, :cond_6

    const/16 v21, 0x1

    .line 4341
    .local v21, "isEncrypted":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$videoPath:Ljava/lang/String;

    const-string/jumbo v5, "mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 4342
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$videoPath:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 4343
    .local v28, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$videoPath:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 4344
    .local v25, "originalPath":Ljava/lang/String;
    new-instance v30, Ljava/io/File;

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4345
    .local v30, "temp":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 4346
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v4, :cond_1

    .line 4347
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$duration:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v6, v5, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v6, v5, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 4348
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v4, v4, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v5, v5, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    if-ne v4, v5, :cond_1

    .line 4349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v5, v5, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 4352
    :cond_1
    const/4 v14, 0x0

    .line 4353
    .local v14, "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    if-nez v21, :cond_2

    .line 4356
    :cond_2
    if-nez v14, :cond_4

    .line 4357
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$videoPath:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v31

    .line 4358
    .local v31, "thumb":Landroid/graphics/Bitmap;
    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/16 v6, 0x37

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-static {v0, v4, v5, v6, v1}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v29

    .line 4359
    .local v29, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_document;

    .end local v14    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    .line 4360
    .restart local v14    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    move-object/from16 v0, v29

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4361
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v4, :cond_7

    .line 4362
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4363
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "s"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 4367
    :goto_1
    const-string/jumbo v4, "video/mp4"

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 4368
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 4369
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    .line 4370
    .local v12, "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4371
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v4, :cond_9

    .line 4372
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$duration:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->duration:I

    .line 4373
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v4, v4, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v4, v4, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_8

    .line 4374
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$height:I

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 4375
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$width:I

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    .line 4380
    :goto_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$estimatedSize:J

    long-to-int v4, v4

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    .line 4381
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "-2147483648_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 4382
    .local v17, "fileName":Ljava/lang/String;
    sget v4, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 4383
    new-instance v13, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-direct {v13, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4384
    .local v13, "cacheFile":Ljava/io/File;
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 4385
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    .line 4435
    .end local v12    # "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    .end local v13    # "cacheFile":Ljava/io/File;
    .end local v17    # "fileName":Ljava/lang/String;
    .end local v29    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v31    # "thumb":Landroid/graphics/Bitmap;
    :cond_4
    :goto_3
    move-object/from16 v32, v14

    .line 4436
    .local v32, "videoFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    move-object/from16 v26, v25

    .line 4437
    .local v26, "originalPathFinal":Ljava/lang/String;
    move-object/from16 v18, v28

    .line 4438
    .local v18, "finalPath":Ljava/lang/String;
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 4439
    .local v27, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v25, :cond_5

    .line 4440
    const-string/jumbo v4, "originalPath"

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4442
    :cond_5
    new-instance v4, Lorg/telegram/messenger/SendMessagesHelper$18$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v18

    move-object/from16 v3, v27

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/telegram/messenger/SendMessagesHelper$18$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$18;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4451
    .end local v14    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v18    # "finalPath":Ljava/lang/String;
    .end local v25    # "originalPath":Ljava/lang/String;
    .end local v26    # "originalPathFinal":Ljava/lang/String;
    .end local v27    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v28    # "path":Ljava/lang/String;
    .end local v30    # "temp":Ljava/io/File;
    .end local v32    # "videoFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    :goto_4
    return-void

    .line 4339
    .end local v21    # "isEncrypted":Z
    :cond_6
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 4365
    .restart local v14    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .restart local v21    # "isEncrypted":Z
    .restart local v25    # "originalPath":Ljava/lang/String;
    .restart local v28    # "path":Ljava/lang/String;
    .restart local v29    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v30    # "temp":Ljava/io/File;
    .restart local v31    # "thumb":Landroid/graphics/Bitmap;
    :cond_7
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "s"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto/16 :goto_1

    .line 4377
    .restart local v12    # "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$width:I

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 4378
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$height:I

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    goto/16 :goto_2

    .line 4387
    :cond_9
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4388
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    .line 4390
    :cond_a
    const/16 v20, 0x0

    .line 4392
    .local v20, "infoObtained":Z
    const/16 v22, 0x0

    .line 4394
    .local v22, "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    new-instance v23, Landroid/media/MediaMetadataRetriever;

    invoke-direct/range {v23 .. v23}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4395
    .end local v22    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .local v23, "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$videoPath:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 4396
    const/16 v4, 0x12

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v33

    .line 4397
    .local v33, "width":Ljava/lang/String;
    if-eqz v33, :cond_b

    .line 4398
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 4400
    :cond_b
    const/16 v4, 0x13

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v19

    .line 4401
    .local v19, "height":Ljava/lang/String;
    if-eqz v19, :cond_c

    .line 4402
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    .line 4404
    :cond_c
    const/16 v4, 0x9

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v15

    .line 4405
    .local v15, "duration":Ljava/lang/String;
    if-eqz v15, :cond_d

    .line 4406
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->duration:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4408
    :cond_d
    const/16 v20, 0x1

    .line 4413
    if-eqz v23, :cond_e

    .line 4414
    :try_start_2
    invoke-virtual/range {v23 .. v23}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_e
    move-object/from16 v22, v23

    .line 4420
    .end local v15    # "duration":Ljava/lang/String;
    .end local v19    # "height":Ljava/lang/String;
    .end local v23    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .end local v33    # "width":Ljava/lang/String;
    .restart local v22    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    :cond_f
    :goto_5
    if-nez v20, :cond_4

    .line 4422
    :try_start_3
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$videoPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v24

    .line 4423
    .local v24, "mp":Landroid/media/MediaPlayer;
    if-eqz v24, :cond_4

    .line 4424
    invoke-virtual/range {v24 .. v24}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->duration:I

    .line 4425
    invoke-virtual/range {v24 .. v24}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 4426
    invoke-virtual/range {v24 .. v24}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    .line 4427
    invoke-virtual/range {v24 .. v24}, Landroid/media/MediaPlayer;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 4429
    .end local v24    # "mp":Landroid/media/MediaPlayer;
    :catch_0
    move-exception v16

    .line 4430
    .local v16, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 4416
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v22    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v15    # "duration":Ljava/lang/String;
    .restart local v19    # "height":Ljava/lang/String;
    .restart local v23    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v33    # "width":Ljava/lang/String;
    :catch_1
    move-exception v16

    .line 4417
    .restart local v16    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v22, v23

    .line 4419
    .end local v23    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v22    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_5

    .line 4409
    .end local v15    # "duration":Ljava/lang/String;
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v19    # "height":Ljava/lang/String;
    .end local v33    # "width":Ljava/lang/String;
    :catch_2
    move-exception v16

    .line 4410
    .restart local v16    # "e":Ljava/lang/Exception;
    :goto_6
    :try_start_4
    const-string/jumbo v4, "tmessages"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4413
    if-eqz v22, :cond_f

    .line 4414
    :try_start_5
    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    .line 4416
    :catch_3
    move-exception v16

    .line 4417
    const-string/jumbo v4, "tmessages"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 4412
    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 4413
    :goto_7
    if-eqz v22, :cond_10

    .line 4414
    :try_start_6
    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 4418
    :cond_10
    :goto_8
    throw v4

    .line 4416
    :catch_4
    move-exception v16

    .line 4417
    .restart local v16    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "tmessages"

    move-object/from16 v0, v16

    invoke-static {v5, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 4449
    .end local v12    # "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    .end local v14    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v20    # "infoObtained":Z
    .end local v22    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .end local v25    # "originalPath":Ljava/lang/String;
    .end local v28    # "path":Ljava/lang/String;
    .end local v29    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v30    # "temp":Ljava/io/File;
    .end local v31    # "thumb":Landroid/graphics/Bitmap;
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$videoPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$videoPath:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$dialog_id:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    const/4 v11, 0x0

    # invokes: Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocumentInternal(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z
    invoke-static/range {v4 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->access$1000(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z

    goto/16 :goto_4

    .line 4412
    .restart local v12    # "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    .restart local v14    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .restart local v20    # "infoObtained":Z
    .restart local v23    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v25    # "originalPath":Ljava/lang/String;
    .restart local v28    # "path":Ljava/lang/String;
    .restart local v29    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v30    # "temp":Ljava/io/File;
    .restart local v31    # "thumb":Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v4

    move-object/from16 v22, v23

    .end local v23    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v22    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_7

    .line 4409
    .end local v22    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v23    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    :catch_5
    move-exception v16

    move-object/from16 v22, v23

    .end local v23    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v22    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_6
.end method
