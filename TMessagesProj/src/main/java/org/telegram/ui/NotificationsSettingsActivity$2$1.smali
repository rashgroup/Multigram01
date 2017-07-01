.class Lorg/telegram/ui/NotificationsSettingsActivity$2$1;
.super Ljava/lang/Object;
.source "NotificationsSettingsActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/NotificationsSettingsActivity$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/NotificationsSettingsActivity$2;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$1;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 266
    new-instance v0, Lorg/telegram/ui/NotificationsSettingsActivity$2$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/NotificationsSettingsActivity$2$1$1;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity$2$1;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 284
    return-void
.end method
