.class Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;
.super Ljava/lang/Object;
.source "BaseLocationAdapter.java"

# interfaces
.implements Lorg/telegram/messenger/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchGooglePlacesWithQuery(Ljava/lang/String;Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/volley/Response$Listener",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 112
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 18
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 116
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    iget-object v12, v12, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 117
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    iget-object v12, v12, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->iconUrls:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 146
    const-string/jumbo v12, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string/jumbo v13, "venues"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 148
    .local v10, "result":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    if-ge v2, v12, :cond_3

    .line 150
    :try_start_1
    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 151
    .local v9, "object":Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 152
    .local v7, "iconUrl":Ljava/lang/String;
    const-string/jumbo v12, "categories"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 153
    const-string/jumbo v12, "categories"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 154
    .local v3, "categories":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 155
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 156
    .local v4, "category":Lorg/json/JSONObject;
    const-string/jumbo v12, "icon"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 157
    const-string/jumbo v12, "icon"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 158
    .local v6, "icon":Lorg/json/JSONObject;
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v13, "%s64%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "prefix"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "suffix"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 162
    .end local v3    # "categories":Lorg/json/JSONArray;
    .end local v4    # "category":Lorg/json/JSONObject;
    .end local v6    # "icon":Lorg/json/JSONObject;
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    iget-object v12, v12, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->iconUrls:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    const-string/jumbo v12, "location"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 165
    .local v8, "location":Lorg/json/JSONObject;
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    .line 166
    .local v11, "venue":Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 167
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    const-string/jumbo v13, "lat"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    iput-wide v14, v12, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 168
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    const-string/jumbo v13, "lng"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    iput-wide v14, v12, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 169
    const-string/jumbo v12, "address"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 170
    const-string/jumbo v12, "address"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->address:Ljava/lang/String;

    .line 180
    :goto_1
    const-string/jumbo v12, "name"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 181
    const-string/jumbo v12, "name"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->title:Ljava/lang/String;

    .line 183
    :cond_1
    const-string/jumbo v12, "id"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->venue_id:Ljava/lang/String;

    .line 184
    const-string/jumbo v12, "foursquare"

    iput-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->provider:Ljava/lang/String;

    .line 185
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    iget-object v12, v12, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v7    # "iconUrl":Ljava/lang/String;
    .end local v8    # "location":Lorg/json/JSONObject;
    .end local v9    # "object":Lorg/json/JSONObject;
    .end local v11    # "venue":Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 171
    .restart local v7    # "iconUrl":Ljava/lang/String;
    .restart local v8    # "location":Lorg/json/JSONObject;
    .restart local v9    # "object":Lorg/json/JSONObject;
    .restart local v11    # "venue":Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    :cond_2
    const-string/jumbo v12, "city"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 172
    const-string/jumbo v12, "city"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->address:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 186
    .end local v7    # "iconUrl":Ljava/lang/String;
    .end local v8    # "location":Lorg/json/JSONObject;
    .end local v9    # "object":Lorg/json/JSONObject;
    .end local v11    # "venue":Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    :catch_0
    move-exception v5

    .line 187
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v12, "tmessages"

    invoke-static {v12, v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 190
    .end local v2    # "a":I
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v10    # "result":Lorg/json/JSONArray;
    :catch_1
    move-exception v5

    .line 191
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string/jumbo v12, "tmessages"

    invoke-static {v12, v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    .line 194
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    invoke-virtual {v12}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->notifyDataSetChanged()V

    .line 195
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    # getter for: Lorg/telegram/ui/Adapters/BaseLocationAdapter;->delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;
    invoke-static {v12}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->access$200(Lorg/telegram/ui/Adapters/BaseLocationAdapter;)Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 196
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    # getter for: Lorg/telegram/ui/Adapters/BaseLocationAdapter;->delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;
    invoke-static {v12}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->access$200(Lorg/telegram/ui/Adapters/BaseLocationAdapter;)Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    iget-object v13, v13, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-interface {v12, v13}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;->didLoadedSearchResult(Ljava/util/ArrayList;)V

    .line 198
    :cond_4
    return-void

    .line 173
    .restart local v2    # "a":I
    .restart local v7    # "iconUrl":Ljava/lang/String;
    .restart local v8    # "location":Lorg/json/JSONObject;
    .restart local v9    # "object":Lorg/json/JSONObject;
    .restart local v10    # "result":Lorg/json/JSONArray;
    .restart local v11    # "venue":Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    :cond_5
    :try_start_3
    const-string/jumbo v12, "state"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 174
    const-string/jumbo v12, "state"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->address:Ljava/lang/String;

    goto/16 :goto_1

    .line 175
    :cond_6
    const-string/jumbo v12, "country"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 176
    const-string/jumbo v12, "country"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->address:Ljava/lang/String;

    goto/16 :goto_1

    .line 178
    :cond_7
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v13, "%f,%f"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->address:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1
.end method
