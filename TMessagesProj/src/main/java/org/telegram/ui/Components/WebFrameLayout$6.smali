.class Lorg/telegram/ui/Components/WebFrameLayout$6;
.super Ljava/lang/Object;
.source "WebFrameLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/WebFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/WebFrameLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/WebFrameLayout;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lorg/telegram/ui/Components/WebFrameLayout$6;->this$0:Lorg/telegram/ui/Components/WebFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 315
    const/4 v0, 0x1

    return v0
.end method
