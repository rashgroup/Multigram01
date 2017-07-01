.class Lorg/telegram/ui/Adapters/BaseLocationAdapter$3;
.super Ljava/lang/Object;
.source "BaseLocationAdapter.java"

# interfaces
.implements Lorg/telegram/messenger/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchGooglePlacesWithQuery(Ljava/lang/String;Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$3;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lorg/telegram/messenger/volley/VolleyError;)V
    .locals 3
    .param p1, "error"    # Lorg/telegram/messenger/volley/VolleyError;

    .prologue
    .line 203
    const-string/jumbo v0, "tmessages"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/messenger/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$3;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$3;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->notifyDataSetChanged()V

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$3;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    # getter for: Lorg/telegram/ui/Adapters/BaseLocationAdapter;->delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->access$200(Lorg/telegram/ui/Adapters/BaseLocationAdapter;)Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$3;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    # getter for: Lorg/telegram/ui/Adapters/BaseLocationAdapter;->delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->access$200(Lorg/telegram/ui/Adapters/BaseLocationAdapter;)Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$3;->this$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;->didLoadedSearchResult(Ljava/util/ArrayList;)V

    .line 209
    :cond_0
    return-void
.end method
