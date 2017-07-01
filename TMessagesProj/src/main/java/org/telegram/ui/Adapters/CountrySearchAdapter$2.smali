.class Lorg/telegram/ui/Adapters/CountrySearchAdapter$2;
.super Ljava/lang/Object;
.source "CountrySearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/CountrySearchAdapter;->processSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/CountrySearchAdapter;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/CountrySearchAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/CountrySearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter$2;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 70
    iget-object v6, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter$2;->val$query:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "q":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 72
    iget-object v6, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/CountrySearchAdapter;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    # invokes: Lorg/telegram/ui/Adapters/CountrySearchAdapter;->updateSearchResults(Ljava/util/ArrayList;)V
    invoke-static {v6, v7}, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->access$200(Lorg/telegram/ui/Adapters/CountrySearchAdapter;Ljava/util/ArrayList;)V

    .line 88
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v5, "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/CountryAdapter$Country;>;"
    iget-object v6, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter$2;->val$query:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "n":Ljava/lang/String;
    iget-object v6, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/CountrySearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/CountrySearchAdapter;->countries:Ljava/util/HashMap;
    invoke-static {v6}, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->access$300(Lorg/telegram/ui/Adapters/CountrySearchAdapter;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 79
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/CountryAdapter$Country;>;"
    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/CountryAdapter$Country;

    .line 81
    .local v1, "c":Lorg/telegram/ui/Adapters/CountryAdapter$Country;
    iget-object v6, v1, Lorg/telegram/ui/Adapters/CountryAdapter$Country;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter$2;->val$query:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 82
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 87
    .end local v1    # "c":Lorg/telegram/ui/Adapters/CountryAdapter$Country;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/CountrySearchAdapter;

    # invokes: Lorg/telegram/ui/Adapters/CountrySearchAdapter;->updateSearchResults(Ljava/util/ArrayList;)V
    invoke-static {v6, v5}, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->access$200(Lorg/telegram/ui/Adapters/CountrySearchAdapter;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
