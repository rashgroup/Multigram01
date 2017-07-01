.class public Lorg/telegram/ui/Adapters/BaseLocationAdapter;
.super Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
.source "BaseLocationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

.field protected iconUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastSearchLocation:Landroid/location/Location;

.field protected places:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;",
            ">;"
        }
    .end annotation
.end field

.field private requestQueue:Lorg/telegram/messenger/volley/RequestQueue;

.field private searchTimer:Ljava/util/Timer;

.field protected searching:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->iconUrls:Ljava/util/ArrayList;

    .line 48
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/telegram/messenger/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lorg/telegram/messenger/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->requestQueue:Lorg/telegram/messenger/volley/RequestQueue;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Adapters/BaseLocationAdapter;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/BaseLocationAdapter;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 33
    iput-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/BaseLocationAdapter;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 33
    iput-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Adapters/BaseLocationAdapter;)Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->requestQueue:Lorg/telegram/messenger/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->requestQueue:Lorg/telegram/messenger/volley/RequestQueue;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->requestQueue:Lorg/telegram/messenger/volley/RequestQueue;

    invoke-virtual {v0}, Lorg/telegram/messenger/volley/RequestQueue;->stop()V

    .line 56
    :cond_0
    return-void
.end method

.method public searchDelayed(Ljava/lang/String;Landroid/location/Location;)V
    .locals 7
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "coordinate"    # Landroid/location/Location;

    .prologue
    .line 63
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 65
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->notifyDataSetChanged()V

    .line 94
    :goto_0
    return-void

    .line 68
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_2
    :goto_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchTimer:Ljava/util/Timer;

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/Adapters/BaseLocationAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$1;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/lang/String;Landroid/location/Location;)V

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 71
    :catch_0
    move-exception v6

    .line 72
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public searchGooglePlacesWithQuery(Ljava/lang/String;Landroid/location/Location;)V
    .locals 16
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "coordinate"    # Landroid/location/Location;

    .prologue
    .line 97
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchLocation:Landroid/location/Location;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchLocation:Landroid/location/Location;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v3

    const/high16 v5, 0x43480000    # 200.0f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    .line 222
    :goto_0
    return-void

    .line 100
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchLocation:Landroid/location/Location;

    .line 101
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    if-eqz v3, :cond_1

    .line 102
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    .line 103
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->requestQueue:Lorg/telegram/messenger/volley/RequestQueue;

    const-string/jumbo v5, "search"

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 106
    :cond_1
    const/4 v3, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    .line 107
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "https://api.foursquare.com/v2/venues/search/?v=%s&locale=en&limit=25&client_id=%s&client_secret=%s&ll=%s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v9, Lorg/telegram/messenger/BuildVars;->FOURSQUARE_API_VERSION:Ljava/lang/String;

    aput-object v9, v6, v7

    const/4 v7, 0x1

    sget-object v9, Lorg/telegram/messenger/BuildVars;->FOURSQUARE_API_ID:Ljava/lang/String;

    aput-object v9, v6, v7

    const/4 v7, 0x2

    sget-object v9, Lorg/telegram/messenger/BuildVars;->FOURSQUARE_API_KEY:Ljava/lang/String;

    aput-object v9, v6, v7

    const/4 v7, 0x3

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v10, "%f,%f"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "url":Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "&query="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "UTF-8"

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 111
    :cond_2
    new-instance v2, Lorg/telegram/messenger/volley/toolbox/JsonObjectRequest;

    const/4 v3, 0x0

    const/4 v5, 0x0

    new-instance v6, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;)V

    new-instance v7, Lorg/telegram/ui/Adapters/BaseLocationAdapter$3;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$3;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;)V

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lorg/telegram/messenger/volley/Response$Listener;Lorg/telegram/messenger/volley/Response$ErrorListener;)V

    .line 211
    .local v2, "jsonObjReq":Lorg/telegram/messenger/volley/toolbox/JsonObjectRequest;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/volley/toolbox/JsonObjectRequest;->setShouldCache(Z)Lorg/telegram/messenger/volley/Request;

    .line 212
    const-string/jumbo v3, "search"

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/volley/toolbox/JsonObjectRequest;->setTag(Ljava/lang/Object;)Lorg/telegram/messenger/volley/Request;

    .line 213
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->requestQueue:Lorg/telegram/messenger/volley/RequestQueue;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/volley/RequestQueue;->add(Lorg/telegram/messenger/volley/Request;)Lorg/telegram/messenger/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v2    # "jsonObjReq":Lorg/telegram/messenger/volley/toolbox/JsonObjectRequest;
    .end local v4    # "url":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 214
    :catch_0
    move-exception v8

    .line 215
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    if-eqz v3, :cond_3

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-interface {v3, v5}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;->didLoadedSearchResult(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public setDelegate(Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    .line 60
    return-void
.end method
