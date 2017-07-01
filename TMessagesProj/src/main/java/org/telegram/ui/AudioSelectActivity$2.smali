.class Lorg/telegram/ui/AudioSelectActivity$2;
.super Ljava/lang/Object;
.source "AudioSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/AudioSelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/AudioSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/AudioSelectActivity;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lorg/telegram/ui/AudioSelectActivity$2;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Cells/AudioCell;

    .line 117
    .local v0, "audioCell":Lorg/telegram/ui/Cells/AudioCell;
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/AudioCell;->getAudioEntry()Lorg/telegram/messenger/MediaController$AudioEntry;

    move-result-object v1

    .line 118
    .local v1, "audioEntry":Lorg/telegram/messenger/MediaController$AudioEntry;
    iget-object v2, p0, Lorg/telegram/ui/AudioSelectActivity$2;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->selectedAudios:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/AudioSelectActivity;->access$000(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget-wide v4, v1, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lorg/telegram/ui/AudioSelectActivity$2;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->selectedAudios:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/AudioSelectActivity;->access$000(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget-wide v4, v1, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/AudioCell;->setChecked(Z)V

    .line 125
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/AudioSelectActivity$2;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # invokes: Lorg/telegram/ui/AudioSelectActivity;->updateBottomLayoutCount()V
    invoke-static {v2}, Lorg/telegram/ui/AudioSelectActivity;->access$100(Lorg/telegram/ui/AudioSelectActivity;)V

    .line 126
    return-void

    .line 122
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/AudioSelectActivity$2;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->selectedAudios:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/AudioSelectActivity;->access$000(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget-wide v4, v1, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/AudioCell;->setChecked(Z)V

    goto :goto_0
.end method
