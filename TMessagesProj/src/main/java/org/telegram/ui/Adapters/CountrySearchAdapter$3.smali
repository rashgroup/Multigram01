.class Lorg/telegram/ui/Adapters/CountrySearchAdapter$3;
.super Ljava/lang/Object;
.source "CountrySearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/CountrySearchAdapter;->updateSearchResults(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/CountrySearchAdapter;

.field final synthetic val$arrCounties:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/CountrySearchAdapter;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter$3;->this$0:Lorg/telegram/ui/Adapters/CountrySearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter$3;->val$arrCounties:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter$3;->this$0:Lorg/telegram/ui/Adapters/CountrySearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter$3;->val$arrCounties:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/ui/Adapters/CountrySearchAdapter;->searchResult:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->access$402(Lorg/telegram/ui/Adapters/CountrySearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter$3;->this$0:Lorg/telegram/ui/Adapters/CountrySearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->notifyDataSetChanged()V

    .line 98
    return-void
.end method
