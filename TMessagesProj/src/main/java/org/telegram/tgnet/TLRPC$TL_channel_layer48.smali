.class public Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;
.super Lorg/telegram/tgnet/TLRPC$TL_channel;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channel_layer48"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13935
    const v0, 0x4b1b7506    # 1.0188038E7f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13934
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_channel;-><init>()V

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

    .line 13938
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    .line 13939
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->creator:Z

    .line 13940
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->kicked:Z

    .line 13941
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->left:Z

    .line 13942
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->editor:Z

    .line 13943
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->moderator:Z

    .line 13944
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_7

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->broadcast:Z

    .line 13945
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->verified:Z

    .line 13946
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->megagroup:Z

    .line 13947
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_a

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->restricted:Z

    .line 13948
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_b

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->democracy:Z

    .line 13949
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_c

    :goto_a
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->signatures:Z

    .line 13950
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->id:I

    .line 13951
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->access_hash:J

    .line 13952
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->title:Ljava/lang/String;

    .line 13953
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    .line 13954
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->username:Ljava/lang/String;

    .line 13956
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 13957
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->date:I

    .line 13958
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->version:I

    .line 13959
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    .line 13960
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->restriction_reason:Ljava/lang/String;

    .line 13962
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 13939
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 13940
    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 13941
    goto/16 :goto_2

    :cond_5
    move v0, v2

    .line 13942
    goto/16 :goto_3

    :cond_6
    move v0, v2

    .line 13943
    goto/16 :goto_4

    :cond_7
    move v0, v2

    .line 13944
    goto :goto_5

    :cond_8
    move v0, v2

    .line 13945
    goto :goto_6

    :cond_9
    move v0, v2

    .line 13946
    goto :goto_7

    :cond_a
    move v0, v2

    .line 13947
    goto :goto_8

    :cond_b
    move v0, v2

    .line 13948
    goto :goto_9

    :cond_c
    move v1, v2

    .line 13949
    goto :goto_a
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 13965
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13966
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->creator:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    .line 13967
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->kicked:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    .line 13968
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->left:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    or-int/lit8 v0, v0, 0x4

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    .line 13969
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->editor:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    or-int/lit8 v0, v0, 0x8

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    .line 13970
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->moderator:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    .line 13971
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->broadcast:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    .line 13972
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->verified:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    or-int/lit16 v0, v0, 0x80

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    .line 13973
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->megagroup:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    or-int/lit16 v0, v0, 0x100

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    .line 13974
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->restricted:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    or-int/lit16 v0, v0, 0x200

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    .line 13975
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->democracy:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    or-int/lit16 v0, v0, 0x400

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    .line 13976
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->signatures:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    or-int/lit16 v0, v0, 0x800

    :goto_a
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    .line 13977
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13978
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13979
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 13980
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 13981
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    .line 13982
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 13984
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 13985
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13986
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13987
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    .line 13988
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->restriction_reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 13990
    :cond_1
    return-void

    .line 13966
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto/16 :goto_0

    .line 13967
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto/16 :goto_1

    .line 13968
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit8 v0, v0, -0x5

    goto/16 :goto_2

    .line 13969
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit8 v0, v0, -0x9

    goto/16 :goto_3

    .line 13970
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto/16 :goto_4

    .line 13971
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto/16 :goto_5

    .line 13972
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit16 v0, v0, -0x81

    goto/16 :goto_6

    .line 13973
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit16 v0, v0, -0x101

    goto/16 :goto_7

    .line 13974
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit16 v0, v0, -0x201

    goto/16 :goto_8

    .line 13975
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit16 v0, v0, -0x401

    goto :goto_9

    .line 13976
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;->flags:I

    and-int/lit16 v0, v0, -0x801

    goto :goto_a
.end method
