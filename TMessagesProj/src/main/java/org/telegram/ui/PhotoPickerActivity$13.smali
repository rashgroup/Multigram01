.class Lorg/telegram/ui/PhotoPickerActivity$13;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerActivity;->fixLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoPickerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoPickerActivity;)V
    .locals 0

    .prologue
    .line 976
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$13;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$13;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # invokes: Lorg/telegram/ui/PhotoPickerActivity;->fixLayoutInternal()V
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$2300(Lorg/telegram/ui/PhotoPickerActivity;)V

    .line 980
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$13;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$2400(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/widget/GridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$13;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->listView:Landroid/widget/GridView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$2400(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 983
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
