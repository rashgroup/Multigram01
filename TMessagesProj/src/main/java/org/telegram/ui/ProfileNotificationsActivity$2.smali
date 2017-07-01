.class Lorg/telegram/ui/ProfileNotificationsActivity$2;
.super Ljava/lang/Object;
.source "ProfileNotificationsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 127
    iput-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 25
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
    .line 130
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->settingsVibrateRow:I
    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$000(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v21

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 131
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 132
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v21, "Vibrate"

    const v22, 0x7f0704f7

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 133
    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "VibrationDisabled"

    const v24, 0x7f0704f9

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string/jumbo v23, "SettingsDefault"

    const v24, 0x7f07046e

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string/jumbo v23, "SystemDefault"

    const v24, 0x7f0704ad

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x3

    const-string/jumbo v23, "Short"

    const v24, 0x7f070480

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x4

    const-string/jumbo v23, "Long"

    const v24, 0x7f0702de

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    new-instance v22, Lorg/telegram/ui/ProfileNotificationsActivity$2$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ProfileNotificationsActivity$2$1;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity$2;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 161
    const-string/jumbo v21, "Cancel"

    const v22, 0x7f0700f2

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/ui/ProfileNotificationsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 424
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->settingsNotificationsRow:I
    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$300(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v21

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 167
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 168
    .restart local v4    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v21, "AppName"

    const v22, 0x7f07009a

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 169
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "Default"

    const v24, 0x7f07019d

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string/jumbo v23, "Enabled"

    const v24, 0x7f0701d0

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string/jumbo v23, "NotificationsDisabled"

    const v24, 0x7f070393

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    new-instance v22, Lorg/telegram/ui/ProfileNotificationsActivity$2$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ProfileNotificationsActivity$2$2;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity$2;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 197
    const-string/jumbo v21, "Cancel"

    const v22, 0x7f0700f2

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/ui/ProfileNotificationsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 199
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->settingsSoundRow:I
    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$400(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v21

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 201
    :try_start_0
    new-instance v20, Landroid/content/Intent;

    const-string/jumbo v21, "android.intent.action.RINGTONE_PICKER"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v20, "tmpIntent":Landroid/content/Intent;
    const-string/jumbo v21, "android.intent.extra.ringtone.TYPE"

    const/16 v22, 0x2

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    const-string/jumbo v21, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 204
    const-string/jumbo v21, "android.intent.extra.ringtone.DEFAULT_URI"

    const/16 v22, 0x2

    invoke-static/range {v22 .. v22}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 205
    sget-object v21, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v22, "Notifications"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 206
    .local v18, "preferences":Landroid/content/SharedPreferences;
    const/4 v6, 0x0

    .line 208
    .local v6, "currentSound":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 209
    .local v7, "defaultPath":Ljava/lang/String;
    sget-object v8, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 210
    .local v8, "defaultUri":Landroid/net/Uri;
    if-eqz v8, :cond_3

    .line 211
    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 214
    :cond_3
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "sound_path_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v22, v0

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static/range {v22 .. v22}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 215
    .local v17, "path":Ljava/lang/String;
    if-eqz v17, :cond_4

    const-string/jumbo v21, "NoSound"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 216
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 217
    move-object v6, v8

    .line 223
    :cond_4
    :goto_1
    const-string/jumbo v21, "android.intent.extra.ringtone.EXISTING_URI"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    const/16 v22, 0xc

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 225
    .end local v6    # "currentSound":Landroid/net/Uri;
    .end local v7    # "defaultPath":Ljava/lang/String;
    .end local v8    # "defaultUri":Landroid/net/Uri;
    .end local v17    # "path":Ljava/lang/String;
    .end local v18    # "preferences":Landroid/content/SharedPreferences;
    .end local v20    # "tmpIntent":Landroid/content/Intent;
    :catch_0
    move-exception v9

    .line 226
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v21, "tmessages"

    move-object/from16 v0, v21

    invoke-static {v0, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 219
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "currentSound":Landroid/net/Uri;
    .restart local v7    # "defaultPath":Ljava/lang/String;
    .restart local v8    # "defaultUri":Landroid/net/Uri;
    .restart local v17    # "path":Ljava/lang/String;
    .restart local v18    # "preferences":Landroid/content/SharedPreferences;
    .restart local v20    # "tmpIntent":Landroid/content/Intent;
    :cond_5
    :try_start_1
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_1

    .line 228
    .end local v6    # "currentSound":Landroid/net/Uri;
    .end local v7    # "defaultPath":Ljava/lang/String;
    .end local v8    # "defaultUri":Landroid/net/Uri;
    .end local v17    # "path":Ljava/lang/String;
    .end local v18    # "preferences":Landroid/content/SharedPreferences;
    .end local v20    # "tmpIntent":Landroid/content/Intent;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->settingsLedRow:I
    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$500(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v21

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 233
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 234
    .local v11, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 235
    new-instance v5, Lorg/telegram/ui/Components/ColorPickerView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/ColorPickerView;-><init>(Landroid/content/Context;)V

    .line 236
    .local v5, "colorPickerView":Lorg/telegram/ui/Components/ColorPickerView;
    const/16 v21, -0x2

    const/16 v22, -0x2

    const/16 v23, 0x11

    invoke-static/range {v21 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    sget-object v21, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v22, "Notifications"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 239
    .restart local v18    # "preferences":Landroid/content/SharedPreferences;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "color_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v22, v0

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static/range {v22 .. v22}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 240
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "color_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v22, v0

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static/range {v22 .. v22}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const v22, -0xff0100

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/ColorPickerView;->setOldCenterColor(I)V

    .line 249
    :goto_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 250
    .restart local v4    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v21, "LedColor"

    const v22, 0x7f0702c2

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 251
    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 252
    const-string/jumbo v21, "Set"

    const v22, 0x7f070461

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    new-instance v22, Lorg/telegram/ui/ProfileNotificationsActivity$2$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lorg/telegram/ui/ProfileNotificationsActivity$2$3;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity$2;Lorg/telegram/ui/Components/ColorPickerView;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 262
    const-string/jumbo v21, "LedDisabled"

    const v22, 0x7f0702c3

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    new-instance v22, Lorg/telegram/ui/ProfileNotificationsActivity$2$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ProfileNotificationsActivity$2$4;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity$2;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 272
    const-string/jumbo v21, "Default"

    const v22, 0x7f07019d

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    new-instance v22, Lorg/telegram/ui/ProfileNotificationsActivity$2$5;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ProfileNotificationsActivity$2$5;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity$2;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/ui/ProfileNotificationsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 242
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    if-gez v21, :cond_8

    .line 243
    const-string/jumbo v21, "GroupLed"

    const v22, -0xff0100

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/ColorPickerView;->setOldCenterColor(I)V

    goto/16 :goto_2

    .line 245
    :cond_8
    const-string/jumbo v21, "MessagesLed"

    const v22, -0xff0100

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/ColorPickerView;->setOldCenterColor(I)V

    goto/16 :goto_2

    .line 283
    .end local v5    # "colorPickerView":Lorg/telegram/ui/Components/ColorPickerView;
    .end local v11    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v18    # "preferences":Landroid/content/SharedPreferences;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->settingsPriorityRow:I
    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$600(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v21

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 284
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 285
    .restart local v4    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v21, "NotificationsPriority"

    const v22, 0x7f070395

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 286
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "SettingsDefault"

    const v24, 0x7f07046e

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string/jumbo v23, "NotificationsPriorityDefault"

    const v24, 0x7f070396

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string/jumbo v23, "NotificationsPriorityHigh"

    const v24, 0x7f070397

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x3

    const-string/jumbo v23, "NotificationsPriorityMax"

    const v24, 0x7f070399

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    new-instance v22, Lorg/telegram/ui/ProfileNotificationsActivity$2$6;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ProfileNotificationsActivity$2$6;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity$2;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 306
    const-string/jumbo v21, "Cancel"

    const v22, 0x7f0700f2

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/ui/ProfileNotificationsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 308
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->smartRow:I
    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$700(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v21

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 312
    sget-object v21, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v22, "Notifications"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 313
    .restart local v18    # "preferences":Landroid/content/SharedPreferences;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "smart_max_count_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v22, v0

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static/range {v22 .. v22}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 314
    .local v14, "notifyMaxCount":I
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "smart_delay_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v22, v0

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static/range {v22 .. v22}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0xb4

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 315
    .local v13, "notifyDelay":I
    if-nez v14, :cond_b

    .line 316
    const/4 v14, 0x2

    .line 319
    :cond_b
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 320
    .restart local v11    # "linearLayout":Landroid/widget/LinearLayout;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 322
    new-instance v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 323
    .local v12, "linearLayout2":Landroid/widget/LinearLayout;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 324
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 325
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 326
    .local v10, "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v21, -0x2

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 327
    const/16 v21, -0x2

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 328
    const/16 v21, 0x31

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 329
    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 332
    .local v19, "textView":Landroid/widget/TextView;
    const-string/jumbo v21, "SmartNotificationsSoundAtMost"

    const v22, 0x7f07048f

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    const/16 v21, 0x1

    const/high16 v22, 0x41900000    # 18.0f

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 334
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 335
    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 336
    .restart local v10    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v21, -0x2

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 337
    const/16 v21, -0x2

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 338
    const/16 v21, 0x13

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 339
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    new-instance v16, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 342
    .local v16, "numberPickerTimes":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v21, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 343
    const/16 v21, 0xa

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 344
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 345
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 346
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Components/NumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 347
    .restart local v10    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v21, 0x42480000    # 50.0f

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 348
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/NumberPicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    new-instance v19, Landroid/widget/TextView;

    .end local v19    # "textView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 351
    .restart local v19    # "textView":Landroid/widget/TextView;
    const-string/jumbo v21, "SmartNotificationsTimes"

    const v22, 0x7f070490

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    const/16 v21, 0x1

    const/high16 v22, 0x41900000    # 18.0f

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 353
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 354
    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 355
    .restart local v10    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v21, -0x2

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 356
    const/16 v21, -0x2

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 357
    const/16 v21, 0x13

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 358
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    new-instance v12, Landroid/widget/LinearLayout;

    .end local v12    # "linearLayout2":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 361
    .restart local v12    # "linearLayout2":Landroid/widget/LinearLayout;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 362
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 363
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 364
    .restart local v10    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v21, -0x2

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 365
    const/16 v21, -0x2

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 366
    const/16 v21, 0x31

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 367
    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    new-instance v19, Landroid/widget/TextView;

    .end local v19    # "textView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 370
    .restart local v19    # "textView":Landroid/widget/TextView;
    const-string/jumbo v21, "SmartNotificationsWithin"

    const v22, 0x7f070491

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    const/16 v21, 0x1

    const/high16 v22, 0x41900000    # 18.0f

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 372
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 373
    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 374
    .restart local v10    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v21, -0x2

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 375
    const/16 v21, -0x2

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 376
    const/16 v21, 0x13

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 377
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    new-instance v15, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 380
    .local v15, "numberPickerMinutes":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 381
    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 382
    div-int/lit8 v21, v13, 0x3c

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 383
    invoke-virtual {v12, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 384
    invoke-virtual {v15}, Lorg/telegram/ui/Components/NumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 385
    .restart local v10    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v21, 0x42480000    # 50.0f

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 386
    invoke-virtual {v15, v10}, Lorg/telegram/ui/Components/NumberPicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    new-instance v19, Landroid/widget/TextView;

    .end local v19    # "textView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 389
    .restart local v19    # "textView":Landroid/widget/TextView;
    const-string/jumbo v21, "SmartNotificationsMinutes"

    const v22, 0x7f07048e

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    const/16 v21, 0x1

    const/high16 v22, 0x41900000    # 18.0f

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 391
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 392
    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 393
    .restart local v10    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v21, -0x2

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 394
    const/16 v21, -0x2

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 395
    const/16 v21, 0x13

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 396
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 399
    .restart local v4    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v21, "SmartNotifications"

    const v22, 0x7f07048b

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 400
    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 401
    const-string/jumbo v21, "OK"

    const v22, 0x7f07039f

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    new-instance v22, Lorg/telegram/ui/ProfileNotificationsActivity$2$7;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v15}, Lorg/telegram/ui/ProfileNotificationsActivity$2$7;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity$2;Lorg/telegram/ui/Components/NumberPicker;Lorg/telegram/ui/Components/NumberPicker;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 412
    const-string/jumbo v21, "SmartNotificationsDisabled"

    const v22, 0x7f07048c

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    new-instance v22, Lorg/telegram/ui/ProfileNotificationsActivity$2$8;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ProfileNotificationsActivity$2$8;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity$2;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$2;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    move-object/from16 v21, v0

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lorg/telegram/ui/ProfileNotificationsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0
.end method
