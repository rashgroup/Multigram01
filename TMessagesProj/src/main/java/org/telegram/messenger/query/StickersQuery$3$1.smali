.class Lorg/telegram/messenger/query/StickersQuery$3$1;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$3;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/StickersQuery$3;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$3;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$3$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$3;

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$3$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 217
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$3$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;

    if-eqz v0, :cond_2

    .line 218
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 219
    .local v4, "newStickerSets":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v2, "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    iget-object v6, p0, Lorg/telegram/messenger/query/StickersQuery$3$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;

    .line 222
    .local v6, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_0
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 223
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 225
    .local v5, "stickerSet":Lorg/telegram/tgnet/TLRPC$StickerSet;
    # getter for: Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$200()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v10, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 226
    .local v8, "oldSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    if-eqz v8, :cond_1

    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->hash:I

    iget v1, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->hash:I

    if-ne v0, v1, :cond_1

    .line 227
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v1, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->disabled:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->disabled:Z

    .line 228
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v1, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->installed:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->installed:Z

    .line 229
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v1, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    .line 230
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 234
    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-int v1, v10

    iget v10, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;->hash:I

    # invokes: Lorg/telegram/messenger/query/StickersQuery;->processLoadedStickers(Ljava/util/ArrayList;ZII)V
    invoke-static {v2, v0, v1, v10}, Lorg/telegram/messenger/query/StickersQuery;->access$100(Ljava/util/ArrayList;ZII)V

    .line 222
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 239
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    move v3, v7

    .line 242
    .local v3, "index":I
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;-><init>()V

    .line 243
    .local v9, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 244
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v10, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v10, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 245
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v10, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v10, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 247
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$3$1$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/query/StickersQuery$3$1$1;-><init>(Lorg/telegram/messenger/query/StickersQuery$3$1;Ljava/util/ArrayList;ILjava/util/HashMap;Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;)V

    invoke-virtual {v10, v9, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_1

    .line 265
    .end local v2    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v3    # "index":I
    .end local v4    # "newStickerSets":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v5    # "stickerSet":Lorg/telegram/tgnet/TLRPC$StickerSet;
    .end local v6    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;
    .end local v7    # "a":I
    .end local v8    # "oldSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .end local v9    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-int v10, v10

    iget-object v11, p0, Lorg/telegram/messenger/query/StickersQuery$3$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$3;

    iget-object v11, v11, Lorg/telegram/messenger/query/StickersQuery$3;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_getAllStickers;

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_getAllStickers;->hash:I

    # invokes: Lorg/telegram/messenger/query/StickersQuery;->processLoadedStickers(Ljava/util/ArrayList;ZII)V
    invoke-static {v0, v1, v10, v11}, Lorg/telegram/messenger/query/StickersQuery;->access$100(Ljava/util/ArrayList;ZII)V

    .line 267
    :cond_3
    return-void
.end method
