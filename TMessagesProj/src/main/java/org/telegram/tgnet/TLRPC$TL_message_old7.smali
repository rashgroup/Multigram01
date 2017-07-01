.class public Lorg/telegram/tgnet/TLRPC$TL_message_old7;
.super Lorg/telegram/tgnet/TLRPC$TL_message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_message_old7"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20478
    const v0, 0x5ba66c13

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20477
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 10
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 20481
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    .line 20482
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->unread:Z

    .line 20483
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_7

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->out:Z

    .line 20484
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_8

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->mentioned:Z

    .line 20485
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_9

    move v5, v6

    :goto_3
    iput-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media_unread:Z

    .line 20486
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->id:I

    .line 20487
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_0

    .line 20488
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->from_id:I

    .line 20490
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    invoke-static {p1, v5, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 20491
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->from_id:I

    if-nez v5, :cond_1

    .line 20492
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v5, :cond_a

    .line 20493
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->from_id:I

    .line 20498
    :cond_1
    :goto_4
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_3

    .line 20499
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    .line 20500
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    invoke-static {p1, v5, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v4

    .line 20501
    .local v4, "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v5, :cond_b

    .line 20502
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    .line 20503
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v8, v5, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    .line 20508
    :cond_2
    :goto_5
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v8

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->date:I

    .line 20510
    .end local v4    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_3
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_4

    .line 20511
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->reply_to_msg_id:I

    .line 20513
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->date:I

    .line 20514
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->message:Ljava/lang/String;

    .line 20515
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_c

    .line 20516
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    invoke-static {p1, v5, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 20520
    :goto_6
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_5

    .line 20521
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    invoke-static {p1, v5, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 20523
    :cond_5
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_10

    .line 20524
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 20525
    .local v2, "magic":I
    const v5, 0x1cb5c415

    if-eq v2, v5, :cond_d

    .line 20526
    if-eqz p2, :cond_e

    .line 20527
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v2    # "magic":I
    :cond_6
    move v5, v7

    .line 20482
    goto/16 :goto_0

    :cond_7
    move v5, v7

    .line 20483
    goto/16 :goto_1

    :cond_8
    move v5, v7

    .line 20484
    goto/16 :goto_2

    :cond_9
    move v5, v7

    .line 20485
    goto/16 :goto_3

    .line 20495
    :cond_a
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v5, v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->from_id:I

    goto/16 :goto_4

    .line 20504
    .restart local v4    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_b
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v5, :cond_2

    .line 20505
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    .line 20506
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v8, v5, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    goto/16 :goto_5

    .line 20518
    .end local v4    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_c
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto :goto_6

    .line 20531
    .restart local v2    # "magic":I
    :cond_d
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 20532
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_7
    if-ge v0, v1, :cond_10

    .line 20533
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    invoke-static {p1, v5, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v3

    .line 20534
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    if-nez v3, :cond_f

    .line 20549
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_e
    :goto_8
    return-void

    .line 20537
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v2    # "magic":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_f
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->entities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20532
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 20540
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_10
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_11

    .line 20541
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->views:I

    .line 20543
    :cond_11
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->id:I

    if-ltz v5, :cond_12

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v5, :cond_13

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v5, :cond_13

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v5, :cond_13

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->message:Ljava/lang/String;

    if-eqz v5, :cond_13

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->message:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->message:Ljava/lang/String;

    const-string/jumbo v6, "-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 20544
    :cond_12
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->attachPath:Ljava/lang/String;

    .line 20546
    :cond_13
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_e

    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->id:I

    if-gez v5, :cond_e

    .line 20547
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_msg_id:I

    goto :goto_8
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 20552
    sget v3, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->constructor:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20553
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->unread:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    or-int/lit8 v3, v3, 0x1

    :goto_0
    iput v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    .line 20554
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->out:Z

    if-eqz v3, :cond_6

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    or-int/lit8 v3, v3, 0x2

    :goto_1
    iput v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    .line 20555
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->mentioned:Z

    if-eqz v3, :cond_7

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    or-int/lit8 v3, v3, 0x10

    :goto_2
    iput v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    .line 20556
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media_unread:Z

    if-eqz v3, :cond_8

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    or-int/lit8 v3, v3, 0x20

    :goto_3
    iput v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    .line 20557
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20558
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->id:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20559
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_0

    .line 20560
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->from_id:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20562
    :cond_0
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v3, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20563
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 20564
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    if-eqz v3, :cond_9

    .line 20565
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    .line 20566
    .local v2, "peer":Lorg/telegram/tgnet/TLRPC$TL_peerUser;
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;->user_id:I

    .line 20567
    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20573
    .end local v2    # "peer":Lorg/telegram/tgnet/TLRPC$TL_peerUser;
    :goto_4
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->date:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20575
    :cond_1
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2

    .line 20576
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->reply_to_msg_id:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20578
    :cond_2
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->date:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20579
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->message:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 20580
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_3

    .line 20581
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v3, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20583
    :cond_3
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_4

    .line 20584
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v3, p1}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20586
    :cond_4
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_a

    .line 20587
    const v3, 0x1cb5c415

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20588
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 20589
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20590
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_5
    if-ge v0, v1, :cond_a

    .line 20591
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v3, p1}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20590
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 20553
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_5
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, -0x2

    goto/16 :goto_0

    .line 20554
    :cond_6
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, -0x3

    goto/16 :goto_1

    .line 20555
    :cond_7
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, -0x11

    goto/16 :goto_2

    .line 20556
    :cond_8
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, -0x21

    goto/16 :goto_3

    .line 20569
    :cond_9
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    .line 20570
    .local v2, "peer":Lorg/telegram/tgnet/TLRPC$TL_peerChannel;
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;->channel_id:I

    .line 20571
    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    goto :goto_4

    .line 20594
    .end local v2    # "peer":Lorg/telegram/tgnet/TLRPC$TL_peerChannel;
    :cond_a
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_b

    .line 20595
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->views:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20597
    :cond_b
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->attachPath:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 20598
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_c

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->id:I

    if-gez v3, :cond_c

    .line 20599
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_msg_id:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20601
    :cond_c
    return-void
.end method
