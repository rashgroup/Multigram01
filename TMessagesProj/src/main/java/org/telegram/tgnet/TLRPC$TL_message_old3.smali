.class public Lorg/telegram/tgnet/TLRPC$TL_message_old3;
.super Lorg/telegram/tgnet/TLRPC$TL_message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_message_old3"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20957
    const v0, -0x5854e66f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20956
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

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

    .line 20960
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    or-int/lit16 v0, v0, 0x100

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    .line 20961
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->unread:Z

    .line 20962
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->out:Z

    .line 20963
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->mentioned:Z

    .line 20964
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->media_unread:Z

    .line 20965
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->id:I

    .line 20966
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->from_id:I

    .line 20967
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 20968
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 20969
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    .line 20970
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    .line 20971
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    .line 20972
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->date:I

    .line 20974
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 20975
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->reply_to_msg_id:I

    .line 20977
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->date:I

    .line 20978
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->message:Ljava/lang/String;

    .line 20979
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 20980
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->id:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->message:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->message:Ljava/lang/String;

    const-string/jumbo v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20981
    :cond_2
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->attachPath:Ljava/lang/String;

    .line 20983
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->id:I

    if-gez v0, :cond_4

    .line 20984
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->fwd_msg_id:I

    .line 20986
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 20961
    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 20962
    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 20963
    goto/16 :goto_2

    :cond_8
    move v1, v2

    .line 20964
    goto/16 :goto_3
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 20989
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20990
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->unread:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    .line 20991
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->out:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    .line 20992
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->mentioned:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    .line 20993
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->media_unread:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    .line 20994
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20995
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20996
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->from_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20997
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20998
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 20999
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21000
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21002
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 21003
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->reply_to_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21005
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21006
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 21007
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21008
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->attachPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 21009
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->id:I

    if-gez v0, :cond_2

    .line 21010
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->fwd_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21012
    :cond_2
    return-void

    .line 20990
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 20991
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_1

    .line 20992
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_2

    .line 20993
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_3
.end method
