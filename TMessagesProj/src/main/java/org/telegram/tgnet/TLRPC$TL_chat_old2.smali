.class public Lorg/telegram/tgnet/TLRPC$TL_chat_old2;
.super Lorg/telegram/tgnet/TLRPC$TL_chat;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_chat_old2"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13606
    const v0, 0x7312bc48

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13605
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_chat;-><init>()V

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

    .line 13609
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    .line 13610
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->creator:Z

    .line 13611
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->kicked:Z

    .line 13612
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->left:Z

    .line 13613
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->admins_enabled:Z

    .line 13614
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->admin:Z

    .line 13615
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->deactivated:Z

    .line 13616
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->id:I

    .line 13617
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->title:Ljava/lang/String;

    .line 13618
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 13619
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->participants_count:I

    .line 13620
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->date:I

    .line 13621
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->version:I

    .line 13622
    return-void

    :cond_0
    move v0, v2

    .line 13610
    goto :goto_0

    :cond_1
    move v0, v2

    .line 13611
    goto :goto_1

    :cond_2
    move v0, v2

    .line 13612
    goto :goto_2

    :cond_3
    move v0, v2

    .line 13613
    goto :goto_3

    :cond_4
    move v0, v2

    .line 13614
    goto :goto_4

    :cond_5
    move v1, v2

    .line 13615
    goto :goto_5
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 13625
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13626
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->creator:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    .line 13627
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->kicked:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    .line 13628
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->left:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    or-int/lit8 v0, v0, 0x4

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    .line 13629
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->admins_enabled:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    or-int/lit8 v0, v0, 0x8

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    .line 13630
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->admin:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    .line 13631
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->deactivated:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    .line 13632
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13633
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13634
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 13635
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 13636
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->participants_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13637
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13638
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13639
    return-void

    .line 13626
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 13627
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_1

    .line 13628
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_2

    .line 13629
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, -0x9

    goto :goto_3

    .line 13630
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_4

    .line 13631
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_5
.end method
