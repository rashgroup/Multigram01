.class public Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updates_getDifference"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public date:I

.field public pts:I

.field public qts:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17739
    const v0, 0xa041495

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17738
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 17746
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$updates_Difference;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$updates_Difference;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 17750
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17751
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->pts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17752
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17753
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->qts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17754
    return-void
.end method
