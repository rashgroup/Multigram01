.class final Lorg/telegram/messenger/SendMessagesHelper$17;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$captions:Ljava/util/ArrayList;

.field final synthetic val$dialog_id:J

.field final synthetic val$pathsCopy:Ljava/util/ArrayList;

.field final synthetic val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$urisCopy:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .prologue
    .line 4230
    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$17;->val$dialog_id:J

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$17;->val$pathsCopy:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$17;->val$urisCopy:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$17;->val$captions:Ljava/util/ArrayList;

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$17;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 4233
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/SendMessagesHelper$17;->val$dialog_id:J

    long-to-int v2, v2

    if-nez v2, :cond_6

    const/4 v13, 0x1

    .line 4235
    .local v13, "isEncrypted":Z
    :goto_0
    const/16 v19, 0x0

    .line 4236
    .local v19, "sendAsDocuments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v21, 0x0

    .line 4237
    .local v21, "sendAsDocumentsOriginal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v20, 0x0

    .line 4238
    .local v20, "sendAsDocumentsCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$17;->val$pathsCopy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$17;->val$pathsCopy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 4239
    .local v11, "count":I
    :goto_1
    const/16 v16, 0x0

    .line 4240
    .local v16, "path":Ljava/lang/String;
    const/16 v24, 0x0

    .line 4241
    .local v24, "uri":Landroid/net/Uri;
    const/4 v5, 0x0

    .line 4242
    .local v5, "extension":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_2
    if-ge v10, v11, :cond_15

    .line 4243
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$17;->val$pathsCopy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 4244
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$17;->val$pathsCopy:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "path":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 4249
    .restart local v16    # "path":Ljava/lang/String;
    :cond_0
    :goto_3
    move-object/from16 v14, v16

    .line 4250
    .local v14, "originalPath":Ljava/lang/String;
    move-object/from16 v23, v16

    .line 4251
    .local v23, "tempPath":Ljava/lang/String;
    if-nez v23, :cond_1

    if-eqz v24, :cond_1

    .line 4252
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v23

    .line 4253
    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    .line 4256
    :cond_1
    const/4 v12, 0x0

    .line 4257
    .local v12, "isDocument":Z
    if-eqz v23, :cond_a

    const-string/jumbo v2, ".gif"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, ".webp"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4258
    :cond_2
    const-string/jumbo v2, ".gif"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4259
    const-string/jumbo v5, "gif"

    .line 4263
    :goto_4
    const/4 v12, 0x1

    .line 4278
    :cond_3
    :goto_5
    if-eqz v12, :cond_d

    .line 4279
    if-nez v19, :cond_4

    .line 4280
    new-instance v19, Ljava/util/ArrayList;

    .end local v19    # "sendAsDocuments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 4281
    .restart local v19    # "sendAsDocuments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/ArrayList;

    .end local v21    # "sendAsDocumentsOriginal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 4282
    .restart local v21    # "sendAsDocumentsOriginal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    .end local v20    # "sendAsDocumentsCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 4284
    .restart local v20    # "sendAsDocumentsCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4285
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4286
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$17;->val$captions:Ljava/util/ArrayList;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$17;->val$captions:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_6
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4242
    :cond_5
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 4233
    .end local v5    # "extension":Ljava/lang/String;
    .end local v10    # "a":I
    .end local v11    # "count":I
    .end local v12    # "isDocument":Z
    .end local v13    # "isEncrypted":Z
    .end local v14    # "originalPath":Ljava/lang/String;
    .end local v16    # "path":Ljava/lang/String;
    .end local v19    # "sendAsDocuments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "sendAsDocumentsCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "sendAsDocumentsOriginal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v23    # "tempPath":Ljava/lang/String;
    .end local v24    # "uri":Landroid/net/Uri;
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 4238
    .restart local v13    # "isEncrypted":Z
    .restart local v19    # "sendAsDocuments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "sendAsDocumentsCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "sendAsDocumentsOriginal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$17;->val$urisCopy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    goto/16 :goto_1

    .line 4245
    .restart local v5    # "extension":Ljava/lang/String;
    .restart local v10    # "a":I
    .restart local v11    # "count":I
    .restart local v16    # "path":Ljava/lang/String;
    .restart local v24    # "uri":Landroid/net/Uri;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$17;->val$urisCopy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4246
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$17;->val$urisCopy:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    .end local v24    # "uri":Landroid/net/Uri;
    check-cast v24, Landroid/net/Uri;

    .restart local v24    # "uri":Landroid/net/Uri;
    goto/16 :goto_3

    .line 4261
    .restart local v12    # "isDocument":Z
    .restart local v14    # "originalPath":Ljava/lang/String;
    .restart local v23    # "tempPath":Ljava/lang/String;
    :cond_9
    const-string/jumbo v5, "webp"

    goto :goto_4

    .line 4264
    :cond_a
    if-nez v23, :cond_3

    if-eqz v24, :cond_3

    .line 4265
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MediaController;->isGif(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4266
    const/4 v12, 0x1

    .line 4267
    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    .line 4268
    const-string/jumbo v2, "gif"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lorg/telegram/messenger/MediaController;->copyFileToCache(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 4269
    const-string/jumbo v5, "gif"

    goto :goto_5

    .line 4270
    :cond_b
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MediaController;->isWebp(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4271
    const/4 v12, 0x1

    .line 4272
    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    .line 4273
    const-string/jumbo v2, "webp"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lorg/telegram/messenger/MediaController;->copyFileToCache(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 4274
    const-string/jumbo v5, "webp"

    goto/16 :goto_5

    .line 4286
    :cond_c
    const/4 v2, 0x0

    goto :goto_6

    .line 4288
    :cond_d
    if-eqz v23, :cond_12

    .line 4289
    new-instance v22, Ljava/io/File;

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4290
    .local v22, "temp":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 4294
    .end local v22    # "temp":Ljava/io/File;
    :goto_8
    const/16 v17, 0x0

    .line 4295
    .local v17, "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    if-nez v13, :cond_e

    .line 4296
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    if-nez v13, :cond_13

    const/4 v2, 0x0

    :goto_9
    invoke-virtual {v3, v14, v2}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v17

    .end local v17    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    check-cast v17, Lorg/telegram/tgnet/TLRPC$TL_photo;

    .line 4297
    .restart local v17    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    if-nez v17, :cond_e

    if-eqz v24, :cond_e

    .line 4298
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    if-nez v13, :cond_14

    const/4 v2, 0x0

    :goto_a
    invoke-virtual {v3, v4, v2}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v17

    .end local v17    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    check-cast v17, Lorg/telegram/tgnet/TLRPC$TL_photo;

    .line 4301
    .restart local v17    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    :cond_e
    if-nez v17, :cond_f

    .line 4302
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->generatePhotoSizes(Ljava/lang/String;Landroid/net/Uri;)Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-result-object v17

    .line 4304
    :cond_f
    if-eqz v17, :cond_5

    .line 4305
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$17;->val$captions:Ljava/util/ArrayList;

    if-eqz v2, :cond_10

    .line 4306
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$17;->val$captions:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    .line 4308
    :cond_10
    move-object/from16 v18, v17

    .line 4309
    .local v18, "photoFinal":Lorg/telegram/tgnet/TLRPC$TL_photo;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 4310
    .local v15, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v14, :cond_11

    .line 4311
    const-string/jumbo v2, "originalPath"

    invoke-virtual {v15, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4313
    :cond_11
    new-instance v2, Lorg/telegram/messenger/SendMessagesHelper$17$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1, v15}, Lorg/telegram/messenger/SendMessagesHelper$17$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$17;Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/util/HashMap;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    .line 4292
    .end local v15    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    .end local v18    # "photoFinal":Lorg/telegram/tgnet/TLRPC$TL_photo;
    :cond_12
    const/4 v14, 0x0

    goto :goto_8

    .line 4296
    .restart local v17    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    :cond_13
    const/4 v2, 0x3

    goto :goto_9

    .line 4298
    :cond_14
    const/4 v2, 0x3

    goto :goto_a

    .line 4322
    .end local v12    # "isDocument":Z
    .end local v14    # "originalPath":Ljava/lang/String;
    .end local v17    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    .end local v23    # "tempPath":Ljava/lang/String;
    :cond_15
    if-eqz v19, :cond_16

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 4323
    const/4 v10, 0x0

    :goto_b
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_16

    .line 4324
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/SendMessagesHelper$17;->val$dialog_id:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/SendMessagesHelper$17;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    # invokes: Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocumentInternal(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z
    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->access$1000(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z

    .line 4323
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 4327
    :cond_16
    return-void
.end method
