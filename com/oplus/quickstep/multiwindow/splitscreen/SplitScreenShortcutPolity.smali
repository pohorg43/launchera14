.class public final Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity;
.super Lcom/oplus/quickstep/multiwindow/AbsMultiWindowShortcutPolicy;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity$Companion;

.field private static final TAG:Ljava/lang/String; = "SplitScreenShortcutPolity"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity;->Companion:Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/multiwindow/AbsMultiWindowShortcutPolicy;-><init>()V

    return-void
.end method

.method private final isAvailable(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z
    .registers 14

    iget p0, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->displayId:I

    :try_start_2
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getSplitScreenState(Landroid/content/Intent;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_11

    goto :goto_16

    :catchall_11
    move-exception p2

    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_16
    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const-string v1, "SplitScreenShortcutPolity"

    const-string v2, "QuickStep"

    if-eqz v0, :cond_34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvailable(), getSplitScreenState e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    instance-of v0, p2, Lh4/k$a;

    const/4 v3, 0x0

    if-eqz v0, :cond_3a

    move-object p2, v3

    :cond_3a
    check-cast p2, Ljava/lang/Integer;

    const/16 v0, 0x3e9

    if-eqz p2, :cond_45

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_46

    :cond_45
    move p2, v0

    :goto_46
    :try_start_46
    invoke-static {p1}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizeRestrictionManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getSplitScreenDisable(Landroid/content/ComponentName;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_53

    goto :goto_58

    :catchall_53
    move-exception v4

    invoke-static {v4}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    :goto_58
    invoke-static {v4}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_72

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAvailable(), getSplitScreenDisable e: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v1, v5}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    instance-of v5, v4, Lh4/k$a;

    if-eqz v5, :cond_77

    goto :goto_78

    :cond_77
    move-object v3, v4

    :goto_78
    check-cast v3, Ljava/lang/Boolean;

    const/4 v4, 0x0

    if-eqz v3, :cond_82

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_83

    :cond_82
    move v3, v4

    :goto_83
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v5

    if-eqz v5, :cond_8c

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_94

    :cond_8c
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->isTopWindowZoom()Ljava/lang/Boolean;

    move-result-object v5

    :goto_94
    invoke-static {}, Lcom/oplus/quickstep/multiwindow/MultiWindowManager;->isInSplitScreenMode()Z

    move-result v6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v7

    if-eqz v7, :cond_ca

    const-string v7, "isAvailable(), , isMultiWindowMode="

    invoke-static {v7}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const-string v9, ", displayId="

    const-string v10, ", splitScreenState="

    invoke-static {v7, v8, v9, p0, v10}, Lcom/android/launcher/l0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ILjava/lang/String;)V

    const-string v8, ", isSplitScreenDisable="

    const-string v9, ", isTopWindowZoom="

    invoke-static {v7, p2, v8, v3, v9}, Lcom/android/launcher/k0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", isInSplitScreenMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v1, v7}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_ca
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez p1, :cond_e4

    const/4 p1, -0x1

    if-eq p0, p1, :cond_d7

    if-nez p0, :cond_e4

    :cond_d7
    if-ne v0, p2, :cond_e4

    if-nez v3, :cond_e4

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_e4

    if-nez v6, :cond_e4

    const/4 v4, 0x1

    :cond_e4
    return v4
.end method

.method public static final isSplitScreenAvailable(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity;->Companion:Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity$Companion;->isSplitScreenAvailable(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public get(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/BaseDraggingActivity;",
            "Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;",
            ")",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "Lcom/android/launcher3/BaseDraggingActivity;",
            ">;"
        }
    .end annotation

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "taskContainer"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    return-object p0
.end method

.method public isSupport(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Z
    .registers 7

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    :cond_12
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    instance-of v2, v2, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-nez v2, :cond_58

    iget-boolean v2, v0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    if-nez v2, :cond_1f

    goto :goto_58

    :cond_1f
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    invoke-virtual {v3}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getMiniWindowName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    return v1

    :cond_38
    sget-object v2, Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity;->Companion:Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity$Companion;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const-string v3, "task.key"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v0}, Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity$Companion;->isSplitScreenAvailable(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v0

    if-nez v0, :cond_48

    return v1

    :cond_48
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const-string v0, "taskContainer.task.key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity;->isAvailable(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result p0

    return p0

    :cond_58
    :goto_58
    return v1
.end method
