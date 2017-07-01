.class final Lorg/telegram/messenger/SendMessagesHelper$15;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhotosSearch(Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog_id:J

.field final synthetic val$photos:Ljava/util/ArrayList;

.field final synthetic val$reply_to_msg:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(JLjava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .prologue
    .line 4026
    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$dialog_id:J

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$photos:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    .prologue
    .line 4029
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$dialog_id:J

    long-to-int v4, v4

    if-nez v4, :cond_7

    const/16 v18, 0x1

    .line 4030
    .local v18, "isEncrypted":Z
    :goto_0
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$photos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_17

    .line 4031
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$photos:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 4032
    .local v8, "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    iget v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    .line 4033
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 4034
    .local v9, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 4036
    .local v14, "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    iget-object v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v4, :cond_8

    .line 4037
    iget-object v14, v8, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .end local v14    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 4038
    .restart local v14    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    const/4 v4, 0x1

    invoke-static {v14, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v12

    .line 4049
    .local v12, "cacheFile":Ljava/io/File;
    :goto_2
    if-nez v14, :cond_3

    .line 4050
    iget-object v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 4051
    const-string/jumbo v4, "url"

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4053
    :cond_0
    const/16 v26, 0x0

    .line 4054
    .local v26, "thumbFile":Ljava/io/File;
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_document;

    .end local v14    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    .line 4055
    .restart local v14    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    const-wide/16 v4, 0x0

    iput-wide v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    .line 4056
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    .line 4057
    new-instance v17, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct/range {v17 .. v17}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 4058
    .local v17, "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    const-string/jumbo v4, "animation.gif"

    move-object/from16 v0, v17

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 4059
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4060
    iget v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    .line 4061
    const/4 v4, 0x0

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    .line 4062
    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4063
    const-string/jumbo v4, "video/mp4"

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 4064
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4068
    :goto_3
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4069
    move-object/from16 v26, v12

    .line 4073
    :goto_4
    if-nez v26, :cond_1

    .line 4074
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    const-string/jumbo v27, "jpg"

    move-object/from16 v0, v27

    invoke-static {v5, v0}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 4075
    .local v25, "thumb":Ljava/lang/String;
    new-instance v26, Ljava/io/File;

    .end local v26    # "thumbFile":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4076
    .restart local v26    # "thumbFile":Ljava/io/File;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4077
    const/16 v26, 0x0

    .line 4080
    .end local v25    # "thumb":Ljava/lang/String;
    :cond_1
    if-eqz v26, :cond_2

    .line 4083
    :try_start_0
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 4084
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 4088
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    :goto_5
    if-eqz v11, :cond_2

    .line 4089
    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/16 v27, 0x37

    move/from16 v0, v27

    move/from16 v1, v18

    invoke-static {v11, v4, v5, v0, v1}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4090
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4096
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    :goto_6
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v4, :cond_3

    .line 4097
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4098
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 4099
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 4100
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v5, 0x0

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 4101
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 4102
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "x"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 4106
    .end local v17    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    .end local v26    # "thumbFile":Ljava/io/File;
    :cond_3
    iget-object v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 4107
    iget-object v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    .line 4109
    :cond_4
    move-object v15, v14

    .line 4110
    .local v15, "documentFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    iget-object v0, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 4111
    .local v21, "originalPathFinal":Ljava/lang/String;
    if-nez v12, :cond_e

    iget-object v0, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 4112
    .local v22, "pathFinal":Ljava/lang/String;
    :goto_7
    if-eqz v9, :cond_5

    iget-object v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 4113
    const-string/jumbo v4, "originalPath"

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4115
    :cond_5
    new-instance v4, Lorg/telegram/messenger/SendMessagesHelper$15$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v4, v0, v15, v1, v9}, Lorg/telegram/messenger/SendMessagesHelper$15$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$15;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4030
    .end local v9    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "cacheFile":Ljava/io/File;
    .end local v14    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v15    # "documentFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v21    # "originalPathFinal":Ljava/lang/String;
    .end local v22    # "pathFinal":Ljava/lang/String;
    :cond_6
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 4029
    .end local v8    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    .end local v10    # "a":I
    .end local v18    # "isEncrypted":Z
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 4040
    .restart local v8    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    .restart local v9    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "a":I
    .restart local v14    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .restart local v18    # "isEncrypted":Z
    :cond_8
    if-nez v18, :cond_9

    .line 4041
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    iget-object v0, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    move-object/from16 v27, v0

    if-nez v18, :cond_a

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, v27

    invoke-virtual {v5, v0, v4}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Document;

    .line 4042
    .local v13, "doc":Lorg/telegram/tgnet/TLRPC$Document;
    instance-of v4, v13, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v4, :cond_9

    move-object v14, v13

    .line 4043
    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 4046
    .end local v13    # "doc":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    const-string/jumbo v27, "jpg"

    move-object/from16 v0, v27

    invoke-static {v5, v0}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 4047
    .local v19, "md5":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-direct {v12, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v12    # "cacheFile":Ljava/io/File;
    goto/16 :goto_2

    .line 4041
    .end local v12    # "cacheFile":Ljava/io/File;
    .end local v19    # "md5":Ljava/lang/String;
    :cond_a
    const/4 v4, 0x4

    goto :goto_9

    .line 4066
    .restart local v12    # "cacheFile":Ljava/io/File;
    .restart local v17    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    .restart local v26    # "thumbFile":Ljava/io/File;
    :cond_b
    const-string/jumbo v4, "image/gif"

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    goto/16 :goto_3

    .line 4071
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 4086
    :cond_d
    :try_start_1
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v27, 0x42b40000    # 90.0f

    const/high16 v28, 0x42b40000    # 90.0f

    const/16 v29, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v4, v5, v0, v1, v2}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .restart local v11    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_5

    .line 4092
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v16

    .line 4093
    .local v16, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 4111
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v17    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    .end local v26    # "thumbFile":Ljava/io/File;
    .restart local v15    # "documentFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    .restart local v21    # "originalPathFinal":Ljava/lang/String;
    :cond_e
    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_7

    .line 4122
    .end local v9    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "cacheFile":Ljava/io/File;
    .end local v14    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v15    # "documentFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v21    # "originalPathFinal":Ljava/lang/String;
    :cond_f
    const/16 v20, 0x1

    .line 4123
    .local v20, "needDownloadHttp":Z
    const/16 v23, 0x0

    .line 4124
    .local v23, "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    if-nez v18, :cond_10

    .line 4125
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    iget-object v0, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    move-object/from16 v27, v0

    if-nez v18, :cond_16

    const/4 v4, 0x0

    :goto_a
    move-object/from16 v0, v27

    invoke-virtual {v5, v0, v4}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v23

    .end local v23    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    check-cast v23, Lorg/telegram/tgnet/TLRPC$TL_photo;

    .line 4127
    .restart local v23    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    :cond_10
    if-nez v23, :cond_13

    .line 4128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    const-string/jumbo v27, "jpg"

    move-object/from16 v0, v27

    invoke-static {v5, v0}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 4129
    .restart local v19    # "md5":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-direct {v12, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4130
    .restart local v12    # "cacheFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v28, 0x0

    cmp-long v4, v4, v28

    if-eqz v4, :cond_11

    .line 4131
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v27, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v0}, Lorg/telegram/messenger/SendMessagesHelper;->generatePhotoSizes(Ljava/lang/String;Landroid/net/Uri;)Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-result-object v23

    .line 4132
    if-eqz v23, :cond_11

    .line 4133
    const/16 v20, 0x0

    .line 4136
    :cond_11
    if-nez v23, :cond_13

    .line 4137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    const-string/jumbo v27, "jpg"

    move-object/from16 v0, v27

    invoke-static {v5, v0}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 4138
    new-instance v12, Ljava/io/File;

    .end local v12    # "cacheFile":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-direct {v12, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4139
    .restart local v12    # "cacheFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 4140
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v27, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v0}, Lorg/telegram/messenger/SendMessagesHelper;->generatePhotoSizes(Ljava/lang/String;Landroid/net/Uri;)Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-result-object v23

    .line 4142
    :cond_12
    if-nez v23, :cond_13

    .line 4143
    new-instance v23, Lorg/telegram/tgnet/TLRPC$TL_photo;

    .end local v23    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    invoke-direct/range {v23 .. v23}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    .line 4144
    .restart local v23    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    move-object/from16 v0, v23

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->date:I

    .line 4145
    new-instance v24, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct/range {v24 .. v24}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    .line 4146
    .local v24, "photoSize":Lorg/telegram/tgnet/TLRPC$TL_photoSize;
    iget v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    move-object/from16 v0, v24

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->w:I

    .line 4147
    iget v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    move-object/from16 v0, v24

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->h:I

    .line 4148
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->size:I

    .line 4149
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    move-object/from16 v0, v24

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 4150
    const-string/jumbo v4, "x"

    move-object/from16 v0, v24

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->type:Ljava/lang/String;

    .line 4151
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4155
    .end local v12    # "cacheFile":Ljava/io/File;
    .end local v19    # "md5":Ljava/lang/String;
    .end local v24    # "photoSize":Lorg/telegram/tgnet/TLRPC$TL_photoSize;
    :cond_13
    if-eqz v23, :cond_6

    .line 4156
    iget-object v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    if-eqz v4, :cond_14

    .line 4157
    iget-object v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    .line 4159
    :cond_14
    move-object/from16 v6, v23

    .line 4160
    .local v6, "photoFinal":Lorg/telegram/tgnet/TLRPC$TL_photo;
    move/from16 v7, v20

    .line 4161
    .local v7, "needDownloadHttpFinal":Z
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 4162
    .restart local v9    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    if-eqz v4, :cond_15

    .line 4163
    const-string/jumbo v4, "originalPath"

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4165
    :cond_15
    new-instance v4, Lorg/telegram/messenger/SendMessagesHelper$15$2;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/SendMessagesHelper$15$2;-><init>(Lorg/telegram/messenger/SendMessagesHelper$15;Lorg/telegram/tgnet/TLRPC$TL_photo;ZLorg/telegram/messenger/MediaController$SearchImage;Ljava/util/HashMap;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    .line 4125
    .end local v6    # "photoFinal":Lorg/telegram/tgnet/TLRPC$TL_photo;
    .end local v7    # "needDownloadHttpFinal":Z
    .end local v9    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_16
    const/4 v4, 0x3

    goto/16 :goto_a

    .line 4174
    .end local v8    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    .end local v20    # "needDownloadHttp":Z
    .end local v23    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    :cond_17
    return-void
.end method
