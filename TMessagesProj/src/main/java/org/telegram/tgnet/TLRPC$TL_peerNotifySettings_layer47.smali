.class public Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings_layer47;
.super Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_peerNotifySettings_layer47"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public show_previews:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3055
    const v0, -0x72a1ee12

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings_layer47;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3054
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 3060
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings_layer47;->mute_until:I

    .line 3061
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings_layer47;->sound:Ljava/lang/String;

    .line 3062
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings_layer47;->show_previews:Z

    .line 3063
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings_layer47;->events_mask:I

    .line 3064
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 3067
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings_layer47;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3068
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings_layer47;->mute_until:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3069
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings_layer47;->sound:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3070
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings_layer47;->show_previews:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 3071
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings_layer47;->events_mask:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3072
    return-void
.end method
