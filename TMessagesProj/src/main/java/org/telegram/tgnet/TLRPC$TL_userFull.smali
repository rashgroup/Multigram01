.class public Lorg/telegram/tgnet/TLRPC$TL_userFull;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_userFull"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public about:Ljava/lang/String;

.field public blocked:Z

.field public bot_info:Lorg/telegram/tgnet/TLRPC$BotInfo;

.field public flags:I

.field public link:Lorg/telegram/tgnet/TLRPC$TL_contacts_link;

.field public notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

.field public profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15074
    const v0, 0x5932fc03

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15073
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_userFull;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 15086
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_userFull;->constructor:I

    if-eq v1, p1, :cond_1

    .line 15087
    if-eqz p2, :cond_0

    .line 15088
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_userFull"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 15090
    :cond_0
    const/4 v0, 0x0

    .line 15095
    :goto_0
    return-object v0

    .line 15093
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull;-><init>()V

    .line 15094
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_userFull;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 15099
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    .line 15100
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->blocked:Z

    .line 15101
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 15102
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 15103
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->about:Ljava/lang/String;

    .line 15105
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_contacts_link;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_contacts_link;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->link:Lorg/telegram/tgnet/TLRPC$TL_contacts_link;

    .line 15106
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 15107
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 15109
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 15110
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 15111
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$BotInfo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$BotInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->bot_info:Lorg/telegram/tgnet/TLRPC$BotInfo;

    .line 15113
    :cond_2
    return-void

    .line 15100
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 15116
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15117
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->blocked:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    .line 15118
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15119
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 15120
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 15121
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->about:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 15123
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->link:Lorg/telegram/tgnet/TLRPC$TL_contacts_link;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_link;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 15124
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 15125
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Photo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 15127
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 15128
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 15129
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->bot_info:Lorg/telegram/tgnet/TLRPC$BotInfo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$BotInfo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 15131
    :cond_2
    return-void

    .line 15117
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method
