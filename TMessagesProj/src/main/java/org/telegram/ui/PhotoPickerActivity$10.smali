.class Lorg/telegram/ui/PhotoPickerActivity$10;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Lorg/telegram/messenger/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerActivity;->searchBingImages(Ljava/lang/String;II)V
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
.field final synthetic this$0:Lorg/telegram/ui/PhotoPickerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoPickerActivity;)V
    .locals 0

    .prologue
    .line 887
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 887
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity$10;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    const/4 v9, 0x0

    .line 890
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # setter for: Lorg/telegram/ui/PhotoPickerActivity;->nextSearchBingString:Ljava/lang/String;
    invoke-static {v8, v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$302(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 892
    :try_start_0
    const-string/jumbo v8, "d"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 893
    .local v2, "d":Lorg/json/JSONObject;
    const-string/jumbo v8, "results"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 895
    .local v6, "result":Lorg/json/JSONArray;
    :try_start_1
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    const-string/jumbo v9, "__next"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    # setter for: Lorg/telegram/ui/PhotoPickerActivity;->nextSearchBingString:Ljava/lang/String;
    invoke-static {v8, v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$302(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 900
    :goto_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v8

    if-ge v0, v8, :cond_0

    .line 902
    :try_start_3
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 903
    .local v5, "object":Lorg/json/JSONObject;
    const-string/jumbo v8, "MediaUrl"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 904
    .local v4, "id":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResultKeys:Ljava/util/HashMap;
    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$100(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v8

    if-eqz v8, :cond_2

    .line 900
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "object":Lorg/json/JSONObject;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 896
    .end local v0    # "a":I
    :catch_0
    move-exception v3

    .line 897
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    const/4 v9, 0x0

    # setter for: Lorg/telegram/ui/PhotoPickerActivity;->nextSearchBingString:Ljava/lang/String;
    invoke-static {v8, v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$302(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 898
    const-string/jumbo v8, "tmessages"

    invoke-static {v8, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 921
    .end local v2    # "d":Lorg/json/JSONObject;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "result":Lorg/json/JSONArray;
    :catch_1
    move-exception v3

    .line 922
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "tmessages"

    invoke-static {v8, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 924
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    const/4 v9, 0x0

    # setter for: Lorg/telegram/ui/PhotoPickerActivity;->searching:Z
    invoke-static {v8, v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$502(Lorg/telegram/ui/PhotoPickerActivity;Z)Z

    .line 925
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->nextSearchBingString:Ljava/lang/String;
    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$300(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->nextSearchBingString:Ljava/lang/String;
    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$300(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "json"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 926
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    const-string/jumbo v9, "&$format=json"

    invoke-static {v8, v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$384(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/Object;)Ljava/lang/String;

    .line 928
    :cond_1
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # invokes: Lorg/telegram/ui/PhotoPickerActivity;->updateSearchInterface()V
    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$900(Lorg/telegram/ui/PhotoPickerActivity;)V

    .line 929
    return-void

    .line 907
    .restart local v0    # "a":I
    .restart local v2    # "d":Lorg/json/JSONObject;
    .restart local v4    # "id":Ljava/lang/String;
    .restart local v5    # "object":Lorg/json/JSONObject;
    .restart local v6    # "result":Lorg/json/JSONArray;
    :cond_2
    :try_start_5
    new-instance v1, Lorg/telegram/messenger/MediaController$SearchImage;

    invoke-direct {v1}, Lorg/telegram/messenger/MediaController$SearchImage;-><init>()V

    .line 908
    .local v1, "bingImage":Lorg/telegram/messenger/MediaController$SearchImage;
    iput-object v4, v1, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    .line 909
    const-string/jumbo v8, "Width"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v1, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    .line 910
    const-string/jumbo v8, "Height"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v1, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    .line 911
    const-string/jumbo v8, "FileSize"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v1, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    .line 912
    const-string/jumbo v8, "MediaUrl"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    .line 913
    const-string/jumbo v8, "Thumbnail"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 914
    .local v7, "thumbnail":Lorg/json/JSONObject;
    const-string/jumbo v8, "MediaUrl"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    .line 915
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$10;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResultKeys:Ljava/util/HashMap;
    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$100(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 917
    .end local v1    # "bingImage":Lorg/telegram/messenger/MediaController$SearchImage;
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "object":Lorg/json/JSONObject;
    .end local v7    # "thumbnail":Lorg/json/JSONObject;
    :catch_2
    move-exception v3

    .line 918
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v8, "tmessages"

    invoke-static {v8, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2
.end method
