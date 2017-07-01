.class Lorg/telegram/ui/Adapters/CountrySearchAdapter$1;
.super Ljava/util/TimerTask;
.source "CountrySearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/CountrySearchAdapter;->search(Ljava/lang/String;)V
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
    .line 50
    iput-object p1, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/CountrySearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter$1;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 54
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/CountrySearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/CountrySearchAdapter;->searchTimer:Ljava/util/Timer;
    invoke-static {v1}, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->access$000(Lorg/telegram/ui/Adapters/CountrySearchAdapter;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 55
    iget-object v1, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/CountrySearchAdapter;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/Adapters/CountrySearchAdapter;->searchTimer:Ljava/util/Timer;
    invoke-static {v1, v2}, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->access$002(Lorg/telegram/ui/Adapters/CountrySearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/CountrySearchAdapter;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/CountrySearchAdapter$1;->val$query:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/Adapters/CountrySearchAdapter;->processSearch(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->access$100(Lorg/telegram/ui/Adapters/CountrySearchAdapter;Ljava/lang/String;)V

    .line 60
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
