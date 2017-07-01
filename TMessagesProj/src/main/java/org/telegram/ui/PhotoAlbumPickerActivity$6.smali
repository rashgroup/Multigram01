.class Lorg/telegram/ui/PhotoAlbumPickerActivity$6;
.super Ljava/lang/Object;
.source "PhotoAlbumPickerActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoAlbumPickerActivity;->fixLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$6;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$6;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # invokes: Lorg/telegram/ui/PhotoAlbumPickerActivity;->fixLayoutInternal()V
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$700(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    .line 422
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$6;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$800(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$6;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$800(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 425
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
