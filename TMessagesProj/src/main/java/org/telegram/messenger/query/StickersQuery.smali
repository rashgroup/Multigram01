.class public Lorg/telegram/messenger/query/StickersQuery;
.super Ljava/lang/Object;
.source "StickersQuery.java"


# static fields
.field private static allStickers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;>;"
        }
    .end annotation
.end field

.field private static loadDate:I

.field private static loadHash:I

.field private static loadingStickers:Z

.field private static stickerSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private static stickerSetsById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private static stickerSetsByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private static stickersByEmoji:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static stickersById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private static stickersLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickersByEmoji:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickersById:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->allStickers:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/ArrayList;)I
    .locals 1
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 34
    invoke-static {p0}, Lorg/telegram/messenger/query/StickersQuery;->calcStickersHash(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/util/ArrayList;ZII)V
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 34
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/query/StickersQuery;->processLoadedStickers(Ljava/util/ArrayList;ZII)V

    return-void
.end method

.method static synthetic access$1002(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Ljava/util/HashMap;

    .prologue
    .line 34
    sput-object p0, Lorg/telegram/messenger/query/StickersQuery;->allStickers:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1102(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Ljava/util/HashMap;

    .prologue
    .line 34
    sput-object p0, Lorg/telegram/messenger/query/StickersQuery;->stickersByEmoji:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 34
    sput p0, Lorg/telegram/messenger/query/StickersQuery;->loadDate:I

    return p0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Ljava/util/HashMap;

    .prologue
    .line 34
    sput-object p0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 34
    sput-boolean p0, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:Z

    return p0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 34
    sput-boolean p0, Lorg/telegram/messenger/query/StickersQuery;->stickersLoaded:Z

    return p0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 34
    sput p0, Lorg/telegram/messenger/query/StickersQuery;->loadHash:I

    return p0
.end method

.method static synthetic access$600(Ljava/util/ArrayList;II)V
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 34
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/query/StickersQuery;->putStickersToCache(Ljava/util/ArrayList;II)V

    return-void
.end method

.method static synthetic access$702(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Ljava/util/HashMap;

    .prologue
    .line 34
    sput-object p0, Lorg/telegram/messenger/query/StickersQuery;->stickersById:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$802(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Ljava/util/HashMap;

    .prologue
    .line 34
    sput-object p0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$902(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 34
    sput-object p0, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static addNewStickerSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 11
    .param p0, "set"    # Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .prologue
    const/4 v10, 0x0

    .line 135
    sget-object v7, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    iget-object v8, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    iget-object v8, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    sget-object v7, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v7, v10, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 139
    sget-object v7, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    iget-object v8, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v7, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    iget-object v8, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v7, v8, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 142
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    .line 143
    .local v3, "document":Lorg/telegram/tgnet/TLRPC$Document;
    sget-object v7, Lorg/telegram/messenger/query/StickersQuery;->stickersById:Ljava/util/HashMap;

    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    .end local v3    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_7

    .line 146
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    .line 147
    .local v6, "stickerPack":Lorg/telegram/tgnet/TLRPC$TL_stickerPack;
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    const-string/jumbo v8, "\ufe0f"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    .line 148
    sget-object v7, Lorg/telegram/messenger/query/StickersQuery;->allStickers:Ljava/util/HashMap;

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 149
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    if-nez v1, :cond_3

    .line 150
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .restart local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    sget-object v7, Lorg/telegram/messenger/query/StickersQuery;->allStickers:Ljava/util/HashMap;

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_3
    const/4 v2, 0x0

    .local v2, "c":I
    :goto_3
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_6

    .line 154
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 155
    .local v4, "id":Ljava/lang/Long;
    sget-object v7, Lorg/telegram/messenger/query/StickersQuery;->stickersByEmoji:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 156
    sget-object v7, Lorg/telegram/messenger/query/StickersQuery;->stickersByEmoji:Ljava/util/HashMap;

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_4
    sget-object v7, Lorg/telegram/messenger/query/StickersQuery;->stickersById:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    .line 159
    .local v5, "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v5, :cond_5

    .line 160
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 145
    .end local v4    # "id":Ljava/lang/Long;
    .end local v5    # "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 164
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    .end local v2    # "c":I
    .end local v6    # "stickerPack":Lorg/telegram/tgnet/TLRPC$TL_stickerPack;
    :cond_7
    sget-object v7, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:Ljava/util/ArrayList;

    invoke-static {v7}, Lorg/telegram/messenger/query/StickersQuery;->calcStickersHash(Ljava/util/ArrayList;)I

    move-result v7

    sput v7, Lorg/telegram/messenger/query/StickersQuery;->loadHash:I

    .line 165
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 166
    const/4 v7, 0x1

    invoke-static {v10, v7}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(ZZ)V

    goto/16 :goto_0
.end method

.method public static calcNewHash()V
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->calcStickersHash(Ljava/util/ArrayList;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/query/StickersQuery;->loadHash:I

    .line 132
    return-void
.end method

.method private static calcStickersHash(Ljava/util/ArrayList;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "sets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    const-wide v8, 0x80000000L

    .line 332
    const-wide/16 v2, 0x0

    .line 333
    .local v2, "acc":J
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 334
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 335
    .local v1, "set":Lorg/telegram/tgnet/TLRPC$StickerSet;
    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->disabled:Z

    if-eqz v4, :cond_0

    .line 333
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_0
    const-wide/16 v4, 0x4f25

    mul-long/2addr v4, v2

    add-long/2addr v4, v8

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->hash:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    rem-long v2, v4, v8

    goto :goto_1

    .line 340
    .end local v1    # "set":Lorg/telegram/tgnet/TLRPC$StickerSet;
    :cond_1
    long-to-int v4, v2

    return v4
.end method

.method public static checkStickers()V
    .locals 4

    .prologue
    .line 61
    sget-boolean v0, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/query/StickersQuery;->stickersLoaded:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget v2, Lorg/telegram/messenger/query/StickersQuery;->loadDate:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xe10

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 62
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(ZZ)V

    .line 64
    :cond_1
    return-void
.end method

.method public static cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    sput v1, Lorg/telegram/messenger/query/StickersQuery;->loadHash:I

    .line 50
    sput v1, Lorg/telegram/messenger/query/StickersQuery;->loadDate:I

    .line 51
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->allStickers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 52
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 53
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickersByEmoji:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 54
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 55
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 56
    sput-boolean v1, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:Z

    .line 57
    sput-boolean v1, Lorg/telegram/messenger/query/StickersQuery;->stickersLoaded:Z

    .line 58
    return-void
.end method

.method public static getAllStickers()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 91
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->allStickers:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getEmojiForSticker(J)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # J

    .prologue
    .line 107
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->stickersByEmoji:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getStickerById(J)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 6
    .param p0, "id"    # J

    .prologue
    .line 71
    sget-object v4, Lorg/telegram/messenger/query/StickersQuery;->stickersById:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    .line 72
    .local v0, "document":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v0, :cond_0

    .line 73
    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSetId(Lorg/telegram/tgnet/TLRPC$Document;)J

    move-result-wide v2

    .line 74
    .local v2, "setId":J
    sget-object v4, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 75
    .local v1, "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->disabled:Z

    if-eqz v4, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 79
    .end local v0    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v1    # "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .end local v2    # "setId":J
    :cond_0
    return-object v0
.end method

.method public static getStickerSetById(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .locals 1
    .param p0, "id"    # Ljava/lang/Long;

    .prologue
    .line 87
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-object v0
.end method

.method public static getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-object v0
.end method

.method public static getStickerSetId(Lorg/telegram/tgnet/TLRPC$Document;)J
    .locals 4
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 319
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 320
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 321
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v2, :cond_0

    .line 322
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    if-eqz v2, :cond_1

    .line 323
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 328
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :goto_1
    return-wide v2

    .line 319
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method public static getStickerSetName(J)Ljava/lang/String;
    .locals 4
    .param p0, "setId"    # J

    .prologue
    .line 314
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 315
    .local v0, "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getStickerSets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static isLoadingStickers()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:Z

    return v0
.end method

.method public static isStickerPackInstalled(J)Z
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 99
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStickerPackInstalled(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static loadStickers(ZZ)V
    .locals 3
    .param p0, "cache"    # Z
    .param p1, "force"    # Z

    .prologue
    .line 170
    sget-boolean v1, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:Z

    if-eqz v1, :cond_0

    .line 272
    :goto_0
    return-void

    .line 173
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:Z

    .line 174
    if-eqz p0, :cond_1

    .line 175
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$2;

    invoke-direct {v2}, Lorg/telegram/messenger/query/StickersQuery$2;-><init>()V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 209
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAllStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getAllStickers;-><init>()V

    .line 210
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getAllStickers;
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_1
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAllStickers;->hash:I

    .line 211
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$3;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/query/StickersQuery$3;-><init>(Lorg/telegram/tgnet/TLRPC$TL_messages_getAllStickers;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 210
    :cond_2
    sget v1, Lorg/telegram/messenger/query/StickersQuery;->loadHash:I

    goto :goto_1
.end method

.method private static processLoadedStickers(Ljava/util/ArrayList;ZII)V
    .locals 2
    .param p1, "cache"    # Z
    .param p2, "date"    # I
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;ZII)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$5;

    invoke-direct {v0}, Lorg/telegram/messenger/query/StickersQuery$5;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 351
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/query/StickersQuery$6;

    invoke-direct {v1, p1, p0, p2, p3}, Lorg/telegram/messenger/query/StickersQuery$6;-><init>(ZLjava/util/ArrayList;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 450
    return-void
.end method

.method private static putStickersToCache(Ljava/util/ArrayList;II)V
    .locals 3
    .param p1, "date"    # I
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, "stickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    if-eqz p0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 276
    .local v0, "stickersFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$4;

    invoke-direct {v2, v0, p1, p2}, Lorg/telegram/messenger/query/StickersQuery$4;-><init>(Ljava/util/ArrayList;II)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 311
    return-void

    .line 275
    .end local v0    # "stickersFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeStickersSet(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StickerSet;I)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stickerSet"    # Lorg/telegram/tgnet/TLRPC$StickerSet;
    .param p2, "hide"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 453
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 454
    .local v4, "stickerSetID":Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;
    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;->access_hash:J

    .line 455
    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;->id:J

    .line 456
    if-eqz p2, :cond_6

    .line 457
    if-ne p2, v6, :cond_1

    move v5, v6

    :goto_0
    iput-boolean v5, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->disabled:Z

    .line 458
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 459
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 460
    .local v3, "set":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-wide v10, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v5, v8, v10

    if-nez v5, :cond_4

    .line 461
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 462
    const/4 v5, 0x2

    if-ne p2, v5, :cond_2

    .line 463
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v5, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 476
    .end local v3    # "set":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_0
    :goto_2
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:Ljava/util/ArrayList;

    invoke-static {v5}, Lorg/telegram/messenger/query/StickersQuery;->calcStickersHash(Ljava/util/ArrayList;)I

    move-result v5

    sput v5, Lorg/telegram/messenger/query/StickersQuery;->loadHash:I

    .line 477
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:Ljava/util/ArrayList;

    sget v8, Lorg/telegram/messenger/query/StickersQuery;->loadDate:I

    sget v9, Lorg/telegram/messenger/query/StickersQuery;->loadHash:I

    invoke-static {v5, v8, v9}, Lorg/telegram/messenger/query/StickersQuery;->putStickersToCache(Ljava/util/ArrayList;II)V

    .line 478
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v8, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v8, v9}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 479
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;-><init>()V

    .line 480
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;
    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 481
    if-ne p2, v6, :cond_5

    :goto_3
    iput-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;->disabled:Z

    .line 482
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/query/StickersQuery$7;

    invoke-direct {v6}, Lorg/telegram/messenger/query/StickersQuery$7;-><init>()V

    invoke-virtual {v5, v2, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 517
    .end local v0    # "a":I
    .end local v2    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;
    :goto_4
    return-void

    :cond_1
    move v5, v7

    .line 457
    goto :goto_0

    .line 465
    .restart local v0    # "a":I
    .restart local v3    # "set":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_2
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "b":I
    :goto_5
    if-ltz v1, :cond_0

    .line 466
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->disabled:Z

    if-eqz v5, :cond_3

    .line 465
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 469
    :cond_3
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:Ljava/util/ArrayList;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v5, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 458
    .end local v1    # "b":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .end local v3    # "set":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .restart local v2    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;
    :cond_5
    move v6, v7

    .line 481
    goto :goto_3

    .line 494
    .end local v0    # "a":I
    .end local v2    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;
    :cond_6
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_uninstallStickerSet;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_uninstallStickerSet;-><init>()V

    .line 495
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_uninstallStickerSet;
    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_uninstallStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 496
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/query/StickersQuery$8;

    invoke-direct {v6, p0}, Lorg/telegram/messenger/query/StickersQuery$8;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_4
.end method

.method public static reorderStickers(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .line 112
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/messenger/query/StickersQuery$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/query/StickersQuery$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 125
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->calcStickersHash(Ljava/util/ArrayList;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/query/StickersQuery;->loadHash:I

    .line 126
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 127
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(ZZ)V

    .line 128
    return-void
.end method
