.class public abstract Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;
.super Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
.source "BaseSearchAdapterRecycler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$HashtagObject;
    }
.end annotation


# instance fields
.field protected globalSearch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field protected hashtags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$HashtagObject;",
            ">;"
        }
    .end annotation
.end field

.field protected hashtagsByText:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$HashtagObject;",
            ">;"
        }
    .end annotation
.end field

.field protected hashtagsLoadedFromDb:Z

.field protected lastFoundUsername:Ljava/lang/String;

.field private lastReqId:I

.field private reqId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->globalSearch:Ljava/util/ArrayList;

    .line 37
    iput v1, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->reqId:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->lastFoundUsername:Ljava/lang/String;

    .line 43
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->hashtagsLoadedFromDb:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;

    .prologue
    .line 29
    iget v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->lastReqId:I

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->reqId:I

    return p1
.end method

.method private putRecentHashtags(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$HashtagObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$HashtagObject;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$3;-><init>(Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 196
    return-void
.end method


# virtual methods
.method public addHashtagsFromMessage(Ljava/lang/CharSequence;)V
    .locals 12
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 131
    if-nez p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const/4 v0, 0x0

    .line 135
    .local v0, "changed":Z
    const-string/jumbo v7, "(^|\\s)#[\\w@\\.]+"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 136
    .local v5, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 137
    .local v4, "matcher":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 138
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    .line 139
    .local v6, "start":I
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 140
    .local v1, "end":I
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x40

    if-eq v7, v8, :cond_2

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x23

    if-eq v7, v8, :cond_2

    .line 141
    add-int/lit8 v6, v6, 0x1

    .line 143
    :cond_2
    invoke-interface {p1, v6, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "hashtag":Ljava/lang/String;
    iget-object v7, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->hashtagsByText:Ljava/util/HashMap;

    if-nez v7, :cond_3

    .line 145
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->hashtagsByText:Ljava/util/HashMap;

    .line 146
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->hashtags:Ljava/util/ArrayList;

    .line 148
    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->hashtagsByText:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$HashtagObject;

    .line 149
    .local v3, "hashtagObject":Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$HashtagObject;
    if-nez v3, :cond_4

    .line 150
    new-instance v3, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$HashtagObject;

    .end local v3    # "hashtagObject":Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$HashtagObject;
    invoke-direct {v3}, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$HashtagObject;-><init>()V

    .line 151
    .restart local v3    # "hashtagObject":Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$HashtagObject;
    iput-object v2, v3, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$HashtagObject;->hashtag:Ljava/lang/String;

    .line 152
    iget-object v7, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->hashtagsByText:Ljava/util/HashMap;

    iget-object v8, v3, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$HashtagObject;->hashtag:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, v3, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$HashtagObject;->date:I

    .line 157
    iget-object v7, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->hashtags:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 158
    const/4 v0, 0x1

    .line 159
    goto :goto_1

    .line 154
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->hashtags:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 160
    .end local v1    # "end":I
    .end local v2    # "hashtag":Ljava/lang/String;
    .end local v3    # "hashtagObject":Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$HashtagObject;
    .end local v6    # "start":I
    :cond_5
    if-eqz v0, :cond_0

    .line 161
    iget-object v7, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->hashtags:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->putRecentHashtags(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public clearRecentHashtags()V
    .locals 2

    .prologue
    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->hashtags:Ljava/util/ArrayList;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->hashtagsByText:Ljava/util/HashMap;

    .line 201
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$4;-><init>(Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 211
    return-void
.end method

.method public loadRecentHashtags()V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$2;-><init>(Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method public queryServerSearch(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "allowChats"    # Z

    .prologue
    const/4 v5, 0x0

    .line 46
    iget v2, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->reqId:I

    if-eqz v2, :cond_0

    .line 47
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->reqId:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 48
    iput v5, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->reqId:I

    .line 50
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 51
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 52
    iput v5, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->lastReqId:I

    .line 53
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->notifyDataSetChanged()V

    .line 87
    :goto_0
    return-void

    .line 56
    :cond_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;-><init>()V

    .line 57
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_search;
    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;->q:Ljava/lang/String;

    .line 58
    const/16 v2, 0x32

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;->limit:I

    .line 59
    iget v2, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->lastReqId:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->lastReqId:I

    .line 60
    .local v0, "currentReqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1;

    invoke-direct {v3, p0, v0, p2, p1}, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$1;-><init>(Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;IZLjava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v1, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->reqId:I

    goto :goto_0
.end method

.method protected setHashtags(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$HashtagObject;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$HashtagObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$HashtagObject;>;"
    .local p2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler$HashtagObject;>;"
    iput-object p1, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->hashtags:Ljava/util/ArrayList;

    .line 215
    iput-object p2, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->hashtagsByText:Ljava/util/HashMap;

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapterRecycler;->hashtagsLoadedFromDb:Z

    .line 217
    return-void
.end method
