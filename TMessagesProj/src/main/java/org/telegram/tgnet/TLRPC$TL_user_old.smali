.class public Lorg/telegram/tgnet/TLRPC$TL_user_old;
.super Lorg/telegram/tgnet/TLRPC$TL_user;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_user_old"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6057
    const v0, 0x22e49072

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6056
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6061
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 6062
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->self:Z

    .line 6063
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_9

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->contact:Z

    .line 6064
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_a

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->mutual_contact:Z

    .line 6065
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_b

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->deleted:Z

    .line 6066
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_c

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot:Z

    .line 6067
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const v3, 0x8000

    and-int/2addr v0, v3

    if-eqz v0, :cond_d

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot_chat_history:Z

    .line 6068
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const/high16 v3, 0x10000

    and-int/2addr v0, v3

    if-eqz v0, :cond_e

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot_nochats:Z

    .line 6069
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const/high16 v3, 0x20000

    and-int/2addr v0, v3

    if-eqz v0, :cond_f

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->verified:Z

    .line 6070
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const/high16 v3, 0x40000

    and-int/2addr v0, v3

    if-eqz v0, :cond_10

    :goto_8
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->explicit_content:Z

    .line 6071
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->id:I

    .line 6072
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6073
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->access_hash:J

    .line 6075
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 6076
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->first_name:Ljava/lang/String;

    .line 6078
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 6079
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->last_name:Ljava/lang/String;

    .line 6081
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 6082
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->username:Ljava/lang/String;

    .line 6084
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 6085
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->phone:Ljava/lang/String;

    .line 6087
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 6088
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 6090
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 6091
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserStatus;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 6093
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_7

    .line 6094
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot_info_version:I

    .line 6096
    :cond_7
    return-void

    :cond_8
    move v0, v2

    .line 6062
    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 6063
    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 6064
    goto/16 :goto_2

    :cond_b
    move v0, v2

    .line 6065
    goto/16 :goto_3

    :cond_c
    move v0, v2

    .line 6066
    goto/16 :goto_4

    :cond_d
    move v0, v2

    .line 6067
    goto/16 :goto_5

    :cond_e
    move v0, v2

    .line 6068
    goto/16 :goto_6

    :cond_f
    move v0, v2

    .line 6069
    goto/16 :goto_7

    :cond_10
    move v1, v2

    .line 6070
    goto/16 :goto_8
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 6099
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6100
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->self:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    or-int/lit16 v0, v0, 0x400

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 6101
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->contact:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    or-int/lit16 v0, v0, 0x800

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 6102
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->mutual_contact:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    or-int/lit16 v0, v0, 0x1000

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 6103
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->deleted:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    or-int/lit16 v0, v0, 0x2000

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 6104
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    or-int/lit16 v0, v0, 0x4000

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 6105
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot_chat_history:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const v1, 0x8000

    or-int/2addr v0, v1

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 6106
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot_nochats:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 6107
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->verified:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 6108
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->explicit_content:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 6109
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6110
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6111
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6112
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 6114
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 6115
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->first_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6117
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 6118
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->last_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6120
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 6121
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6123
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 6124
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6126
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 6127
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 6129
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 6130
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$UserStatus;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 6132
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_7

    .line 6133
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot_info_version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6135
    :cond_7
    return-void

    .line 6100
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, -0x401

    goto/16 :goto_0

    .line 6101
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, -0x801

    goto/16 :goto_1

    .line 6102
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, -0x1001

    goto/16 :goto_2

    .line 6103
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, -0x2001

    goto/16 :goto_3

    .line 6104
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, -0x4001

    goto/16 :goto_4

    .line 6105
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    goto/16 :goto_5

    .line 6106
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    goto/16 :goto_6

    .line 6107
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const v1, -0x20001

    and-int/2addr v0, v1

    goto/16 :goto_7

    .line 6108
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    goto/16 :goto_8
.end method
