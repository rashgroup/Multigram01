.class public Lorg/telegram/tgnet/TLRPC$TL_message_layer47;
.super Lorg/telegram/tgnet/TLRPC$TL_message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_message_layer47"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20325
    const v0, -0x366d1ea4    # -1203243.5f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20324
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 12
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 20328
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    .line 20329
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_7

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->unread:Z

    .line 20330
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_8

    move v7, v8

    :goto_1
    iput-boolean v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->out:Z

    .line 20331
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_9

    move v7, v8

    :goto_2
    iput-boolean v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->mentioned:Z

    .line 20332
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_a

    move v7, v8

    :goto_3
    iput-boolean v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media_unread:Z

    .line 20333
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    .line 20334
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_0

    .line 20335
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->from_id:I

    .line 20337
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    invoke-static {p1, v7, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 20338
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->from_id:I

    if-nez v7, :cond_1

    .line 20339
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v7, :cond_b

    .line 20340
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->from_id:I

    .line 20345
    :cond_1
    :goto_4
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_3

    .line 20346
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    .line 20347
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    invoke-static {p1, v7, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v6

    .line 20348
    .local v6, "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v7, :cond_c

    .line 20349
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v10, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iput v10, v7, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    .line 20350
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v10, v7, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v7, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    .line 20355
    :cond_2
    :goto_5
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v10

    iput v10, v7, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->date:I

    .line 20357
    .end local v6    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_3
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_4

    .line 20358
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->via_bot_id:I

    .line 20360
    :cond_4
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_5

    .line 20361
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->reply_to_msg_id:I

    .line 20363
    :cond_5
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->date:I

    .line 20364
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->message:Ljava/lang/String;

    .line 20365
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v7, v7, 0x200

    if-eqz v7, :cond_d

    .line 20366
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    invoke-static {p1, v7, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 20370
    :goto_6
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_6

    .line 20371
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    invoke-static {p1, v7, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 20373
    :cond_6
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_11

    .line 20374
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    .line 20375
    .local v4, "magic":I
    const v7, 0x1cb5c415

    if-eq v4, v7, :cond_e

    .line 20376
    if-eqz p2, :cond_f

    .line 20377
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "wrong Vector magic, got %x"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v4    # "magic":I
    :cond_7
    move v7, v9

    .line 20329
    goto/16 :goto_0

    :cond_8
    move v7, v9

    .line 20330
    goto/16 :goto_1

    :cond_9
    move v7, v9

    .line 20331
    goto/16 :goto_2

    :cond_a
    move v7, v9

    .line 20332
    goto/16 :goto_3

    .line 20342
    :cond_b
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v7, v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->from_id:I

    goto/16 :goto_4

    .line 20351
    .restart local v6    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_c
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v7, :cond_2

    .line 20352
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v10, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iput v10, v7, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    .line 20353
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v10, v7, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v7, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    goto/16 :goto_5

    .line 20368
    .end local v6    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_d
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto :goto_6

    .line 20381
    .restart local v4    # "magic":I
    :cond_e
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v3

    .line 20382
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_7
    if-ge v0, v3, :cond_11

    .line 20383
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    invoke-static {p1, v7, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v5

    .line 20384
    .local v5, "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    if-nez v5, :cond_10

    .line 20412
    .end local v0    # "a":I
    .end local v3    # "count":I
    .end local v4    # "magic":I
    .end local v5    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_f
    :goto_8
    return-void

    .line 20387
    .restart local v0    # "a":I
    .restart local v3    # "count":I
    .restart local v4    # "magic":I
    .restart local v5    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_10
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->entities:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20382
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 20390
    .end local v0    # "a":I
    .end local v3    # "count":I
    .end local v4    # "magic":I
    .end local v5    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_11
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_12

    .line 20391
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->views:I

    .line 20393
    :cond_12
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    if-ltz v7, :cond_13

    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v7, :cond_16

    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v7, :cond_16

    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v7, :cond_16

    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->message:Ljava/lang/String;

    if-eqz v7, :cond_16

    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->message:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->message:Ljava/lang/String;

    const-string/jumbo v10, "-1"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 20394
    :cond_13
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->attachPath:Ljava/lang/String;

    .line 20395
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    if-gez v7, :cond_16

    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->attachPath:Ljava/lang/String;

    const-string/jumbo v10, "||"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 20396
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->attachPath:Ljava/lang/String;

    const-string/jumbo v10, "\\|\\|"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 20397
    .local v1, "args":[Ljava/lang/String;
    array-length v7, v1

    if-lez v7, :cond_16

    .line 20398
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->params:Ljava/util/HashMap;

    .line 20399
    const/4 v0, 0x1

    .restart local v0    # "a":I
    :goto_9
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    if-ge v0, v7, :cond_15

    .line 20400
    aget-object v7, v1, v0

    const-string/jumbo v10, "\\|=\\|"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 20401
    .local v2, "args2":[Ljava/lang/String;
    array-length v7, v2

    const/4 v10, 0x2

    if-ne v7, v10, :cond_14

    .line 20402
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->params:Ljava/util/HashMap;

    aget-object v10, v2, v9

    aget-object v11, v2, v8

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20399
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 20405
    .end local v2    # "args2":[Ljava/lang/String;
    :cond_15
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v1, v7

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->attachPath:Ljava/lang/String;

    .line 20409
    .end local v0    # "a":I
    .end local v1    # "args":[Ljava/lang/String;
    :cond_16
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_f

    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    if-gez v7, :cond_f

    .line 20410
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_msg_id:I

    goto/16 :goto_8
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 8
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 20415
    sget v6, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->constructor:I

    invoke-virtual {p1, v6}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20416
    iget-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->unread:Z

    if-eqz v6, :cond_6

    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    or-int/lit8 v6, v6, 0x1

    :goto_0
    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    .line 20417
    iget-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->out:Z

    if-eqz v6, :cond_7

    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    or-int/lit8 v6, v6, 0x2

    :goto_1
    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    .line 20418
    iget-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->mentioned:Z

    if-eqz v6, :cond_8

    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    or-int/lit8 v6, v6, 0x10

    :goto_2
    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    .line 20419
    iget-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media_unread:Z

    if-eqz v6, :cond_9

    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    or-int/lit8 v6, v6, 0x20

    :goto_3
    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    .line 20420
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    invoke-virtual {p1, v6}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20421
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    invoke-virtual {p1, v6}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20422
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_0

    .line 20423
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->from_id:I

    invoke-virtual {p1, v6}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20425
    :cond_0
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v6, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20426
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_1

    .line 20427
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    if-eqz v6, :cond_a

    .line 20428
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    .line 20429
    .local v5, "peer":Lorg/telegram/tgnet/TLRPC$TL_peerUser;
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$TL_peerUser;->user_id:I

    .line 20430
    invoke-virtual {v5, p1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20436
    .end local v5    # "peer":Lorg/telegram/tgnet/TLRPC$TL_peerUser;
    :goto_4
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->date:I

    invoke-virtual {p1, v6}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20438
    :cond_1
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_2

    .line 20439
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->via_bot_id:I

    invoke-virtual {p1, v6}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20441
    :cond_2
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_3

    .line 20442
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->reply_to_msg_id:I

    invoke-virtual {p1, v6}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20444
    :cond_3
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->date:I

    invoke-virtual {p1, v6}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20445
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->message:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 20446
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_4

    .line 20447
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v6, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20449
    :cond_4
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_5

    .line 20450
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v6, p1}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20452
    :cond_5
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_b

    .line 20453
    const v6, 0x1cb5c415

    invoke-virtual {p1, v6}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20454
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->entities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 20455
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20456
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_5
    if-ge v0, v1, :cond_b

    .line 20457
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->entities:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v6, p1}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20456
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 20416
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_6
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v6, v6, -0x2

    goto/16 :goto_0

    .line 20417
    :cond_7
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v6, v6, -0x3

    goto/16 :goto_1

    .line 20418
    :cond_8
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v6, v6, -0x11

    goto/16 :goto_2

    .line 20419
    :cond_9
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v6, v6, -0x21

    goto/16 :goto_3

    .line 20432
    :cond_a
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    .line 20433
    .local v5, "peer":Lorg/telegram/tgnet/TLRPC$TL_peerChannel;
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;->channel_id:I

    .line 20434
    invoke-virtual {v5, p1}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    goto/16 :goto_4

    .line 20460
    .end local v5    # "peer":Lorg/telegram/tgnet/TLRPC$TL_peerChannel;
    :cond_b
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_c

    .line 20461
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->views:I

    invoke-virtual {p1, v6}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20463
    :cond_c
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->attachPath:Ljava/lang/String;

    .line 20464
    .local v4, "path":Ljava/lang/String;
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    if-gez v6, :cond_e

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->params:Ljava/util/HashMap;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->params:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_e

    .line 20465
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->params:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 20466
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "|=|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "||"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 20467
    goto :goto_6

    .line 20468
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "||"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 20470
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_e
    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 20471
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_f

    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    if-gez v6, :cond_f

    .line 20472
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_msg_id:I

    invoke-virtual {p1, v6}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20474
    :cond_f
    return-void
.end method
