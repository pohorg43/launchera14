.class public final Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isSplitScreenAvailable(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "SplitScreenShortcutPolity"

    const-string v0, "QuickStep"

    const-string v1, "activity"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "taskKey"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->displayId:I

    const/16 v2, 0x3e9

    :try_start_12
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v3

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3, p2}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getSplitScreenState(Landroid/content/Intent;)I

    move-result p2
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_1c} :catch_1d

    goto :goto_33

    :catch_1d
    move-exception p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSplitScreenState(), e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p0, p2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move p2, v2

    :goto_33
    const/4 v3, 0x0

    :try_start_34
    invoke-static {p1}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizeRestrictionManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getSplitScreenDisable(Landroid/content/ComponentName;)Z

    move-result v4
    :try_end_3d
    .catch Ljava/lang/NoSuchMethodError; {:try_start_34 .. :try_end_3d} :catch_3e

    goto :goto_54

    :catch_3e
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSplitScreenDisable(), e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, p0, v4}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    :goto_54
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->isTopWindowZoom()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result v6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v7

    if-eqz v7, :cond_92

    const-string v7, "isAvailable: , isMultiWindowMode = "

    invoke-static {v7}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const-string v9, ", displayId = "

    const-string v10, ", splitScreenState = "

    invoke-static {v7, v8, v9, v1, v10}, Lcom/android/launcher/l0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ILjava/lang/String;)V

    const-string v8, ", isSplitScreenDisable = "

    const-string v9, ", isTopWindowZoom = "

    invoke-static {v7, p2, v8, v4, v9}, Lcom/android/launcher/k0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", isInSplitScreenMode= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, p0, v7}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_92
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez p0, :cond_ac

    const/4 p0, -0x1

    if-eq v1, p0, :cond_9f

    if-nez v1, :cond_ac

    :cond_9f
    if-ne v2, p2, :cond_ac

    if-nez v4, :cond_ac

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_ac

    if-nez v6, :cond_ac

    const/4 v3, 0x1

    :cond_ac
    return v3
.end method
