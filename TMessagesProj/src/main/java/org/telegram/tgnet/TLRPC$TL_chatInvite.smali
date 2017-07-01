.class public Lorg/telegram/tgnet/TLRPC$TL_chatInvite;
.super Lorg/telegram/tgnet/TLRPC$ChatInvite;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_chatInvite"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1924
    const v0, -0x6c1664a0

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1923
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChatInvite;-><init>()V

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

    .line 1928
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    .line 1929
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->channel:Z

    .line 1930
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->broadcast:Z

    .line 1931
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->isPublic:Z

    .line 1932
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->megagroup:Z

    .line 1933
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->title:Ljava/lang/String;

    .line 1934
    return-void

    :cond_0
    move v0, v2

    .line 1929
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1930
    goto :goto_1

    :cond_2
    move v0, v2

    .line 1931
    goto :goto_2

    :cond_3
    move v1, v2

    .line 1932
    goto :goto_3
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 1937
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1938
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->channel:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    .line 1939
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->broadcast:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    .line 1940
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->isPublic:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    or-int/lit8 v0, v0, 0x4

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    .line 1941
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->megagroup:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    or-int/lit8 v0, v0, 0x8

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    .line 1942
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1943
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 1944
    return-void

    .line 1938
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 1939
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_1

    .line 1940
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_2

    .line 1941
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v0, v0, -0x9

    goto :goto_3
.end method
