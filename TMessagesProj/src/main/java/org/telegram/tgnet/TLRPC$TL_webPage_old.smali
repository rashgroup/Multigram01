.class public Lorg/telegram/tgnet/TLRPC$TL_webPage_old;
.super Lorg/telegram/tgnet/TLRPC$WebPage;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_webPage_old"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5229
    const v0, -0x5ce15f4b

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5228
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$WebPage;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 5233
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    .line 5234
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->id:J

    .line 5235
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->url:Ljava/lang/String;

    .line 5236
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->display_url:Ljava/lang/String;

    .line 5237
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5238
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->type:Ljava/lang/String;

    .line 5240
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5241
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->site_name:Ljava/lang/String;

    .line 5243
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 5244
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->title:Ljava/lang/String;

    .line 5246
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 5247
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->description:Ljava/lang/String;

    .line 5249
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 5250
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 5252
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 5253
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->embed_url:Ljava/lang/String;

    .line 5255
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 5256
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->embed_type:Ljava/lang/String;

    .line 5258
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 5259
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->embed_width:I

    .line 5261
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 5262
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->embed_height:I

    .line 5264
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 5265
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->duration:I

    .line 5267
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    .line 5268
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->author:Ljava/lang/String;

    .line 5270
    :cond_a
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 5273
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5274
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5275
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 5276
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 5277
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->display_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 5278
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5279
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 5281
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5282
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->site_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 5284
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 5285
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 5287
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 5288
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 5290
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 5291
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Photo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5293
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 5294
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->embed_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 5296
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 5297
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->embed_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 5299
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 5300
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->embed_width:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5302
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 5303
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->embed_height:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5305
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 5306
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->duration:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5308
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    .line 5309
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 5311
    :cond_a
    return-void
.end method
