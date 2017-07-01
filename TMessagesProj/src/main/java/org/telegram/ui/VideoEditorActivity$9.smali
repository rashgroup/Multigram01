.class Lorg/telegram/ui/VideoEditorActivity$9;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VideoEditorActivity;->fixLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VideoEditorActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VideoEditorActivity;)V
    .locals 0

    .prologue
    .line 695
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$9;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$9;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # invokes: Lorg/telegram/ui/VideoEditorActivity;->fixLayoutInternal()V
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$2900(Lorg/telegram/ui/VideoEditorActivity;)V

    .line 699
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$9;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$3000(Lorg/telegram/ui/VideoEditorActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 700
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 701
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$9;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$3100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$9;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$3200(Lorg/telegram/ui/VideoEditorActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
