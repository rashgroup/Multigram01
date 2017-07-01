.class Lorg/telegram/ui/Adapters/SearchAdapter$3;
.super Ljava/lang/Object;
.source "SearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/SearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/SearchAdapter;

.field final synthetic val$names:Ljava/util/ArrayList;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter$3;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapter$3;->val$users:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/Adapters/SearchAdapter$3;->val$names:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter$3;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter$3;->val$users:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapter;->access$702(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter$3;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter$3;->val$names:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/ui/Adapters/SearchAdapter;->searchResultNames:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapter;->access$802(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 173
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter$3;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapter;->notifyDataSetChanged()V

    .line 174
    return-void
.end method
