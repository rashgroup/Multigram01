.class Lorg/telegram/ui/MediaActivity$9;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MediaActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity;)V
    .locals 0

    .prologue
    .line 910
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$9;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$9;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/SectionsListView;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$900(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/Components/SectionsListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SectionsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 914
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$9;->this$0:Lorg/telegram/ui/MediaActivity;

    # invokes: Lorg/telegram/ui/MediaActivity;->fixLayoutInternal()V
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$3300(Lorg/telegram/ui/MediaActivity;)V

    .line 915
    const/4 v0, 0x1

    return v0
.end method
