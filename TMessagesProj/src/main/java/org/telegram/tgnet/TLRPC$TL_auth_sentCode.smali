.class public Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_auth_sentCode"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public flags:I

.field public next_type:Lorg/telegram/tgnet/TLRPC$auth_CodeType;

.field public phone_code_hash:Ljava/lang/String;

.field public phone_registered:Z

.field public timeout:I

.field public type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2795
    const v0, 0x5e002502

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2794
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 2805
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->constructor:I

    if-eq v1, p1, :cond_1

    .line 2806
    if-eqz p2, :cond_0

    .line 2807
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_auth_sentCode"

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

    .line 2809
    :cond_0
    const/4 v0, 0x0

    .line 2814
    :goto_0
    return-object v0

    .line 2812
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;-><init>()V

    .line 2813
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 2818
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->flags:I

    .line 2819
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->phone_registered:Z

    .line 2820
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    .line 2821
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->phone_code_hash:Ljava/lang/String;

    .line 2822
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2823
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$auth_CodeType;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$auth_CodeType;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->next_type:Lorg/telegram/tgnet/TLRPC$auth_CodeType;

    .line 2825
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 2826
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->timeout:I

    .line 2828
    :cond_1
    return-void

    .line 2819
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 2831
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2832
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->phone_registered:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->flags:I

    .line 2833
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2834
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 2835
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->phone_code_hash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 2836
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2837
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->next_type:Lorg/telegram/tgnet/TLRPC$auth_CodeType;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$auth_CodeType;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 2839
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 2840
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->timeout:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2842
    :cond_1
    return-void

    .line 2832
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method
