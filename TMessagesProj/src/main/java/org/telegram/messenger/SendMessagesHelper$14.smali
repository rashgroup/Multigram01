.class final Lorg/telegram/messenger/SendMessagesHelper$14;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingBotContextResult(Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/util/HashMap;JLorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog_id:J

.field final synthetic val$params:Ljava/util/HashMap;

.field final synthetic val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;


# direct methods
.method constructor <init>(Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/util/HashMap;JLorg/telegram/messenger/MessageObject;)V
    .locals 1

    .prologue
    .line 3798
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$params:Ljava/util/HashMap;

    iput-wide p3, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$dialog_id:J

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 3801
    const/4 v14, 0x0

    .line 3802
    .local v14, "finalPath":Ljava/lang/String;
    const/4 v9, 0x0

    .line 3803
    .local v9, "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    const/16 v18, 0x0

    .line 3804
    .local v18, "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 3805
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 3806
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3807
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .end local v9    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3979
    .restart local v9    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    :cond_0
    :goto_0
    move-object v15, v14

    .line 3980
    .local v15, "finalPathFinal":Ljava/lang/String;
    move-object v13, v9

    .line 3981
    .local v13, "finalDocument":Lorg/telegram/tgnet/TLRPC$TL_document;
    move-object/from16 v16, v18

    .line 3982
    .local v16, "finalPhoto":Lorg/telegram/tgnet/TLRPC$TL_photo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$params:Ljava/util/HashMap;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    .line 3983
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$params:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string/jumbo v22, "originalPath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3985
    :cond_1
    new-instance v21, Lorg/telegram/messenger/SendMessagesHelper$14$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v13, v15, v2}, Lorg/telegram/messenger/SendMessagesHelper$14$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$14;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_photo;)V

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3997
    return-void

    .line 3809
    .end local v13    # "finalDocument":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v15    # "finalPathFinal":Ljava/lang/String;
    .end local v16    # "finalPhoto":Lorg/telegram/tgnet/TLRPC$TL_photo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3810
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3811
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v18, v0

    .end local v18    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    check-cast v18, Lorg/telegram/tgnet/TLRPC$TL_photo;

    .restart local v18    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    goto :goto_0

    .line 3815
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 3816
    new-instance v11, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v21

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string/jumbo v24, "file"

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3817
    .local v11, "f":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 3818
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 3822
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v21, -0x1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->hashCode()I

    move-result v23

    sparse-switch v23, :sswitch_data_0

    :cond_4
    :goto_2
    packed-switch v21, :pswitch_data_0

    goto/16 :goto_0

    .line 3829
    :pswitch_0
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_document;

    .end local v9    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    .line 3830
    .restart local v9    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    iput-wide v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    .line 3831
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    .line 3832
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    .line 3833
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_type:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 3834
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    .line 3835
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 3836
    .local v12, "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3838
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v21, -0x1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->hashCode()I

    move-result v23

    sparse-switch v23, :sswitch_data_1

    :cond_5
    :goto_3
    packed-switch v21, :pswitch_data_1

    .line 3943
    :cond_6
    :goto_4
    iget-object v0, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_7

    .line 3944
    const-string/jumbo v21, "file"

    move-object/from16 v0, v21

    iput-object v0, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 3946
    :cond_7
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_8

    .line 3947
    const-string/jumbo v21, "application/octet-stream"

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 3949
    :cond_8
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 3950
    new-instance v21, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct/range {v21 .. v21}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3951
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->w:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 3952
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->h:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 3953
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 3954
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v21, v0

    new-instance v22, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct/range {v22 .. v22}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3955
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v21, v0

    const-string/jumbo v22, "x"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto/16 :goto_0

    .line 3820
    .end local v12    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    goto/16 :goto_1

    .line 3822
    :sswitch_0
    const-string/jumbo v23, "audio"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    const/16 v21, 0x0

    goto/16 :goto_2

    :sswitch_1
    const-string/jumbo v23, "voice"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    const/16 v21, 0x1

    goto/16 :goto_2

    :sswitch_2
    const-string/jumbo v23, "file"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    const/16 v21, 0x2

    goto/16 :goto_2

    :sswitch_3
    const-string/jumbo v23, "video"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    const/16 v21, 0x3

    goto/16 :goto_2

    :sswitch_4
    const-string/jumbo v23, "sticker"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    const/16 v21, 0x4

    goto/16 :goto_2

    :sswitch_5
    const-string/jumbo v23, "gif"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    const/16 v21, 0x5

    goto/16 :goto_2

    :sswitch_6
    const-string/jumbo v23, "photo"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    const/16 v21, 0x6

    goto/16 :goto_2

    .line 3838
    .restart local v12    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    :sswitch_7
    const-string/jumbo v23, "gif"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    const/16 v21, 0x0

    goto/16 :goto_3

    :sswitch_8
    const-string/jumbo v23, "voice"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    const/16 v21, 0x1

    goto/16 :goto_3

    :sswitch_9
    const-string/jumbo v23, "audio"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    const/16 v21, 0x2

    goto/16 :goto_3

    :sswitch_a
    const-string/jumbo v23, "file"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    const/16 v21, 0x3

    goto/16 :goto_3

    :sswitch_b
    const-string/jumbo v23, "video"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    const/16 v21, 0x4

    goto/16 :goto_3

    :sswitch_c
    const-string/jumbo v23, "sticker"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    const/16 v21, 0x5

    goto/16 :goto_3

    .line 3840
    :pswitch_1
    const-string/jumbo v21, "animation.gif"

    move-object/from16 v0, v21

    iput-object v0, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 3841
    const-string/jumbo v21, "mp4"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 3842
    const-string/jumbo v21, "video/mp4"

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 3843
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    new-instance v22, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    invoke-direct/range {v22 .. v22}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;-><init>()V

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3849
    :goto_5
    :try_start_0
    const-string/jumbo v21, "mp4"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 3850
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-static {v14, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 3854
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    :goto_6
    if-eqz v8, :cond_6

    .line 3855
    const/high16 v21, 0x42b40000    # 90.0f

    const/high16 v22, 0x42b40000    # 90.0f

    const/16 v23, 0x37

    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v8, v0, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3856
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 3858
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v10

    .line 3859
    .local v10, "e":Ljava/lang/Throwable;
    const-string/jumbo v21, "tmessages"

    move-object/from16 v0, v21

    invoke-static {v0, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 3845
    .end local v10    # "e":Ljava/lang/Throwable;
    :cond_a
    const-string/jumbo v21, "image/gif"

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    goto :goto_5

    .line 3852
    :cond_b
    const/16 v21, 0x0

    const/high16 v22, 0x42b40000    # 90.0f

    const/high16 v23, 0x42b40000    # 90.0f

    const/16 v24, 0x1

    :try_start_1
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v14, v0, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_6

    .line 3864
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_2
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 3865
    .local v7, "audio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->duration:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    .line 3866
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->voice:Z

    .line 3867
    const-string/jumbo v21, "audio.ogg"

    move-object/from16 v0, v21

    iput-object v0, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 3868
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3870
    new-instance v21, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct/range {v21 .. v21}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3871
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v21, v0

    const-string/jumbo v22, "s"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto/16 :goto_4

    .line 3876
    .end local v7    # "audio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    :pswitch_3
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 3877
    .restart local v7    # "audio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->duration:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    .line 3878
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->title:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->title:Ljava/lang/String;

    .line 3879
    iget v0, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    move/from16 v21, v0

    or-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    .line 3880
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->description:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c

    .line 3881
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->description:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->performer:Ljava/lang/String;

    .line 3882
    iget v0, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    move/from16 v21, v0

    or-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    .line 3884
    :cond_c
    const-string/jumbo v21, "audio.mp3"

    move-object/from16 v0, v21

    iput-object v0, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 3885
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3887
    new-instance v21, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct/range {v21 .. v21}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3888
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v21, v0

    const-string/jumbo v22, "s"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto/16 :goto_4

    .line 3893
    .end local v7    # "audio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_type:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x2f

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    .line 3894
    .local v17, "idx":I
    const/16 v21, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    .line 3895
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "file."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_type:Ljava/lang/String;

    move-object/from16 v22, v0

    add-int/lit8 v23, v17, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    goto/16 :goto_4

    .line 3897
    :cond_d
    const-string/jumbo v21, "file"

    move-object/from16 v0, v21

    iput-object v0, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    goto/16 :goto_4

    .line 3902
    .end local v17    # "idx":I
    :pswitch_5
    const-string/jumbo v21, "video.mp4"

    move-object/from16 v0, v21

    iput-object v0, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 3903
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    .line 3904
    .local v6, "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->w:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 3905
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->h:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    .line 3906
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->duration:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->duration:I

    .line 3907
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3909
    :try_start_2
    new-instance v21, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v22

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb_url:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb_url:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string/jumbo v25, "jpg"

    invoke-static/range {v24 .. v25}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    .line 3910
    .local v20, "thumbPath":Ljava/lang/String;
    const/16 v21, 0x0

    const/high16 v22, 0x42b40000    # 90.0f

    const/high16 v23, 0x42b40000    # 90.0f

    const/16 v24, 0x1

    invoke-static/range {v20 .. v24}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 3911
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_6

    .line 3912
    const/high16 v21, 0x42b40000    # 90.0f

    const/high16 v22, 0x42b40000    # 90.0f

    const/16 v23, 0x37

    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v8, v0, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3913
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 3915
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v20    # "thumbPath":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 3916
    .restart local v10    # "e":Ljava/lang/Throwable;
    const-string/jumbo v21, "tmessages"

    move-object/from16 v0, v21

    invoke-static {v0, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 3921
    .end local v6    # "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    .end local v10    # "e":Ljava/lang/Throwable;
    :pswitch_6
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;-><init>()V

    .line 3922
    .local v5, "attributeSticker":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;
    const-string/jumbo v21, ""

    move-object/from16 v0, v21

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->alt:Ljava/lang/String;

    .line 3923
    new-instance v21, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct/range {v21 .. v21}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    move-object/from16 v0, v21

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 3924
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3925
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;-><init>()V

    .line 3926
    .local v4, "attributeImageSize":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->w:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;->w:I

    .line 3927
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->h:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;->h:I

    .line 3928
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3929
    const-string/jumbo v21, "sticker.webp"

    move-object/from16 v0, v21

    iput-object v0, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 3931
    :try_start_3
    new-instance v21, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v22

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb_url:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb_url:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string/jumbo v25, "webp"

    invoke-static/range {v24 .. v25}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    .line 3932
    .restart local v20    # "thumbPath":Ljava/lang/String;
    const/16 v21, 0x0

    const/high16 v22, 0x42b40000    # 90.0f

    const/high16 v23, 0x42b40000    # 90.0f

    const/16 v24, 0x1

    invoke-static/range {v20 .. v24}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 3933
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_6

    .line 3934
    const/high16 v21, 0x42b40000    # 90.0f

    const/high16 v22, 0x42b40000    # 90.0f

    const/16 v23, 0x37

    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v8, v0, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3935
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    .line 3937
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v20    # "thumbPath":Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 3938
    .restart local v10    # "e":Ljava/lang/Throwable;
    const-string/jumbo v21, "tmessages"

    move-object/from16 v0, v21

    invoke-static {v0, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 3960
    .end local v4    # "attributeImageSize":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;
    .end local v5    # "attributeSticker":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;
    .end local v10    # "e":Ljava/lang/Throwable;
    .end local v12    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    :pswitch_7
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_e

    .line 3961
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Lorg/telegram/messenger/SendMessagesHelper;->generatePhotoSizes(Ljava/lang/String;Landroid/net/Uri;)Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-result-object v18

    .line 3963
    :cond_e
    if-nez v18, :cond_0

    .line 3964
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_photo;

    .end local v18    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    .line 3965
    .restart local v18    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_photo;->date:I

    .line 3966
    new-instance v19, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    .line 3967
    .local v19, "photoSize":Lorg/telegram/tgnet/TLRPC$TL_photoSize;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->w:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->w:I

    .line 3968
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$14;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->h:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->h:I

    .line 3969
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->size:I

    .line 3970
    new-instance v21, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct/range {v21 .. v21}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3971
    const-string/jumbo v21, "x"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->type:Ljava/lang/String;

    .line 3972
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3822
    :sswitch_data_0
    .sparse-switch
        -0x70aaf6c3 -> :sswitch_4
        0x18fc4 -> :sswitch_5
        0x2ff57c -> :sswitch_2
        0x58d9bd6 -> :sswitch_0
        0x65b3e32 -> :sswitch_6
        0x6b0147b -> :sswitch_3
        0x6b2e132 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 3838
    :sswitch_data_1
    .sparse-switch
        -0x70aaf6c3 -> :sswitch_c
        0x18fc4 -> :sswitch_7
        0x2ff57c -> :sswitch_a
        0x58d9bd6 -> :sswitch_9
        0x6b0147b -> :sswitch_b
        0x6b2e132 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
