.class final Lorg/telegram/messenger/query/StickersQuery$6;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->processLoadedStickers(Ljava/util/ArrayList;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cache:Z

.field final synthetic val$date:I

.field final synthetic val$hash:I

.field final synthetic val$res:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(ZLjava/util/ArrayList;II)V
    .locals 0

    .prologue
    .line 351
    iput-boolean p1, p0, Lorg/telegram/messenger/query/StickersQuery$6;->val$cache:Z

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$6;->val$res:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/messenger/query/StickersQuery$6;->val$date:I

    iput p4, p0, Lorg/telegram/messenger/query/StickersQuery$6;->val$hash:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 354
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/query/StickersQuery$6;->val$cache:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$6;->val$res:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v20, 0x3e8

    div-long v2, v2, v20

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$6;->val$date:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v2, v2, v20

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v20, 0xe10

    cmp-long v2, v2, v20

    if-gez v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/query/StickersQuery$6;->val$cache:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$6;->val$res:Ljava/util/ArrayList;

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/query/StickersQuery$6;->val$hash:I

    if-nez v2, :cond_4

    .line 355
    :cond_1
    new-instance v20, Lorg/telegram/messenger/query/StickersQuery$6$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/query/StickersQuery$6$1;-><init>(Lorg/telegram/messenger/query/StickersQuery$6;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$6;->val$res:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/query/StickersQuery$6;->val$cache:Z

    if-nez v2, :cond_3

    const-wide/16 v2, 0x3e8

    :goto_0
    move-object/from16 v0, v20

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$6;->val$res:Ljava/util/ArrayList;

    if-nez v2, :cond_4

    .line 448
    :cond_2
    :goto_1
    return-void

    .line 355
    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 368
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$6;->val$res:Ljava/util/ArrayList;

    if-eqz v2, :cond_11

    .line 370
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v7, "stickerSetsNew":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 372
    .local v5, "stickerSetsByIdNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 373
    .local v6, "stickerSetsByNameNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 374
    .local v9, "stickersByEmojiNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 375
    .local v4, "stickersByIdNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 377
    .local v8, "allStickersNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;>;"
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$6;->val$res:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_f

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$6;->val$res:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 379
    .local v19, "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    if-nez v19, :cond_6

    .line 377
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 382
    :cond_6
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    move-object/from16 v0, v19

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    move-object/from16 v0, v19

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const/4 v12, 0x0

    .local v12, "b":I
    :goto_3
    move-object/from16 v0, v19

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_9

    .line 387
    move-object/from16 v0, v19

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$Document;

    .line 388
    .local v14, "document":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v14, :cond_7

    instance-of v2, v14, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    if-eqz v2, :cond_8

    .line 386
    :cond_7
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 391
    :cond_8
    iget-wide v2, v14, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 436
    .end local v4    # "stickersByIdNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;>;"
    .end local v5    # "stickerSetsByIdNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v6    # "stickerSetsByNameNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v7    # "stickerSetsNew":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v8    # "allStickersNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;>;"
    .end local v9    # "stickersByEmojiNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v10    # "a":I
    .end local v12    # "b":I
    .end local v14    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v19    # "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :catch_0
    move-exception v15

    .line 437
    .local v15, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v15}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 393
    .end local v15    # "e":Ljava/lang/Throwable;
    .restart local v4    # "stickersByIdNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;>;"
    .restart local v5    # "stickerSetsByIdNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .restart local v6    # "stickerSetsByNameNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .restart local v7    # "stickerSetsNew":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .restart local v8    # "allStickersNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;>;"
    .restart local v9    # "stickersByEmojiNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v10    # "a":I
    .restart local v12    # "b":I
    .restart local v19    # "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_9
    :try_start_1
    move-object/from16 v0, v19

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->disabled:Z

    if-nez v2, :cond_5

    .line 394
    const/4 v12, 0x0

    :goto_5
    move-object/from16 v0, v19

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_5

    .line 395
    move-object/from16 v0, v19

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    .line 396
    .local v18, "stickerPack":Lorg/telegram/tgnet/TLRPC$TL_stickerPack;
    if-eqz v18, :cond_a

    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 394
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 399
    :cond_b
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    const-string/jumbo v3, "\ufe0f"

    const-string/jumbo v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    .line 400
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 401
    .local v11, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    if-nez v11, :cond_c

    .line 402
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .restart local v11    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v8, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :cond_c
    const/4 v13, 0x0

    .local v13, "c":I
    :goto_6
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_a

    .line 406
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    .line 407
    .local v16, "id":Ljava/lang/Long;
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 408
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :cond_d
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/telegram/tgnet/TLRPC$Document;

    .line 411
    .local v17, "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v17, :cond_e

    .line 412
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 419
    .end local v11    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    .end local v12    # "b":I
    .end local v13    # "c":I
    .end local v16    # "id":Ljava/lang/Long;
    .end local v17    # "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v18    # "stickerPack":Lorg/telegram/tgnet/TLRPC$TL_stickerPack;
    .end local v19    # "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/query/StickersQuery$6;->val$cache:Z

    if-nez v2, :cond_10

    .line 420
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/query/StickersQuery$6;->val$date:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/query/StickersQuery$6;->val$hash:I

    # invokes: Lorg/telegram/messenger/query/StickersQuery;->putStickersToCache(Ljava/util/ArrayList;II)V
    invoke-static {v7, v2, v3}, Lorg/telegram/messenger/query/StickersQuery;->access$600(Ljava/util/ArrayList;II)V

    .line 422
    :cond_10
    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$6$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/messenger/query/StickersQuery$6$2;-><init>(Lorg/telegram/messenger/query/StickersQuery$6;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 439
    .end local v4    # "stickersByIdNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;>;"
    .end local v5    # "stickerSetsByIdNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v6    # "stickerSetsByNameNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v7    # "stickerSetsNew":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v8    # "allStickersNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;>;"
    .end local v9    # "stickersByEmojiNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v10    # "a":I
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/query/StickersQuery$6;->val$cache:Z

    if-nez v2, :cond_2

    .line 440
    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$6$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/messenger/query/StickersQuery$6$3;-><init>(Lorg/telegram/messenger/query/StickersQuery$6;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 446
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/query/StickersQuery$6;->val$date:I

    const/16 v20, 0x0

    move/from16 v0, v20

    # invokes: Lorg/telegram/messenger/query/StickersQuery;->putStickersToCache(Ljava/util/ArrayList;II)V
    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/query/StickersQuery;->access$600(Ljava/util/ArrayList;II)V

    goto/16 :goto_1
.end method
