.class public Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;
.super Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updates_channelDifferenceEmpty"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12127
    const v0, 0x3e11affb

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12126
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 12131
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->flags:I

    .line 12132
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->isFinal:Z

    .line 12133
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->pts:I

    .line 12134
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 12135
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->timeout:I

    .line 12137
    :cond_0
    return-void

    .line 12132
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 12140
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12141
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->isFinal:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->flags:I

    .line 12142
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12143
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->pts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12144
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 12145
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->timeout:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12147
    :cond_0
    return-void

    .line 12141
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method
