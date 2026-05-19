.class public final Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper$mNotificationActionReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "notification action:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    if-eqz p2, :cond_18

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_18
    move-object v1, v0

    :goto_19
    const-string v2, "BranchSearchNotificationHelper"

    invoke-static {p0, v1, v2}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_24

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :cond_24
    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_6c

    goto :goto_6b

    :sswitch_2e
    const-string p0, "START_DRAWER_SETTINGS_ACTION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    goto :goto_6b

    :cond_37
    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->access$startDrawerModeSettings(Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;Landroid/content/Context;)V

    goto :goto_6b

    :sswitch_3d
    const-string p0, "START_ALL_APPS_ACTION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_46

    goto :goto_6b

    :cond_46
    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->access$startLauncherAllAppsMode(Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;)V

    goto :goto_6b

    :sswitch_4c
    const-string p0, "CLEAR_NOTIFICATION_ACTION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_55

    goto :goto_6b

    :cond_55
    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->cancelSearchNotification(Landroid/content/Context;Z)V

    goto :goto_6b

    :sswitch_5c
    const-string p0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_65

    goto :goto_6b

    :cond_65
    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->cancelSearchNotification(Landroid/content/Context;Z)V

    :cond_6b
    :goto_6b
    return-void

    :sswitch_data_6c
    .sparse-switch
        -0x122164c -> :sswitch_5c
        0x649a2f8 -> :sswitch_4c
        0x3788e8e8 -> :sswitch_3d
        0x7c490f21 -> :sswitch_2e
    .end sparse-switch
.end method
