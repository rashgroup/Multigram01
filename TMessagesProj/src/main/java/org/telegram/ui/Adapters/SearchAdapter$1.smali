.class Lorg/telegram/ui/Adapters/SearchAdapter$1;
.super Ljava/util/TimerTask;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/SearchAdapter;->searchDialogs(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/SearchAdapter;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapter$1;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/SearchAdapter;->searchTimer:Ljava/util/Timer;
    invoke-static {v1}, Lorg/telegram/ui/Adapters/SearchAdapter;->access$000(Lorg/telegram/ui/Adapters/SearchAdapter;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 87
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/Adapters/SearchAdapter;->searchTimer:Ljava/util/Timer;
    invoke-static {v1, v2}, Lorg/telegram/ui/Adapters/SearchAdapter;->access$002(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapter$1;->val$query:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/Adapters/SearchAdapter;->processSearch(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/Adapters/SearchAdapter;->access$100(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/lang/String;)V

    .line 92
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
