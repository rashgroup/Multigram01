.class Lorg/telegram/ui/AudioSelectActivity$4;
.super Ljava/lang/Object;
.source "AudioSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 137
    iput-object p1, p0, Lorg/telegram/ui/AudioSelectActivity$4;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v3, p0, Lorg/telegram/ui/AudioSelectActivity$4;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->delegate:Lorg/telegram/ui/AudioSelectActivity$AudioSelectActivityDelegate;
    invoke-static {v3}, Lorg/telegram/ui/AudioSelectActivity;->access$200(Lorg/telegram/ui/AudioSelectActivity;)Lorg/telegram/ui/AudioSelectActivity$AudioSelectActivityDelegate;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v3, p0, Lorg/telegram/ui/AudioSelectActivity$4;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->selectedAudios:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/ui/AudioSelectActivity;->access$000(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 143
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/messenger/MediaController$AudioEntry;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MediaController$AudioEntry;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/messenger/MediaController$AudioEntry;>;"
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/AudioSelectActivity$4;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->delegate:Lorg/telegram/ui/AudioSelectActivity$AudioSelectActivityDelegate;
    invoke-static {v3}, Lorg/telegram/ui/AudioSelectActivity;->access$200(Lorg/telegram/ui/AudioSelectActivity;)Lorg/telegram/ui/AudioSelectActivity$AudioSelectActivityDelegate;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/telegram/ui/AudioSelectActivity$AudioSelectActivityDelegate;->didSelectAudio(Ljava/util/ArrayList;)V

    .line 147
    .end local v0    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/AudioSelectActivity$4;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/AudioSelectActivity;->finishFragment()V

    .line 148
    return-void
.end method
