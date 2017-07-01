.class final Lorg/telegram/messenger/SendMessagesHelper$12;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingAudioDocuments(Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog_id:J

.field final synthetic val$messageObjects:Ljava/util/ArrayList;

.field final synthetic val$reply_to_msg:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;)V
    .locals 0

    .prologue
    .line 3676
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$12;->val$messageObjects:Ljava/util/ArrayList;

    iput-wide p2, p0, Lorg/telegram/messenger/SendMessagesHelper$12;->val$dialog_id:J

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$12;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 3679
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/SendMessagesHelper$12;->val$messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3680
    .local v14, "size":I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_0
    if-ge v2, v14, :cond_3

    .line 3681
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/SendMessagesHelper$12;->val$messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject;

    .line 3682
    .local v10, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v15, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v12, v15, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3683
    .local v12, "originalPath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3685
    .local v7, "f":Ljava/io/File;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/SendMessagesHelper$12;->val$dialog_id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v15, v0

    if-nez v15, :cond_4

    const/4 v9, 0x1

    .line 3688
    .local v9, "isEncrypted":Z
    :goto_1
    if-eqz v12, :cond_0

    .line 3689
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "audio"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3692
    :cond_0
    const/4 v4, 0x0

    .line 3693
    .local v4, "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    if-nez v9, :cond_1

    .line 3694
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v16

    if-nez v9, :cond_5

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v15}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v4

    .end local v4    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3696
    .restart local v4    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    :cond_1
    if-nez v4, :cond_2

    .line 3697
    iget-object v15, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .end local v4    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3700
    .restart local v4    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    :cond_2
    if-eqz v9, :cond_7

    .line 3701
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/SendMessagesHelper$12;->val$dialog_id:J

    move-wide/from16 v16, v0

    const/16 v15, 0x20

    shr-long v16, v16, v15

    move-wide/from16 v0, v16

    long-to-int v8, v0

    .line 3702
    .local v8, "high_id":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v15

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v6

    .line 3703
    .local v6, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v6, :cond_6

    .line 3731
    .end local v4    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v6    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v7    # "f":Ljava/io/File;
    .end local v8    # "high_id":I
    .end local v9    # "isEncrypted":Z
    .end local v10    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v12    # "originalPath":Ljava/lang/String;
    :cond_3
    return-void

    .line 3685
    .restart local v7    # "f":Ljava/io/File;
    .restart local v10    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .restart local v12    # "originalPath":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 3694
    .restart local v4    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .restart local v9    # "isEncrypted":Z
    :cond_5
    const/4 v15, 0x4

    goto :goto_2

    .line 3706
    .restart local v6    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .restart local v8    # "high_id":I
    :cond_6
    iget v15, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v15

    const/16 v16, 0x2e

    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    .line 3707
    const/4 v3, 0x0

    .local v3, "b":I
    :goto_3
    iget-object v15, v4, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v3, v15, :cond_7

    .line 3708
    iget-object v15, v4, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    instance-of v15, v15, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v15, :cond_9

    .line 3709
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio_old;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio_old;-><init>()V

    .line 3710
    .local v11, "old":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio_old;
    iget-object v15, v4, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    iput v15, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio_old;->duration:I

    .line 3711
    iget-object v15, v4, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3712
    iget-object v15, v4, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3719
    .end local v3    # "b":I
    .end local v6    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v8    # "high_id":I
    .end local v11    # "old":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio_old;
    :cond_7
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 3720
    .local v13, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v12, :cond_8

    .line 3721
    const-string/jumbo v15, "originalPath"

    invoke-virtual {v13, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3723
    :cond_8
    move-object v5, v4

    .line 3724
    .local v5, "documentFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    new-instance v15, Lorg/telegram/messenger/SendMessagesHelper$12$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v5, v10, v13}, Lorg/telegram/messenger/SendMessagesHelper$12$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$12;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/MessageObject;Ljava/util/HashMap;)V

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3680
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 3707
    .end local v5    # "documentFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v13    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "b":I
    .restart local v6    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .restart local v8    # "high_id":I
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method
