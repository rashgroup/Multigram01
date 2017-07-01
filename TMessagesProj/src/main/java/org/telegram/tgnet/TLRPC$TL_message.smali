.class public Lorg/telegram/tgnet/TLRPC$TL_message;
.super Lorg/telegram/tgnet/TLRPC$Message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_message"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20180
    const v0, -0x3f641ba1

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_message;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20179
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Message;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 11
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 20183
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 20184
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_6

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->unread:Z

    .line 20185
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_7

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    .line 20186
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_8

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->mentioned:Z

    .line 20187
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_9

    move v6, v7

    :goto_3
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media_unread:Z

    .line 20188
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_a

    move v6, v7

    :goto_4
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->silent:Z

    .line 20189
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_b

    move v6, v7

    :goto_5
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->post:Z

    .line 20190
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    .line 20191
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_0

    .line 20192
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    .line 20194
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 20195
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    if-nez v6, :cond_1

    .line 20196
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v6, :cond_c

    .line 20197
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    .line 20202
    :cond_1
    :goto_6
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_2

    .line 20203
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    .line 20205
    :cond_2
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_3

    .line 20206
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->via_bot_id:I

    .line 20208
    :cond_3
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_4

    .line 20209
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->reply_to_msg_id:I

    .line 20211
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    .line 20212
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    .line 20213
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_d

    .line 20214
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 20218
    :goto_7
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_5

    .line 20219
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 20221
    :cond_5
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_11

    .line 20222
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    .line 20223
    .local v4, "magic":I
    const v6, 0x1cb5c415

    if-eq v4, v6, :cond_e

    .line 20224
    if-eqz p2, :cond_f

    .line 20225
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "wrong Vector magic, got %x"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v4    # "magic":I
    :cond_6
    move v6, v8

    .line 20184
    goto/16 :goto_0

    :cond_7
    move v6, v8

    .line 20185
    goto/16 :goto_1

    :cond_8
    move v6, v8

    .line 20186
    goto/16 :goto_2

    :cond_9
    move v6, v8

    .line 20187
    goto/16 :goto_3

    :cond_a
    move v6, v8

    .line 20188
    goto/16 :goto_4

    :cond_b
    move v6, v8

    .line 20189
    goto/16 :goto_5

    .line 20199
    :cond_c
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v6, v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    goto/16 :goto_6

    .line 20216
    :cond_d
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto :goto_7

    .line 20229
    .restart local v4    # "magic":I
    :cond_e
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v3

    .line 20230
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_8
    if-ge v0, v3, :cond_11

    .line 20231
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v5

    .line 20232
    .local v5, "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    if-nez v5, :cond_10

    .line 20263
    .end local v0    # "a":I
    .end local v3    # "count":I
    .end local v4    # "magic":I
    .end local v5    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_f
    :goto_9
    return-void

    .line 20235
    .restart local v0    # "a":I
    .restart local v3    # "count":I
    .restart local v4    # "magic":I
    .restart local v5    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_10
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20230
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 20238
    .end local v0    # "a":I
    .end local v3    # "count":I
    .end local v4    # "magic":I
    .end local v5    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_11
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_12

    .line 20239
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->views:I

    .line 20241
    :cond_12
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    const v9, 0x8000

    and-int/2addr v6, v9

    if-eqz v6, :cond_13

    .line 20242
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->edit_date:I

    .line 20244
    :cond_13
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    if-ltz v6, :cond_14

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v6, :cond_17

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v6, :cond_17

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v6, :cond_17

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    if-eqz v6, :cond_17

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_17

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    const-string/jumbo v9, "-1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 20245
    :cond_14
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->attachPath:Ljava/lang/String;

    .line 20246
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    if-gez v6, :cond_17

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->attachPath:Ljava/lang/String;

    const-string/jumbo v9, "||"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 20247
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->attachPath:Ljava/lang/String;

    const-string/jumbo v9, "\\|\\|"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 20248
    .local v1, "args":[Ljava/lang/String;
    array-length v6, v1

    if-lez v6, :cond_17

    .line 20249
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->params:Ljava/util/HashMap;

    .line 20250
    const/4 v0, 0x1

    .restart local v0    # "a":I
    :goto_a
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_16

    .line 20251
    aget-object v6, v1, v0

    const-string/jumbo v9, "\\|=\\|"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 20252
    .local v2, "args2":[Ljava/lang/String;
    array-length v6, v2

    const/4 v9, 0x2

    if-ne v6, v9, :cond_15

    .line 20253
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->params:Ljava/util/HashMap;

    aget-object v9, v2, v8

    aget-object v10, v2, v7

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20250
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 20256
    .end local v2    # "args2":[Ljava/lang/String;
    :cond_16
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v1, v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->attachPath:Ljava/lang/String;

    .line 20260
    .end local v0    # "a":I
    .end local v1    # "args":[Ljava/lang/String;
    :cond_17
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_f

    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    if-gez v6, :cond_f

    .line 20261
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->fwd_msg_id:I

    goto/16 :goto_9
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 7
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 20266
    sget v5, Lorg/telegram/tgnet/TLRPC$TL_message;->constructor:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20267
    iget-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->unread:Z

    if-eqz v5, :cond_6

    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit8 v5, v5, 0x1

    :goto_0
    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 20268
    iget-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    if-eqz v5, :cond_7

    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit8 v5, v5, 0x2

    :goto_1
    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 20269
    iget-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->mentioned:Z

    if-eqz v5, :cond_8

    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit8 v5, v5, 0x10

    :goto_2
    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 20270
    iget-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media_unread:Z

    if-eqz v5, :cond_9

    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit8 v5, v5, 0x20

    :goto_3
    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 20271
    iget-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->silent:Z

    if-eqz v5, :cond_a

    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit16 v5, v5, 0x2000

    :goto_4
    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 20272
    iget-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->post:Z

    if-eqz v5, :cond_b

    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit16 v5, v5, 0x4000

    :goto_5
    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 20273
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20274
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20275
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_0

    .line 20276
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20278
    :cond_0
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v5, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20279
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1

    .line 20280
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-virtual {v5, p1}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20282
    :cond_1
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_2

    .line 20283
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->via_bot_id:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20285
    :cond_2
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_3

    .line 20286
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->reply_to_msg_id:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20288
    :cond_3
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20289
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 20290
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_4

    .line 20291
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v5, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20293
    :cond_4
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_5

    .line 20294
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v5, p1}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20296
    :cond_5
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_c

    .line 20297
    const v5, 0x1cb5c415

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20298
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 20299
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20300
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_6
    if-ge v0, v1, :cond_c

    .line 20301
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v5, p1}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20300
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 20267
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_6
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v5, v5, -0x2

    goto/16 :goto_0

    .line 20268
    :cond_7
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v5, v5, -0x3

    goto/16 :goto_1

    .line 20269
    :cond_8
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v5, v5, -0x11

    goto/16 :goto_2

    .line 20270
    :cond_9
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v5, v5, -0x21

    goto/16 :goto_3

    .line 20271
    :cond_a
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v5, v5, -0x2001

    goto/16 :goto_4

    .line 20272
    :cond_b
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v5, v5, -0x4001

    goto/16 :goto_5

    .line 20304
    :cond_c
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_d

    .line 20305
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->views:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20307
    :cond_d
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    const v6, 0x8000

    and-int/2addr v5, v6

    if-eqz v5, :cond_e

    .line 20308
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->edit_date:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20310
    :cond_e
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->attachPath:Ljava/lang/String;

    .line 20311
    .local v4, "path":Ljava/lang/String;
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    if-gez v5, :cond_10

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->params:Ljava/util/HashMap;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->params:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_10

    .line 20312
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->params:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 20313
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|=|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "||"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 20314
    goto :goto_7

    .line 20315
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "||"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 20317
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_10
    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 20318
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_11

    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    if-gez v5, :cond_11

    .line 20319
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->fwd_msg_id:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20321
    :cond_11
    return-void
.end method
