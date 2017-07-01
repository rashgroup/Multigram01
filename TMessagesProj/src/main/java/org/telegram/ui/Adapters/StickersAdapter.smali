.class public Lorg/telegram/ui/Adapters/StickersAdapter;
.super Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
.source "StickersAdapter.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/StickersAdapter$Holder;,
        Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;

.field private lastSticker:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private newRecentStickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private recentLoadDate:J

.field private stickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private stickersToLoad:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private visible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->newRecentStickers:Ljava/util/ArrayList;

    .line 55
    iput-object p1, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->delegate:Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;

    .line 57
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->checkStickers()V

    .line 58
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 59
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Adapters/StickersAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/StickersAdapter;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->newRecentStickers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkStickerFilesExistAndDownload()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 81
    iget-object v5, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 94
    :goto_0
    return v4

    .line 84
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 85
    const/16 v5, 0xa

    iget-object v6, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 86
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 87
    iget-object v5, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    .line 88
    .local v1, "document":Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v6, "webp"

    invoke-static {v5, v6, v8}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    .line 89
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 90
    iget-object v5, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v7, "webp"

    invoke-static {v6, v7}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v7, "webp"

    invoke-virtual {v5, v6, v7, v4, v8}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZ)V

    .line 86
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v2    # "f":Ljava/io/File;
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    goto :goto_0
.end method


# virtual methods
.method public clearStickers()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->lastSticker:Ljava/lang/String;

    .line 173
    iput-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 175
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/StickersAdapter;->notifyDataSetChanged()V

    .line 176
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 69
    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    if-eq p1, v2, :cond_0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    if-ne p1, v2, :cond_2

    .line 70
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->visible:Z

    if-eqz v2, :cond_2

    .line 71
    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/String;

    .line 72
    .local v0, "fileName":Ljava/lang/String;
    iget-object v2, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 73
    iget-object v2, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    iget-object v2, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->delegate:Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-interface {v2, v1}, Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 78
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public getItem(I)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 189
    int-to-long v0, p1

    return-wide v0
.end method

.method public loadStikersForEmoji(Ljava/lang/CharSequence;)V
    .locals 14
    .param p1, "emoji"    # Ljava/lang/CharSequence;

    .prologue
    .line 98
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    const/16 v11, 0xe

    if-gt v10, v11, :cond_3

    const/4 v8, 0x1

    .line 99
    .local v8, "search":Z
    :goto_0
    if-eqz v8, :cond_1

    .line 100
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 101
    .local v6, "length":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v6, :cond_0

    .line 102
    add-int/lit8 v10, v6, -0x1

    if-ge v0, v10, :cond_4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const v11, 0xd83c

    if-ne v10, v11, :cond_4

    add-int/lit8 v10, v0, 0x1

    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const v11, 0xdffb

    if-lt v10, v11, :cond_4

    add-int/lit8 v10, v0, 0x1

    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const v11, 0xdfff

    if-gt v10, v11, :cond_4

    .line 103
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {p1, v12, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    add-int/lit8 v12, v0, 0x2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    invoke-interface {p1, v12, v13}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 110
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->lastSticker:Ljava/lang/String;

    .line 111
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getAllStickers()Ljava/util/HashMap;

    move-result-object v1

    .line 112
    .local v1, "allStickers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;>;"
    if-eqz v1, :cond_1

    .line 113
    iget-object v10, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->lastSticker:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 114
    .local v7, "newStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    iget-object v10, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v10, :cond_6

    if-nez v7, :cond_6

    .line 115
    iget-boolean v10, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->visible:Z

    if-eqz v10, :cond_1

    .line 116
    iget-object v10, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->delegate:Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 117
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->visible:Z

    .line 163
    .end local v0    # "a":I
    .end local v1    # "allStickers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;>;"
    .end local v6    # "length":I
    .end local v7    # "newStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    :cond_1
    :goto_2
    if-nez v8, :cond_2

    .line 164
    iget-boolean v10, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->visible:Z

    if-eqz v10, :cond_2

    iget-object v10, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v10, :cond_2

    .line 165
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->visible:Z

    .line 166
    iget-object v10, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->delegate:Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 169
    :cond_2
    return-void

    .line 98
    .end local v8    # "search":Z
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 105
    .restart local v0    # "a":I
    .restart local v6    # "length":I
    .restart local v8    # "search":Z
    :cond_4
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const v11, 0xfe0f

    if-ne v10, v11, :cond_5

    .line 106
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {p1, v12, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    add-int/lit8 v12, v0, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    invoke-interface {p1, v12, v13}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 107
    add-int/lit8 v6, v6, -0x1

    .line 101
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 120
    .restart local v1    # "allStickers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;>;"
    .restart local v7    # "newStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    :cond_6
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_3
    iput-object v10, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    .line 121
    iget-object v10, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v10, :cond_b

    .line 122
    iget-wide v10, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->recentLoadDate:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x2710

    cmp-long v10, v10, v12

    if-lez v10, :cond_a

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->recentLoadDate:J

    .line 125
    :try_start_0
    iget-object v10, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "emoji"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string/jumbo v11, "stickers2"

    const-string/jumbo v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 126
    .local v9, "str":Ljava/lang/String;
    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "args":[Ljava/lang/String;
    const/4 v0, 0x0

    :goto_4
    array-length v10, v2

    if-ge v0, v10, :cond_a

    .line 128
    aget-object v10, v2, v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_9

    .line 127
    :cond_7
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 120
    .end local v2    # "args":[Ljava/lang/String;
    .end local v9    # "str":Ljava/lang/String;
    :cond_8
    const/4 v10, 0x0

    goto :goto_3

    .line 131
    .restart local v2    # "args":[Ljava/lang/String;
    .restart local v9    # "str":Ljava/lang/String;
    :cond_9
    aget-object v10, v2, v0

    invoke-static {v10}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 132
    .local v4, "id":J
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-eqz v10, :cond_7

    .line 133
    iget-object v10, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->newRecentStickers:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 136
    .end local v2    # "args":[Ljava/lang/String;
    .end local v4    # "id":J
    .end local v9    # "str":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 137
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "tmessages"

    invoke-static {v10, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_a
    iget-object v10, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->newRecentStickers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_b

    .line 141
    iget-object v10, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/ui/Adapters/StickersAdapter$1;

    invoke-direct {v11, p0}, Lorg/telegram/ui/Adapters/StickersAdapter$1;-><init>(Lorg/telegram/ui/Adapters/StickersAdapter;)V

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 156
    :cond_b
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/StickersAdapter;->checkStickerFilesExistAndDownload()Z

    .line 157
    iget-object v11, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->delegate:Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;

    iget-object v10, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v10, :cond_c

    iget-object v10, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c

    iget-object v10, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x1

    :goto_6
    invoke-interface {v11, v10}, Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 158
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/StickersAdapter;->notifyDataSetChanged()V

    .line 159
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->visible:Z

    goto/16 :goto_2

    .line 157
    :cond_c
    const/4 v10, 0x0

    goto :goto_6
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "side":I
    if-nez p2, :cond_2

    .line 202
    iget-object v1, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 203
    const/4 v0, 0x2

    .line 210
    :cond_0
    :goto_0
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/StickerCell;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Cells/StickerCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;I)V

    .line 211
    return-void

    .line 205
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 207
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_0

    .line 208
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    .line 194
    new-instance v0, Lorg/telegram/ui/Cells/StickerCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/StickerCell;-><init>(Landroid/content/Context;)V

    .line 195
    .local v0, "view":Lorg/telegram/ui/Cells/StickerCell;
    new-instance v1, Lorg/telegram/ui/Adapters/StickersAdapter$Holder;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Adapters/StickersAdapter$Holder;-><init>(Lorg/telegram/ui/Adapters/StickersAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 64
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 65
    return-void
.end method
