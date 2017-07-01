.class public Lorg/telegram/ui/Adapters/BaseSearchAdapter;
.super Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
.source "BaseSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;
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
            "Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;",
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
            "Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;",
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

    .line 28
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    .line 36
    iput v1, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->reqId:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->lastFoundUsername:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtagsLoadedFromDb:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Adapters/BaseSearchAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/BaseSearchAdapter;

    .prologue
    .line 28
    iget v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->lastReqId:I

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Adapters/BaseSearchAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/BaseSearchAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->reqId:I

    return p1
.end method

.method private putRecentHashtags(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/BaseSearchAdapter$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Adapters/BaseSearchAdapter$3;-><init>(Lorg/telegram/ui/Adapters/BaseSearchAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method


# virtual methods
.method public addHashtagsFromMessage(Ljava/lang/String;)V
    .locals 12
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 133
    if-nez p1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const/4 v0, 0x0

    .line 137
    .local v0, "changed":Z
    const-string/jumbo v7, "(^|\\s)#[\\w@\\.]+"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 138
    .local v5, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 139
    .local v4, "matcher":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 140
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    .line 141
    .local v6, "start":I
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 142
    .local v1, "end":I
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x40

    if-eq v7, v8, :cond_2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x23

    if-eq v7, v8, :cond_2

    .line 143
    add-int/lit8 v6, v6, 0x1

    .line 145
    :cond_2
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "hashtag":Ljava/lang/String;
    iget-object v7, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtagsByText:Ljava/util/HashMap;

    if-nez v7, :cond_3

    .line 147
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtagsByText:Ljava/util/HashMap;

    .line 148
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtags:Ljava/util/ArrayList;

    .line 150
    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtagsByText:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;

    .line 151
    .local v3, "hashtagObject":Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;
    if-nez v3, :cond_4

    .line 152
    new-instance v3, Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;

    .end local v3    # "hashtagObject":Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;
    invoke-direct {v3}, Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;-><init>()V

    .line 153
    .restart local v3    # "hashtagObject":Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;
    iput-object v2, v3, Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;->hashtag:Ljava/lang/String;

    .line 154
    iget-object v7, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtagsByText:Ljava/util/HashMap;

    iget-object v8, v3, Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;->hashtag:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, v3, Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;->date:I

    .line 159
    iget-object v7, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtags:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 160
    const/4 v0, 0x1

    .line 161
    goto :goto_1

    .line 156
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtags:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 162
    .end local v1    # "end":I
    .end local v2    # "hashtag":Ljava/lang/String;
    .end local v3    # "hashtagObject":Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;
    .end local v6    # "start":I
    :cond_5
    if-eqz v0, :cond_0

    .line 163
    iget-object v7, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtags:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->putRecentHashtags(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public clearRecentHashtags()V
    .locals 2

    .prologue
    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtags:Ljava/util/ArrayList;

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtagsByText:Ljava/util/HashMap;

    .line 203
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/BaseSearchAdapter$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Adapters/BaseSearchAdapter$4;-><init>(Lorg/telegram/ui/Adapters/BaseSearchAdapter;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method

.method public loadRecentHashtags()V
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/BaseSearchAdapter$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Adapters/BaseSearchAdapter$2;-><init>(Lorg/telegram/ui/Adapters/BaseSearchAdapter;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method public queryServerSearch(Ljava/lang/String;ZZ)V
    .locals 8
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "allowChats"    # Z
    .param p3, "allowBots"    # Z

    .prologue
    const/4 v4, 0x0

    .line 45
    iget v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->reqId:I

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->reqId:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 47
    iput v4, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->reqId:I

    .line 49
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 50
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 51
    iput v4, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->lastReqId:I

    .line 52
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->notifyDataSetChanged()V

    .line 89
    :goto_0
    return-void

    .line 55
    :cond_2
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;-><init>()V

    .line 56
    .local v6, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_search;
    iput-object p1, v6, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;->q:Ljava/lang/String;

    .line 57
    const/16 v0, 0x32

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;->limit:I

    .line 58
    iget v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->lastReqId:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->lastReqId:I

    .line 59
    .local v2, "currentReqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v0, Lorg/telegram/ui/Adapters/BaseSearchAdapter$1;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Adapters/BaseSearchAdapter$1;-><init>(Lorg/telegram/ui/Adapters/BaseSearchAdapter;IZZLjava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v7, v6, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->reqId:I

    goto :goto_0
.end method

.method protected setHashtags(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;>;"
    .local p2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;>;"
    iput-object p1, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtags:Ljava/util/ArrayList;

    .line 217
    iput-object p2, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtagsByText:Ljava/util/HashMap;

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtagsLoadedFromDb:Z

    .line 219
    return-void
.end method
