.class Lorg/telegram/ui/ProfileNotificationsActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ProfileNotificationsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileNotificationsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileNotificationsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileNotificationsActivity;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 107
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->finishFragment()V

    .line 110
    :cond_0
    return-void
.end method
