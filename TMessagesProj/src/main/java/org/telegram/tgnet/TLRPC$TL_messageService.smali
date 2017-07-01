.class public Lorg/telegram/tgnet/TLRPC$TL_messageService;
.super Lorg/telegram/tgnet/TLRPC$Message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageService"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21269
    const v0, -0x61e65e0a

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21268
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Message;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 21272
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 21273
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->unread:Z

    .line 21274
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->out:Z

    .line 21275
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->mentioned:Z

    .line 21276
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->media_unread:Z

    .line 21277
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->silent:Z

    .line 21278
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_7

    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->post:Z

    .line 21279
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    .line 21280
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 21281
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    .line 21283
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 21284
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 21285
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->reply_to_msg_id:I

    .line 21287
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    .line 21288
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageAction;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 21289
    return-void

    :cond_2
    move v0, v2

    .line 21273
    goto :goto_0

    :cond_3
    move v0, v2

    .line 21274
    goto :goto_1

    :cond_4
    move v0, v2

    .line 21275
    goto :goto_2

    :cond_5
    move v0, v2

    .line 21276
    goto :goto_3

    :cond_6
    move v0, v2

    .line 21277
    goto :goto_4

    :cond_7
    move v1, v2

    .line 21278
    goto :goto_5
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 21292
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21293
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->unread:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 21294
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->out:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 21295
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->mentioned:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 21296
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->media_unread:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 21297
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->silent:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    or-int/lit16 v0, v0, 0x2000

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 21298
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->post:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    or-int/lit16 v0, v0, 0x4000

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 21299
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21300
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21301
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 21302
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21304
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21305
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 21306
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->reply_to_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21308
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21309
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$MessageAction;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21310
    return-void

    .line 21293
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 21294
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_1

    .line 21295
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_2

    .line 21296
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_3

    .line 21297
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit16 v0, v0, -0x2001

    goto :goto_4

    .line 21298
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit16 v0, v0, -0x4001

    goto :goto_5
.end method
