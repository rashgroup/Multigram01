.class public Lorg/telegram/tgnet/TLRPC$TL_message_secret;
.super Lorg/telegram/tgnet/TLRPC$TL_message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_message_secret"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21158
    const v0, 0x555555f9

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21157
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 21161
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    .line 21162
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->unread:Z

    .line 21163
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->out:Z

    .line 21164
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->mentioned:Z

    .line 21165
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_3

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->media_unread:Z

    .line 21166
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->id:I

    .line 21167
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->ttl:I

    .line 21168
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->from_id:I

    .line 21169
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 21170
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->date:I

    .line 21171
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->message:Ljava/lang/String;

    .line 21172
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 21173
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 21174
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_4

    .line 21175
    if-eqz p2, :cond_5

    .line 21176
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "wrong Vector magic, got %x"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "magic":I
    :cond_0
    move v4, v6

    .line 21162
    goto :goto_0

    :cond_1
    move v4, v6

    .line 21163
    goto :goto_1

    :cond_2
    move v4, v6

    .line 21164
    goto :goto_2

    :cond_3
    move v4, v6

    .line 21165
    goto :goto_3

    .line 21180
    .restart local v2    # "magic":I
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 21181
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4
    if-ge v0, v1, :cond_7

    .line 21182
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v3

    .line 21183
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    if-nez v3, :cond_6

    .line 21197
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_5
    :goto_5
    return-void

    .line 21186
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_6
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21181
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 21188
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_7
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_8

    .line 21189
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->via_bot_name:Ljava/lang/String;

    .line 21191
    :cond_8
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_9

    .line 21192
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->reply_to_random_id:J

    .line 21194
    :cond_9
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->id:I

    if-ltz v4, :cond_a

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->message:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->message:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->message:Ljava/lang/String;

    const-string/jumbo v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 21195
    :cond_a
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->attachPath:Ljava/lang/String;

    goto :goto_5
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 21200
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21201
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->unread:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    or-int/lit8 v2, v2, 0x1

    :goto_0
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    .line 21202
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->out:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    or-int/lit8 v2, v2, 0x2

    :goto_1
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    .line 21203
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->mentioned:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    or-int/lit8 v2, v2, 0x10

    :goto_2
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    .line 21204
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->media_unread:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    or-int/lit8 v2, v2, 0x20

    :goto_3
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    .line 21205
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21206
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21207
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->ttl:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21208
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->from_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21209
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21210
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->date:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21211
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->message:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 21212
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21213
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21214
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 21215
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21216
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4
    if-ge v0, v1, :cond_4

    .line 21217
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21216
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 21201
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_0
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    and-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 21202
    :cond_1
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    and-int/lit8 v2, v2, -0x3

    goto :goto_1

    .line 21203
    :cond_2
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    and-int/lit8 v2, v2, -0x11

    goto :goto_2

    .line 21204
    :cond_3
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    and-int/lit8 v2, v2, -0x21

    goto :goto_3

    .line 21219
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    :cond_4
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_5

    .line 21220
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->via_bot_name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 21222
    :cond_5
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_6

    .line 21223
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->reply_to_random_id:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 21225
    :cond_6
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;->attachPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 21226
    return-void
.end method
