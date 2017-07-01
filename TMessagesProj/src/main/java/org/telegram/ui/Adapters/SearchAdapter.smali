.class public Lorg/telegram/ui/Adapters/SearchAdapter;
.super Lorg/telegram/ui/Adapters/BaseSearchAdapter;
.source "SearchAdapter.java"


# instance fields
.field private allowBots:Z

.field private allowChats:Z

.field private allowUsernameSearch:Z

.field private checkedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "*>;"
        }
    .end annotation
.end field

.field private ignoreUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private onlyMutual:Z

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private searchTimer:Ljava/util/Timer;

.field private useUserCell:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;ZZZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "usernameSearch"    # Z
    .param p4, "mutual"    # Z
    .param p5, "chats"    # Z
    .param p6, "bots"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;ZZZZ)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "arg1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseSearchAdapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    .line 49
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->ignoreUsers:Ljava/util/HashMap;

    .line 51
    iput-boolean p4, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->onlyMutual:Z

    .line 52
    iput-boolean p3, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowUsernameSearch:Z

    .line 53
    iput-boolean p5, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowChats:Z

    .line 54
    iput-boolean p6, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowBots:Z

    .line 55
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Adapters/SearchAdapter;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapter;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapter;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 34
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/SearchAdapter;->processSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Adapters/SearchAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapter;

    .prologue
    .line 34
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowUsernameSearch:Z

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Adapters/SearchAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapter;

    .prologue
    .line 34
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowChats:Z

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Adapters/SearchAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapter;

    .prologue
    .line 34
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowBots:Z

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Adapters/SearchAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapter;

    .prologue
    .line 34
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->onlyMutual:Z

    return v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 34
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$802(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 34
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    return-object p1
.end method

.method private processSearch(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, Lorg/telegram/ui/Adapters/SearchAdapter$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Adapters/SearchAdapter$2;-><init>(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v0, Lorg/telegram/ui/Adapters/SearchAdapter$3;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapter$3;-><init>(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 190
    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 191
    .local v0, "count":I
    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 192
    .local v1, "globalCount":I
    if-eqz v1, :cond_0

    .line 193
    add-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v2

    .line 195
    :cond_0
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lorg/telegram/tgnet/TLObject;
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 211
    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 212
    .local v1, "localCount":I
    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 213
    .local v0, "globalCount":I
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    .line 214
    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLObject;

    .line 218
    :goto_0
    return-object v2

    .line 215
    :cond_0
    if-le p1, v1, :cond_1

    add-int v2, v0, v1

    if-gt p1, v2, :cond_1

    .line 216
    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->globalSearch:Ljava/util/ArrayList;

    sub-int v3, p1, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLObject;

    goto :goto_0

    .line 218
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 223
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 309
    const/4 v0, 0x1

    .line 311
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 233
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 234
    if-nez p2, :cond_0

    .line 235
    new-instance p2, Lorg/telegram/ui/Cells/GreySectionCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/GreySectionCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    move-object v0, p2

    .line 236
    check-cast v0, Lorg/telegram/ui/Cells/GreySectionCell;

    const-string/jumbo v2, "GlobalSearch"

    const v5, 0x7f070251

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/GreySectionCell;->setText(Ljava/lang/String;)V

    .line 303
    :cond_0
    :goto_0
    return-object p2

    .line 239
    :cond_1
    if-nez p2, :cond_2

    .line 240
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->useUserCell:Z

    if-eqz v0, :cond_5

    .line 241
    new-instance p2, Lorg/telegram/ui/Cells/UserCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v5, 0x1

    const/4 v10, 0x0

    invoke-direct {p2, v0, v2, v5, v10}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 242
    .restart local p2    # "view":Landroid/view/View;
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->checkedMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 243
    check-cast v0, Lorg/telegram/ui/Cells/UserCell;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    .line 250
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v1

    .line 251
    .local v1, "object":Lorg/telegram/tgnet/TLObject;
    if-eqz v1, :cond_0

    .line 252
    const/4 v8, 0x0

    .line 253
    .local v8, "id":I
    const/4 v9, 0x0

    .line 254
    .local v9, "un":Ljava/lang/String;
    instance-of v0, v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_6

    move-object v0, v1

    .line 255
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object v0, v1

    .line 256
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 262
    :cond_3
    :goto_2
    const/4 v4, 0x0

    .line 263
    .local v4, "username":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 264
    .local v3, "name":Ljava/lang/CharSequence;
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_7

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "name":Ljava/lang/CharSequence;
    check-cast v3, Ljava/lang/CharSequence;

    .line 266
    .restart local v3    # "name":Ljava/lang/CharSequence;
    if-eqz v3, :cond_4

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 267
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "@"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 268
    move-object v4, v3

    .line 269
    const/4 v3, 0x0

    .line 285
    :cond_4
    :goto_3
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->useUserCell:Z

    if-eqz v0, :cond_9

    move-object v0, p2

    .line 286
    check-cast v0, Lorg/telegram/ui/Cells/UserCell;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Lorg/telegram/ui/Cells/UserCell;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->checkedMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 288
    check-cast v0, Lorg/telegram/ui/Cells/UserCell;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->checkedMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    goto/16 :goto_0

    .line 246
    .end local v1    # "object":Lorg/telegram/tgnet/TLObject;
    .end local v3    # "name":Ljava/lang/CharSequence;
    .end local v4    # "username":Ljava/lang/CharSequence;
    .end local v8    # "id":I
    .end local v9    # "un":Ljava/lang/String;
    :cond_5
    new-instance p2, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    goto :goto_1

    .line 257
    .restart local v1    # "object":Lorg/telegram/tgnet/TLObject;
    .restart local v8    # "id":I
    .restart local v9    # "un":Ljava/lang/String;
    :cond_6
    instance-of v0, v1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 258
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    move-object v0, v1

    .line 259
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    goto :goto_2

    .line 272
    .restart local v3    # "name":Ljava/lang/CharSequence;
    .restart local v4    # "username":Ljava/lang/CharSequence;
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_4

    if-eqz v9, :cond_4

    .line 273
    iget-object v7, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->lastFoundUsername:Ljava/lang/String;

    .line 274
    .local v7, "foundUserName":Ljava/lang/String;
    const-string/jumbo v0, "@"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 275
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 278
    :cond_8
    :try_start_0
    const-string/jumbo v0, "<c#ff4d83b3>@%s</c>%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v5

    const/4 v5, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_3

    .line 279
    :catch_0
    move-exception v6

    .line 280
    .local v6, "e":Ljava/lang/Exception;
    move-object v4, v9

    .line 281
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "foundUserName":Ljava/lang/String;
    :cond_9
    move-object v0, p2

    .line 291
    check-cast v0, Lorg/telegram/ui/Cells/ProfileSearchCell;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    move-object v0, p2

    .line 292
    check-cast v0, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/SearchAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p1, v2, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p1, v2, :cond_a

    const/4 v2, 0x1

    :goto_4
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->ignoreUsers:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->ignoreUsers:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, p2

    .line 295
    check-cast v0, Lorg/telegram/ui/Cells/ProfileSearchCell;

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawAlpha:F

    goto/16 :goto_0

    .line 292
    :cond_a
    const/4 v2, 0x0

    goto :goto_4

    :cond_b
    move-object v0, p2

    .line 297
    check-cast v0, Lorg/telegram/ui/Cells/ProfileSearchCell;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawAlpha:F

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGlobalSearch(I)Z
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 200
    .local v1, "localCount":I
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 201
    .local v0, "globalCount":I
    if-ltz p1, :cond_1

    if-ge p1, v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v2

    .line 203
    :cond_1
    if-le p1, v1, :cond_0

    add-int v3, v0, v1

    if-gt p1, v3, :cond_0

    .line 204
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public searchDialogs(Ljava/lang/String;)V
    .locals 7
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    :goto_0
    if-nez p1, :cond_2

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 76
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowUsernameSearch:Z

    if-eqz v0, :cond_1

    .line 77
    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowChats:Z

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowBots:Z

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Adapters/SearchAdapter;->queryServerSearch(Ljava/lang/String;ZZ)V

    .line 79
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/SearchAdapter;->notifyDataSetChanged()V

    .line 95
    :goto_1
    return-void

    .line 70
    :catch_0
    move-exception v6

    .line 71
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 81
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchTimer:Ljava/util/Timer;

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/Adapters/SearchAdapter$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Adapters/SearchAdapter$1;-><init>(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_1
.end method

.method public setCheckedMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;*>;"
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->checkedMap:Ljava/util/HashMap;

    .line 59
    return-void
.end method

.method public setUseUserCell(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->useUserCell:Z

    .line 63
    return-void
.end method
