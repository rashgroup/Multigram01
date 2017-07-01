.class public Lorg/telegram/tgnet/TLRPC$TL_message_old4;
.super Lorg/telegram/tgnet/TLRPC$TL_message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_message_old4"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20891
    const v0, -0x3cf9fcdb

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20890
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

    .line 20895
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    or-int/lit16 v0, v0, 0x100

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    .line 20896
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->unread:Z

    .line 20897
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->out:Z

    .line 20898
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->mentioned:Z

    .line 20899
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_9

    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->media_unread:Z

    .line 20900
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->id:I

    .line 20901
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->from_id:I

    .line 20902
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 20903
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 20904
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    .line 20905
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    .line 20906
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    .line 20907
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->date:I

    .line 20909
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 20910
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->reply_to_msg_id:I

    .line 20912
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->date:I

    .line 20913
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->message:Ljava/lang/String;

    .line 20914
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 20915
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_2

    .line 20916
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 20918
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->id:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->message:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->message:Ljava/lang/String;

    const-string/jumbo v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20919
    :cond_3
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->attachPath:Ljava/lang/String;

    .line 20921
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->id:I

    if-gez v0, :cond_5

    .line 20922
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->fwd_msg_id:I

    .line 20924
    :cond_5
    return-void

    :cond_6
    move v0, v2

    .line 20896
    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 20897
    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 20898
    goto/16 :goto_2

    :cond_9
    move v1, v2

    .line 20899
    goto/16 :goto_3
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 20927
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20928
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->unread:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    .line 20929
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->out:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    .line 20930
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->mentioned:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    .line 20931
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->media_unread:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    .line 20932
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20933
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20934
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->from_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20935
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20936
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 20937
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20938
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20940
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 20941
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->reply_to_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20943
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20944
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 20945
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20946
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_2

    .line 20947
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20949
    :cond_2
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->attachPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 20950
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->id:I

    if-gez v0, :cond_3

    .line 20951
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->fwd_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20953
    :cond_3
    return-void

    .line 20928
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto/16 :goto_0

    .line 20929
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto/16 :goto_1

    .line 20930
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_2

    .line 20931
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_3
.end method
