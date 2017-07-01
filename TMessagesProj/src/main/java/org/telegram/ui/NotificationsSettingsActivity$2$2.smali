.class Lorg/telegram/ui/NotificationsSettingsActivity$2$2;
.super Ljava/lang/Object;
.source "NotificationsSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$colorPickerView:Lorg/telegram/ui/Components/ColorPickerView;

.field final synthetic val$i:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/NotificationsSettingsActivity$2;Landroid/view/View;ILorg/telegram/ui/Components/ColorPickerView;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$2;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;

    iput-object p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$2;->val$view:Landroid/view/View;

    iput p3, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$2;->val$i:I

    iput-object p4, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$2;->val$colorPickerView:Lorg/telegram/ui/Components/ColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const v7, 0x7f0702c2

    const/4 v6, 0x1

    .line 415
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "Notifications"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 416
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 417
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$2;->val$view:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/TextColorCell;

    .line 418
    .local v2, "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    iget v3, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$2;->val$i:I

    iget-object v4, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$2;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;

    iget-object v4, v4, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageLedRow:I
    invoke-static {v4}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 419
    const-string/jumbo v3, "MessagesLed"

    iget-object v4, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$2;->val$colorPickerView:Lorg/telegram/ui/Components/ColorPickerView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ColorPickerView;->getColor()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 420
    const-string/jumbo v3, "LedColor"

    invoke-static {v3, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$2;->val$colorPickerView:Lorg/telegram/ui/Components/ColorPickerView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ColorPickerView;->getColor()I

    move-result v4

    invoke-virtual {v2, v3, v4, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    .line 425
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 426
    return-void

    .line 421
    :cond_1
    iget v3, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$2;->val$i:I

    iget-object v4, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$2;->this$1:Lorg/telegram/ui/NotificationsSettingsActivity$2;

    iget-object v4, v4, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupLedRow:I
    invoke-static {v4}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 422
    const-string/jumbo v3, "GroupLed"

    iget-object v4, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$2;->val$colorPickerView:Lorg/telegram/ui/Components/ColorPickerView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ColorPickerView;->getColor()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 423
    const-string/jumbo v3, "LedColor"

    invoke-static {v3, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2$2;->val$colorPickerView:Lorg/telegram/ui/Components/ColorPickerView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ColorPickerView;->getColor()I

    move-result v4

    invoke-virtual {v2, v3, v4, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto :goto_0
.end method
