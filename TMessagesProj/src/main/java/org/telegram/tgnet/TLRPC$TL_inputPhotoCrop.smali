.class public Lorg/telegram/tgnet/TLRPC$TL_inputPhotoCrop;
.super Lorg/telegram/tgnet/TLRPC$InputPhotoCrop;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputPhotoCrop"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16310
    const v0, -0x266eacdb

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoCrop;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16309
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputPhotoCrop;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 16314
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoCrop;->crop_left:D

    .line 16315
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoCrop;->crop_top:D

    .line 16316
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoCrop;->crop_width:D

    .line 16317
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 16320
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoCrop;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16321
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoCrop;->crop_left:D

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeDouble(D)V

    .line 16322
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoCrop;->crop_top:D

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeDouble(D)V

    .line 16323
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoCrop;->crop_width:D

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeDouble(D)V

    .line 16324
    return-void
.end method
