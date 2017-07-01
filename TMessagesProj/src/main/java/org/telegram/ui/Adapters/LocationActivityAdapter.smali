.class public Lorg/telegram/ui/Adapters/LocationActivityAdapter;
.super Lorg/telegram/ui/Adapters/BaseLocationAdapter;
.source "LocationActivityAdapter.java"


# instance fields
.field private customLocation:Landroid/location/Location;

.field private gpsLocation:Landroid/location/Location;

.field private mContext:Landroid/content/Context;

.field private overScrollHeight:I

.field private sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private updateCell()V
    .locals 10

    .prologue
    const v2, 0x7f07044f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

    const-string/jumbo v1, "SendSelectedLocation"

    const v2, 0x7f070453

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "(%f,%f)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/SendLocationCell;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

    const-string/jumbo v1, "SendLocation"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AccurateTo"

    const v3, 0x7f070042

    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "Meters"

    iget-object v6, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/SendLocationCell;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

    const-string/jumbo v1, "SendLocation"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Loading"

    const v3, 0x7f0702d1

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/SendLocationCell;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->searching:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->searching:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    const/4 v0, 0x4

    .line 74
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x3

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 121
    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    if-ge p1, v0, :cond_0

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->places:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    .line 124
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 129
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 134
    if-nez p1, :cond_1

    .line 135
    const/4 v0, 0x0

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    if-eq p1, v0, :cond_0

    .line 138
    if-ne p1, v1, :cond_2

    move v0, v1

    .line 139
    goto :goto_0

    .line 140
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->searching:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->searching:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    .line 142
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    if-ne p1, v0, :cond_5

    .line 143
    const/4 v0, 0x5

    goto :goto_0

    .line 145
    :cond_5
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x1

    .line 84
    if-nez p1, :cond_2

    .line 85
    if-nez p2, :cond_0

    .line 86
    new-instance p2, Lorg/telegram/ui/Cells/EmptyCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_0
    move-object v1, p2

    .line 88
    check-cast v1, Lorg/telegram/ui/Cells/EmptyCell;

    iget v2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->overScrollHeight:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    :cond_1
    :goto_0
    move-object v0, p2

    .line 116
    .end local p2    # "view":Landroid/view/View;
    .local v0, "view":Landroid/view/View;
    :goto_1
    return-object v0

    .line 89
    .end local v0    # "view":Landroid/view/View;
    .restart local p2    # "view":Landroid/view/View;
    :cond_2
    if-ne p1, v5, :cond_4

    .line 90
    if-nez p2, :cond_3

    .line 91
    new-instance p2, Lorg/telegram/ui/Cells/SendLocationCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Lorg/telegram/ui/Cells/SendLocationCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_3
    move-object v1, p2

    .line 93
    check-cast v1, Lorg/telegram/ui/Cells/SendLocationCell;

    iput-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->sendLocationCell:Lorg/telegram/ui/Cells/SendLocationCell;

    .line 94
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateCell()V

    move-object v0, p2

    .line 95
    .end local p2    # "view":Landroid/view/View;
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_1

    .line 96
    .end local v0    # "view":Landroid/view/View;
    .restart local p2    # "view":Landroid/view/View;
    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    .line 97
    if-nez p2, :cond_5

    .line 98
    new-instance p2, Lorg/telegram/ui/Cells/GreySectionCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Lorg/telegram/ui/Cells/GreySectionCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_5
    move-object v1, p2

    .line 100
    check-cast v1, Lorg/telegram/ui/Cells/GreySectionCell;

    const-string/jumbo v2, "NearbyPlaces"

    const v3, 0x7f07031d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/GreySectionCell;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_6
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->searching:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->searching:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 102
    :cond_7
    if-nez p2, :cond_8

    .line 103
    new-instance p2, Lorg/telegram/ui/Cells/LocationLoadingCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Lorg/telegram/ui/Cells/LocationLoadingCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_8
    move-object v1, p2

    .line 105
    check-cast v1, Lorg/telegram/ui/Cells/LocationLoadingCell;

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->searching:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/LocationLoadingCell;->setLoading(Z)V

    goto :goto_0

    .line 106
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    if-ne p1, v1, :cond_a

    .line 107
    if-nez p2, :cond_1

    .line 108
    new-instance p2, Lorg/telegram/ui/Cells/LocationPoweredCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Lorg/telegram/ui/Cells/LocationPoweredCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    goto :goto_0

    .line 111
    :cond_a
    if-nez p2, :cond_b

    .line 112
    new-instance p2, Lorg/telegram/ui/Cells/LocationCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Lorg/telegram/ui/Cells/LocationCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_b
    move-object v1, p2

    .line 114
    check-cast v1, Lorg/telegram/ui/Cells/LocationCell;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->places:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->iconUrls:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Cells/LocationCell;->setLocation(Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x6

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 160
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->searching:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->searching:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCustomLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 51
    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->customLocation:Landroid/location/Location;

    .line 52
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateCell()V

    .line 53
    return-void
.end method

.method public setGpsLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 46
    iput-object p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->gpsLocation:Landroid/location/Location;

    .line 47
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->updateCell()V

    .line 48
    return-void
.end method

.method public setOverScrollHeight(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 42
    iput p1, p0, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->overScrollHeight:I

    .line 43
    return-void
.end method
