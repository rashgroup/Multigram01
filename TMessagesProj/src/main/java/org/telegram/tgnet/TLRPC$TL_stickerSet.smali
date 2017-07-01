.class public Lorg/telegram/tgnet/TLRPC$TL_stickerSet;
.super Lorg/telegram/tgnet/TLRPC$StickerSet;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_stickerSet"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14046
    const v0, -0x32cfc4bf    # -1.8479208E8f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14045
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$StickerSet;-><init>()V

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

    .line 14050
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    .line 14051
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->installed:Z

    .line 14052
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->disabled:Z

    .line 14053
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->official:Z

    .line 14054
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->id:J

    .line 14055
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->access_hash:J

    .line 14056
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->title:Ljava/lang/String;

    .line 14057
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->short_name:Ljava/lang/String;

    .line 14058
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->count:I

    .line 14059
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->hash:I

    .line 14060
    return-void

    :cond_0
    move v0, v2

    .line 14051
    goto :goto_0

    :cond_1
    move v0, v2

    .line 14052
    goto :goto_1

    :cond_2
    move v1, v2

    .line 14053
    goto :goto_2
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 14063
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14064
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->installed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    .line 14065
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->disabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    .line 14066
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->official:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    or-int/lit8 v0, v0, 0x4

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    .line 14067
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14068
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 14069
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 14070
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 14071
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 14072
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14073
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->hash:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14074
    return-void

    .line 14064
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 14065
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_1

    .line 14066
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_2
.end method
