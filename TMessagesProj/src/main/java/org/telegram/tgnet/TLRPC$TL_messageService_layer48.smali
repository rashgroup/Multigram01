.class public Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;
.super Lorg/telegram/tgnet/TLRPC$TL_messageService;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageService_layer48"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20844
    const v0, -0x3f9469f9

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20843
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

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

    .line 20848
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    .line 20849
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->unread:Z

    .line 20850
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->out:Z

    .line 20851
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->mentioned:Z

    .line 20852
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->media_unread:Z

    .line 20853
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->silent:Z

    .line 20854
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_7

    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->post:Z

    .line 20855
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->id:I

    .line 20856
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 20857
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->from_id:I

    .line 20859
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 20860
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->from_id:I

    if-nez v0, :cond_1

    .line 20861
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v0, :cond_8

    .line 20862
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->from_id:I

    .line 20867
    :cond_1
    :goto_6
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->date:I

    .line 20868
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageAction;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 20869
    return-void

    :cond_2
    move v0, v2

    .line 20849
    goto :goto_0

    :cond_3
    move v0, v2

    .line 20850
    goto :goto_1

    :cond_4
    move v0, v2

    .line 20851
    goto :goto_2

    :cond_5
    move v0, v2

    .line 20852
    goto :goto_3

    :cond_6
    move v0, v2

    .line 20853
    goto :goto_4

    :cond_7
    move v1, v2

    .line 20854
    goto :goto_5

    .line 20864
    :cond_8
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->from_id:I

    goto :goto_6
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 20872
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20873
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->unread:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    .line 20874
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->out:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    .line 20875
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->mentioned:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    .line 20876
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->media_unread:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    .line 20877
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->silent:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    or-int/lit16 v0, v0, 0x2000

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    .line 20878
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->post:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    or-int/lit16 v0, v0, 0x4000

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    .line 20879
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20880
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20881
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 20882
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->from_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20884
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20885
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20886
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$MessageAction;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20887
    return-void

    .line 20873
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 20874
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_1

    .line 20875
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_2

    .line 20876
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_3

    .line 20877
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit16 v0, v0, -0x2001

    goto :goto_4

    .line 20878
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit16 v0, v0, -0x4001

    goto :goto_5
.end method
