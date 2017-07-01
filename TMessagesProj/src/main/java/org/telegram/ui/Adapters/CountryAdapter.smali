.class public Lorg/telegram/ui/Adapters/CountryAdapter;
.super Lorg/telegram/ui/Adapters/BaseSectionsAdapter;
.source "CountryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/CountryAdapter$Country;
    }
.end annotation


# instance fields
.field private countries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/CountryAdapter$Country;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private sortedCountries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;-><init>()V

    .line 40
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/ui/Adapters/CountryAdapter;->countries:Ljava/util/HashMap;

    .line 41
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/ui/Adapters/CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    .line 44
    iput-object p1, p0, Lorg/telegram/ui/Adapters/CountryAdapter;->mContext:Landroid/content/Context;

    .line 47
    :try_start_0
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string/jumbo v10, "countries.txt"

    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 48
    .local v8, "stream":Ljava/io/InputStream;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 50
    .local v7, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 51
    const-string/jumbo v9, ";"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "args":[Ljava/lang/String;
    new-instance v2, Lorg/telegram/ui/Adapters/CountryAdapter$Country;

    invoke-direct {v2}, Lorg/telegram/ui/Adapters/CountryAdapter$Country;-><init>()V

    .line 53
    .local v2, "c":Lorg/telegram/ui/Adapters/CountryAdapter$Country;
    const/4 v9, 0x2

    aget-object v9, v0, v9

    iput-object v9, v2, Lorg/telegram/ui/Adapters/CountryAdapter$Country;->name:Ljava/lang/String;

    .line 54
    const/4 v9, 0x0

    aget-object v9, v0, v9

    iput-object v9, v2, Lorg/telegram/ui/Adapters/CountryAdapter$Country;->code:Ljava/lang/String;

    .line 55
    const/4 v9, 0x1

    aget-object v9, v0, v9

    iput-object v9, v2, Lorg/telegram/ui/Adapters/CountryAdapter$Country;->shortname:Ljava/lang/String;

    .line 56
    iget-object v9, v2, Lorg/telegram/ui/Adapters/CountryAdapter$Country;->name:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, "n":Ljava/lang/String;
    iget-object v9, p0, Lorg/telegram/ui/Adapters/CountryAdapter;->countries:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 58
    .local v1, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/CountryAdapter$Country;>;"
    if-nez v1, :cond_0

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/CountryAdapter$Country;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .restart local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/CountryAdapter$Country;>;"
    iget-object v9, p0, Lorg/telegram/ui/Adapters/CountryAdapter;->countries:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v9, p0, Lorg/telegram/ui/Adapters/CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/CountryAdapter$Country;>;"
    .end local v2    # "c":Lorg/telegram/ui/Adapters/CountryAdapter$Country;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "n":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 68
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v9, p0, Lorg/telegram/ui/Adapters/CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    new-instance v10, Lorg/telegram/ui/Adapters/CountryAdapter$1;

    invoke-direct {v10, p0}, Lorg/telegram/ui/Adapters/CountryAdapter$1;-><init>(Lorg/telegram/ui/Adapters/CountryAdapter;)V

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 78
    iget-object v9, p0, Lorg/telegram/ui/Adapters/CountryAdapter;->countries:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 79
    .restart local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/CountryAdapter$Country;>;"
    new-instance v9, Lorg/telegram/ui/Adapters/CountryAdapter$2;

    invoke-direct {v9, p0}, Lorg/telegram/ui/Adapters/CountryAdapter$2;-><init>(Lorg/telegram/ui/Adapters/CountryAdapter;)V

    invoke-static {v1, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 65
    .end local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/CountryAdapter$Country;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "stream":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 66
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 86
    .end local v5    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "stream":Ljava/io/InputStream;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 3
    .param p1, "section"    # I

    .prologue
    .line 117
    iget-object v1, p0, Lorg/telegram/ui/Adapters/CountryAdapter;->countries:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 118
    .local v0, "count":I
    iget-object v1, p0, Lorg/telegram/ui/Adapters/CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_0

    .line 119
    add-int/lit8 v0, v0, 0x1

    .line 121
    :cond_0
    return v0
.end method

.method public getCountries()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/CountryAdapter$Country;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Adapters/CountryAdapter;->countries:Ljava/util/HashMap;

    return-object v0
.end method

.method public bridge synthetic getItem(II)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/CountryAdapter;->getItem(II)Lorg/telegram/ui/Adapters/CountryAdapter$Country;

    move-result-object v0

    return-object v0
.end method

.method public getItem(II)Lorg/telegram/ui/Adapters/CountryAdapter$Country;
    .locals 4
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 94
    if-ltz p1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Adapters/CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-object v1

    .line 97
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Adapters/CountryAdapter;->countries:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 98
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/CountryAdapter$Country;>;"
    if-ltz p2, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 101
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/CountryAdapter$Country;

    goto :goto_0
.end method

.method public getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "section"    # I
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v5, 0x42900000    # 72.0f

    const/high16 v7, 0x42580000    # 54.0f

    const/high16 v4, 0x41c00000    # 24.0f

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v8, 0x0

    .line 136
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/CountryAdapter;->getItemViewType(II)I

    move-result v2

    .line 137
    .local v2, "type":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 138
    if-nez p3, :cond_0

    .line 139
    new-instance p3, Lorg/telegram/ui/Cells/DividerCell;

    .end local p3    # "convertView":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Adapters/CountryAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p3, v3}, Lorg/telegram/ui/Cells/DividerCell;-><init>(Landroid/content/Context;)V

    .line 140
    .restart local p3    # "convertView":Landroid/view/View;
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_2

    :goto_1
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {p3, v3, v8, v4, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 152
    :cond_0
    :goto_2
    return-object p3

    :cond_1
    move v3, v5

    .line 140
    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_1

    .line 142
    :cond_3
    if-nez v2, :cond_0

    .line 143
    if-nez p3, :cond_4

    .line 144
    new-instance p3, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local p3    # "convertView":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Adapters/CountryAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p3, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 145
    .restart local p3    # "convertView":Landroid/view/View;
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_5

    move v3, v6

    :goto_3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_6

    :goto_4
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {p3, v3, v8, v4, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 148
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Adapters/CountryAdapter;->countries:Ljava/util/HashMap;

    iget-object v4, p0, Lorg/telegram/ui/Adapters/CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 149
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/CountryAdapter$Country;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/CountryAdapter$Country;

    .local v1, "c":Lorg/telegram/ui/Adapters/CountryAdapter$Country;
    move-object v3, p3

    .line 150
    check-cast v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v4, v1, Lorg/telegram/ui/Adapters/CountryAdapter$Country;->name:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/ui/Adapters/CountryAdapter$Country;->code:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/CountryAdapter$Country;>;"
    .end local v1    # "c":Lorg/telegram/ui/Adapters/CountryAdapter$Country;
    :cond_5
    move v3, v7

    .line 145
    goto :goto_3

    :cond_6
    move v7, v6

    goto :goto_4
.end method

.method public getItemViewType(II)I
    .locals 3
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    .line 157
    iget-object v1, p0, Lorg/telegram/ui/Adapters/CountryAdapter;->countries:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 158
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/CountryAdapter$Country;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Adapters/CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "section"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 126
    if-nez p2, :cond_0

    .line 127
    new-instance p2, Lorg/telegram/ui/Cells/LetterSectionCell;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v0, p0, Lorg/telegram/ui/Adapters/CountryAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/LetterSectionCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "convertView":Landroid/view/View;
    move-object v0, p2

    .line 128
    check-cast v0, Lorg/telegram/ui/Cells/LetterSectionCell;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/LetterSectionCell;->setCellHeight(I)V

    :cond_0
    move-object v0, p2

    .line 130
    check-cast v0, Lorg/telegram/ui/Cells/LetterSectionCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    .line 131
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x2

    return v0
.end method

.method public isRowEnabled(II)Z
    .locals 3
    .param p1, "section"    # I
    .param p2, "row"    # I

    .prologue
    .line 106
    iget-object v1, p0, Lorg/telegram/ui/Adapters/CountryAdapter;->countries:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/CountryAdapter;->sortedCountries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 107
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/CountryAdapter$Country;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
