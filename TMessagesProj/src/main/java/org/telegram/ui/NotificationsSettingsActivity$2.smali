.class Lorg/telegram/ui/NotificationsSettingsActivity$2;
.super Ljava/lang/Object;
.source "NotificationsSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/NotificationsSettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/NotificationsSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/NotificationsSettingsActivity;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 21
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
    .line 193
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v11, 0x0

    .line 194
    .local v11, "enabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageAlertRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupAlertRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 195
    :cond_0
    sget-object v17, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v18, "Notifications"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 196
    .local v14, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 197
    .local v10, "editor":Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageAlertRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 198
    const-string/jumbo v17, "EnableAll"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 199
    const-string/jumbo v18, "EnableAll"

    if-nez v11, :cond_4

    const/16 v17, 0x1

    :goto_0
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 204
    :cond_1
    :goto_1
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupAlertRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->updateServerNotificationsSettings(Z)V

    .line 570
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "preferences":Landroid/content/SharedPreferences;
    :cond_2
    :goto_3
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 571
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v11, :cond_3d

    const/16 v17, 0x1

    :goto_4
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 573
    :cond_3
    return-void

    .line 199
    .restart local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v14    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_4
    const/16 v17, 0x0

    goto :goto_0

    .line 200
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupAlertRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 201
    const-string/jumbo v17, "EnableGroup"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 202
    const-string/jumbo v18, "EnableGroup"

    if-nez v11, :cond_6

    const/16 v17, 0x1

    :goto_5
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_6
    const/16 v17, 0x0

    goto :goto_5

    .line 205
    :cond_7
    const/16 v17, 0x0

    goto :goto_2

    .line 206
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "preferences":Landroid/content/SharedPreferences;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messagePreviewRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupPreviewRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    .line 207
    :cond_9
    sget-object v17, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v18, "Notifications"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 208
    .restart local v14    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 209
    .restart local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messagePreviewRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 210
    const-string/jumbo v17, "EnablePreviewAll"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 211
    const-string/jumbo v18, "EnablePreviewAll"

    if-nez v11, :cond_b

    const/16 v17, 0x1

    :goto_6
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 216
    :cond_a
    :goto_7
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupPreviewRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    const/16 v17, 0x1

    :goto_8
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->updateServerNotificationsSettings(Z)V

    goto/16 :goto_3

    .line 211
    :cond_b
    const/16 v17, 0x0

    goto :goto_6

    .line 212
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupPreviewRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 213
    const-string/jumbo v17, "EnablePreviewGroup"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 214
    const-string/jumbo v18, "EnablePreviewGroup"

    if-nez v11, :cond_d

    const/16 v17, 0x1

    :goto_9
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_7

    :cond_d
    const/16 v17, 0x0

    goto :goto_9

    .line 217
    :cond_e
    const/16 v17, 0x0

    goto :goto_8

    .line 218
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "preferences":Landroid/content/SharedPreferences;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageSoundRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupSoundRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_16

    .line 220
    :cond_10
    :try_start_0
    sget-object v17, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v18, "Notifications"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 221
    .restart local v14    # "preferences":Landroid/content/SharedPreferences;
    new-instance v16, Landroid/content/Intent;

    const-string/jumbo v17, "android.intent.action.RINGTONE_PICKER"

    invoke-direct/range {v16 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v16, "tmpIntent":Landroid/content/Intent;
    const-string/jumbo v17, "android.intent.extra.ringtone.TYPE"

    const/16 v18, 0x2

    invoke-virtual/range {v16 .. v18}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    const-string/jumbo v17, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    const-string/jumbo v17, "android.intent.extra.ringtone.DEFAULT_URI"

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 225
    const/4 v6, 0x0

    .line 227
    .local v6, "currentSound":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 228
    .local v7, "defaultPath":Ljava/lang/String;
    sget-object v8, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 229
    .local v8, "defaultUri":Landroid/net/Uri;
    if-eqz v8, :cond_11

    .line 230
    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 233
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageSoundRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_14

    .line 234
    const-string/jumbo v17, "GlobalSoundPath"

    move-object/from16 v0, v17

    invoke-interface {v14, v0, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 235
    .local v13, "path":Ljava/lang/String;
    if-eqz v13, :cond_12

    const-string/jumbo v17, "NoSound"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_12

    .line 236
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 237
    move-object v6, v8

    .line 252
    .end local v13    # "path":Ljava/lang/String;
    :cond_12
    :goto_a
    const-string/jumbo v17, "android.intent.extra.ringtone.EXISTING_URI"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 254
    .end local v6    # "currentSound":Landroid/net/Uri;
    .end local v7    # "defaultPath":Ljava/lang/String;
    .end local v8    # "defaultUri":Landroid/net/Uri;
    .end local v14    # "preferences":Landroid/content/SharedPreferences;
    .end local v16    # "tmpIntent":Landroid/content/Intent;
    :catch_0
    move-exception v9

    .line 255
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v17, "tmessages"

    move-object/from16 v0, v17

    invoke-static {v0, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 239
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "currentSound":Landroid/net/Uri;
    .restart local v7    # "defaultPath":Ljava/lang/String;
    .restart local v8    # "defaultUri":Landroid/net/Uri;
    .restart local v13    # "path":Ljava/lang/String;
    .restart local v14    # "preferences":Landroid/content/SharedPreferences;
    .restart local v16    # "tmpIntent":Landroid/content/Intent;
    :cond_13
    :try_start_1
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_a

    .line 242
    .end local v13    # "path":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupSoundRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_12

    .line 243
    const-string/jumbo v17, "GroupSoundPath"

    move-object/from16 v0, v17

    invoke-interface {v14, v0, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 244
    .restart local v13    # "path":Ljava/lang/String;
    if-eqz v13, :cond_12

    const-string/jumbo v17, "NoSound"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_12

    .line 245
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 246
    move-object v6, v8

    goto :goto_a

    .line 248
    :cond_15
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_a

    .line 257
    .end local v6    # "currentSound":Landroid/net/Uri;
    .end local v7    # "defaultPath":Ljava/lang/String;
    .end local v8    # "defaultUri":Landroid/net/Uri;
    .end local v13    # "path":Ljava/lang/String;
    .end local v14    # "preferences":Landroid/content/SharedPreferences;
    .end local v16    # "tmpIntent":Landroid/content/Intent;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->resetNotificationsRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_17

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->reseting:Z
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$700(Lorg/telegram/ui/NotificationsSettingsActivity;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lorg/telegram/ui/NotificationsSettingsActivity;->reseting:Z
    invoke-static/range {v17 .. v18}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$702(Lorg/telegram/ui/NotificationsSettingsActivity;Z)Z

    .line 262
    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_account_resetNotifySettings;

    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_account_resetNotifySettings;-><init>()V

    .line 263
    .local v15, "req":Lorg/telegram/tgnet/TLRPC$TL_account_resetNotifySettings;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v17

    new-instance v18, Lorg/telegram/ui/NotificationsSettingsActivity$2$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/NotificationsSettingsActivity$2$1;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity$2;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_3

    .line 286
    .end local v15    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_resetNotifySettings;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->inappSoundRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$900(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_19

    .line 287
    sget-object v17, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v18, "Notifications"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 288
    .restart local v14    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 289
    .restart local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v17, "EnableInAppSounds"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 290
    const-string/jumbo v18, "EnableInAppSounds"

    if-nez v11, :cond_18

    const/16 v17, 0x1

    :goto_b
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 291
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 290
    :cond_18
    const/16 v17, 0x0

    goto :goto_b

    .line 292
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "preferences":Landroid/content/SharedPreferences;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->inappVibrateRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_1b

    .line 293
    sget-object v17, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v18, "Notifications"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 294
    .restart local v14    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 295
    .restart local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v17, "EnableInAppVibrate"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 296
    const-string/jumbo v18, "EnableInAppVibrate"

    if-nez v11, :cond_1a

    const/16 v17, 0x1

    :goto_c
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 297
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 296
    :cond_1a
    const/16 v17, 0x0

    goto :goto_c

    .line 298
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "preferences":Landroid/content/SharedPreferences;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->inappPreviewRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_1d

    .line 299
    sget-object v17, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v18, "Notifications"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 300
    .restart local v14    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 301
    .restart local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v17, "EnableInAppPreview"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 302
    const-string/jumbo v18, "EnableInAppPreview"

    if-nez v11, :cond_1c

    const/16 v17, 0x1

    :goto_d
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 303
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 302
    :cond_1c
    const/16 v17, 0x0

    goto :goto_d

    .line 304
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "preferences":Landroid/content/SharedPreferences;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->inchatSoundRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    .line 305
    sget-object v17, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v18, "Notifications"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 306
    .restart local v14    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 307
    .restart local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v17, "EnableInChatSound"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 308
    const-string/jumbo v18, "EnableInChatSound"

    if-nez v11, :cond_1e

    const/16 v17, 0x1

    :goto_e
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 309
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 310
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v18

    if-nez v11, :cond_1f

    const/16 v17, 0x1

    :goto_f
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationsController;->setInChatSoundEnabled(Z)V

    goto/16 :goto_3

    .line 308
    :cond_1e
    const/16 v17, 0x0

    goto :goto_e

    .line 310
    :cond_1f
    const/16 v17, 0x0

    goto :goto_f

    .line 311
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "preferences":Landroid/content/SharedPreferences;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->inappPriorityRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_22

    .line 312
    sget-object v17, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v18, "Notifications"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 313
    .restart local v14    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 314
    .restart local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v17, "EnableInAppPriority"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 315
    const-string/jumbo v18, "EnableInAppPriority"

    if-nez v11, :cond_21

    const/16 v17, 0x1

    :goto_10
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 316
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 315
    :cond_21
    const/16 v17, 0x0

    goto :goto_10

    .line 317
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "preferences":Landroid/content/SharedPreferences;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->contactJoinedRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_25

    .line 318
    sget-object v17, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v18, "Notifications"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 319
    .restart local v14    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 320
    .restart local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v17, "EnableContactJoined"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 321
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v18

    if-nez v11, :cond_23

    const/16 v17, 0x1

    :goto_11
    move/from16 v0, v17

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lorg/telegram/messenger/MessagesController;->enableJoined:Z

    .line 322
    const-string/jumbo v18, "EnableContactJoined"

    if-nez v11, :cond_24

    const/16 v17, 0x1

    :goto_12
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 323
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 321
    :cond_23
    const/16 v17, 0x0

    goto :goto_11

    .line 322
    :cond_24
    const/16 v17, 0x0

    goto :goto_12

    .line 324
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "preferences":Landroid/content/SharedPreferences;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->pinnedMessageRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_27

    .line 325
    sget-object v17, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v18, "Notifications"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 326
    .restart local v14    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 327
    .restart local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v17, "PinnedMessages"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 328
    const-string/jumbo v18, "PinnedMessages"

    if-nez v11, :cond_26

    const/16 v17, 0x1

    :goto_13
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 329
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 328
    :cond_26
    const/16 v17, 0x0

    goto :goto_13

    .line 330
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "preferences":Landroid/content/SharedPreferences;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->androidAutoAlertRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_29

    .line 331
    sget-object v17, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v18, "Notifications"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 332
    .restart local v14    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 333
    .restart local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v17, "EnableAutoNotifications"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 334
    const-string/jumbo v18, "EnableAutoNotifications"

    if-nez v11, :cond_28

    const/16 v17, 0x1

    :goto_14
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 335
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 334
    :cond_28
    const/16 v17, 0x0

    goto :goto_14

    .line 336
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "preferences":Landroid/content/SharedPreferences;
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->badgeNumberRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_2c

    .line 337
    sget-object v17, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v18, "Notifications"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 338
    .restart local v14    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 339
    .restart local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v17, "badgeNumber"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 340
    const-string/jumbo v18, "badgeNumber"

    if-nez v11, :cond_2a

    const/16 v17, 0x1

    :goto_15
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 341
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 342
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v18

    if-nez v11, :cond_2b

    const/16 v17, 0x1

    :goto_16
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationsController;->setBadgeEnabled(Z)V

    goto/16 :goto_3

    .line 340
    :cond_2a
    const/16 v17, 0x0

    goto :goto_15

    .line 342
    :cond_2b
    const/16 v17, 0x0

    goto :goto_16

    .line 343
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "preferences":Landroid/content/SharedPreferences;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->notificationsServiceConnectionRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_2f

    .line 344
    sget-object v17, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v18, "Notifications"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 345
    .restart local v14    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v17, "pushConnection"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 346
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 347
    .restart local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v18, "pushConnection"

    if-nez v11, :cond_2d

    const/16 v17, 0x1

    :goto_17
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 348
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 349
    if-nez v11, :cond_2e

    .line 350
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/tgnet/ConnectionsManager;->setPushConnectionEnabled(Z)V

    goto/16 :goto_3

    .line 347
    :cond_2d
    const/16 v17, 0x0

    goto :goto_17

    .line 352
    :cond_2e
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/tgnet/ConnectionsManager;->setPushConnectionEnabled(Z)V

    goto/16 :goto_3

    .line 354
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "preferences":Landroid/content/SharedPreferences;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->notificationsServiceRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1900(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_32

    .line 355
    sget-object v17, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v18, "Notifications"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 356
    .restart local v14    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v17, "pushService"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 357
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 358
    .restart local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v18, "pushService"

    if-nez v11, :cond_30

    const/16 v17, 0x1

    :goto_18
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 359
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 360
    if-nez v11, :cond_31

    .line 361
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->startPushService()V

    goto/16 :goto_3

    .line 358
    :cond_30
    const/16 v17, 0x0

    goto :goto_18

    .line 363
    :cond_31
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->stopPushService()V

    goto/16 :goto_3

    .line 392
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "preferences":Landroid/content/SharedPreferences;
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageLedRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-eq v0, v1, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupLedRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_36

    .line 393
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 397
    new-instance v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 398
    .local v12, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 399
    new-instance v5, Lorg/telegram/ui/Components/ColorPickerView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/ColorPickerView;-><init>(Landroid/content/Context;)V

    .line 400
    .local v5, "colorPickerView":Lorg/telegram/ui/Components/ColorPickerView;
    const/16 v17, -0x2

    const/16 v18, -0x2

    const/16 v19, 0x11

    invoke-static/range {v17 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    sget-object v17, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v18, "Notifications"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 403
    .restart local v14    # "preferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageLedRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_35

    .line 404
    const-string/jumbo v17, "MessagesLed"

    const v18, -0xff0100

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/ColorPickerView;->setOldCenterColor(I)V

    .line 409
    :cond_34
    :goto_19
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 410
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v17, "LedColor"

    const v18, 0x7f0702c2

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 411
    invoke-virtual {v4, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 412
    const-string/jumbo v17, "Set"

    const v18, 0x7f070461

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Lorg/telegram/ui/NotificationsSettingsActivity$2$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/telegram/ui/NotificationsSettingsActivity$2$2;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity$2;Landroid/view/View;ILorg/telegram/ui/Components/ColorPickerView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 428
    const-string/jumbo v17, "LedDisabled"

    const v18, 0x7f0702c3

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Lorg/telegram/ui/NotificationsSettingsActivity$2$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/NotificationsSettingsActivity$2$3;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity$2;Landroid/view/View;I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/ui/NotificationsSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    .line 405
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupLedRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_34

    .line 406
    const-string/jumbo v17, "GroupLed"

    const v18, -0xff0100

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/ColorPickerView;->setOldCenterColor(I)V

    goto/16 :goto_19

    .line 446
    .end local v5    # "colorPickerView":Lorg/telegram/ui/Components/ColorPickerView;
    .end local v12    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v14    # "preferences":Landroid/content/SharedPreferences;
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messagePopupNotificationRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-eq v0, v1, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupPopupNotificationRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_38

    .line 447
    :cond_37
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 448
    .restart local v4    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v17, "PopupNotification"

    const v18, 0x7f0703f2

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 449
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string/jumbo v19, "NoPopup"

    const v20, 0x7f070340

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-string/jumbo v19, "OnlyWhenScreenOn"

    const v20, 0x7f0703ab

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-string/jumbo v19, "OnlyWhenScreenOff"

    const v20, 0x7f0703aa

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    const-string/jumbo v19, "AlwaysShowPopup"

    const v20, 0x7f07008d

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    new-instance v18, Lorg/telegram/ui/NotificationsSettingsActivity$2$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/NotificationsSettingsActivity$2$4;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity$2;I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 470
    const-string/jumbo v17, "Cancel"

    const v18, 0x7f0700f2

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/ui/NotificationsSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    .line 472
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageVibrateRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-eq v0, v1, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupVibrateRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_3a

    .line 473
    :cond_39
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 474
    .restart local v4    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v17, "Vibrate"

    const v18, 0x7f0704f7

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 475
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string/jumbo v19, "VibrationDisabled"

    const v20, 0x7f0704f9

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-string/jumbo v19, "VibrationDefault"

    const v20, 0x7f0704f8

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-string/jumbo v19, "Short"

    const v20, 0x7f070480

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    const-string/jumbo v19, "Long"

    const v20, 0x7f0702de

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x4

    const-string/jumbo v19, "OnlyIfSilent"

    const v20, 0x7f0703a9

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    new-instance v18, Lorg/telegram/ui/NotificationsSettingsActivity$2$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/NotificationsSettingsActivity$2$5;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity$2;I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 507
    const-string/jumbo v17, "Cancel"

    const v18, 0x7f0700f2

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/ui/NotificationsSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    .line 509
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messagePriorityRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-eq v0, v1, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupPriorityRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_3c

    .line 510
    :cond_3b
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 511
    .restart local v4    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v17, "NotificationsPriority"

    const v18, 0x7f070395

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 512
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string/jumbo v19, "NotificationsPriorityDefault"

    const v20, 0x7f070396

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-string/jumbo v19, "NotificationsPriorityHigh"

    const v20, 0x7f070397

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-string/jumbo v19, "NotificationsPriorityMax"

    const v20, 0x7f070399

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    new-instance v18, Lorg/telegram/ui/NotificationsSettingsActivity$2$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/NotificationsSettingsActivity$2$6;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity$2;I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 530
    const-string/jumbo v17, "Cancel"

    const v18, 0x7f0700f2

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/ui/NotificationsSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    .line 532
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->repeatRow:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 533
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 534
    .restart local v4    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v17, "RepeatNotifications"

    const v18, 0x7f070404

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 535
    const/16 v17, 0x7

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string/jumbo v19, "RepeatDisabled"

    const v20, 0x7f070403

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-string/jumbo v19, "Minutes"

    const/16 v20, 0x5

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-string/jumbo v19, "Minutes"

    const/16 v20, 0xa

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    const-string/jumbo v19, "Minutes"

    const/16 v20, 0x1e

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x4

    const-string/jumbo v19, "Hours"

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x5

    const-string/jumbo v19, "Hours"

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x6

    const-string/jumbo v19, "Hours"

    const/16 v20, 0x4

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    new-instance v18, Lorg/telegram/ui/NotificationsSettingsActivity$2$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/NotificationsSettingsActivity$2$7;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity$2;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 567
    const-string/jumbo v17, "Cancel"

    const v18, 0x7f0700f2

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSettingsActivity$2;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v17, v0

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/ui/NotificationsSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    .line 571
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    .end local p2    # "view":Landroid/view/View;
    :cond_3d
    const/16 v17, 0x0

    goto/16 :goto_4
.end method
