.class public final Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BUNDLE_NAME:Ljava/lang/String; = "mOplusExtraBundle"

.field private static final COMPONENT_NAME:Ljava/lang/String; = "componentName"

.field public static final INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;

.field private static final KEY_SUPPORT_FREE_FORM:Ljava/lang/String; = "isSupportFreeForm"

.field private static final TAG:Ljava/lang/String; = "RapidReactionUtils"

.field private static inSingleHandMode:Z

.field private static final isSupportZoomWindowMode$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;

    invoke-direct {v0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;

    sget-object v0, Lkotlin/a;->c:Lkotlin/a;

    sget-object v1, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils$isSupportZoomWindowMode$2;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils$isSupportZoomWindowMode$2;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;->isSupportZoomWindowMode$delegate:Lh4/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$isZoomWindowSupported()Z
    .registers 1

    invoke-static {}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;->isZoomWindowSupported()Z

    move-result v0

    return v0
.end method

.method private static final getExtraBundleFiled(Landroid/app/TaskInfo;)Ljava/lang/reflect/Field;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    instance-of v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_14

    :cond_e
    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_14
    const-string v1, "mOplusExtraBundle"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    goto :goto_21

    :cond_1b
    return-object v0

    :catchall_1c
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_21
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_30

    const-string v1, "QuickStep"

    const-string v2, "RapidReactionUtils"

    const-string v3, "getExtraBundleFiled onFailure"

    invoke-static {v1, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    instance-of v1, p0, Lh4/k$a;

    if-eqz v1, :cond_35

    goto :goto_36

    :cond_35
    move-object v0, p0

    :goto_36
    check-cast v0, Ljava/lang/reflect/Field;

    return-object v0
.end method

.method private final inSplitScreenMode(Lcom/android/launcher3/BaseActivity;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    :try_start_a
    invoke-virtual {p1}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_f

    return p0

    :catchall_f
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_32

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "inSplitScreenMode failed to get dock side e = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string v0, "RapidReactionUtils"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public static final isAppSupportRapidReaction(Landroid/app/TaskInfo;Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "callPkg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_9

    return v0

    :cond_9
    invoke-static {p0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;->getExtraBundleFiled(Landroid/app/TaskInfo;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_49

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/os/Bundle;

    const/4 v3, 0x0

    if-eqz v2, :cond_1f

    check-cast v1, Landroid/os/Bundle;

    goto :goto_20

    :cond_1f
    move-object v1, v3

    :goto_20
    if-eqz v1, :cond_28

    const-string v2, "componentName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_28
    if-nez v3, :cond_42

    iget-object v1, p0, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_49

    iget-object v2, p0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v2, :cond_33

    goto :goto_49

    :cond_33
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;->isSupportedApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    goto :goto_48

    :cond_42
    const-string p0, "isSupportFreeForm"

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    :goto_48
    move v0, p0

    :cond_49
    :goto_49
    return v0
.end method

.method public static final isSupportedApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "callPkg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "RapidReactionUtils"

    const-string v2, "QuickStep"

    if-eqz p0, :cond_ae

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_15

    move v3, v4

    goto :goto_16

    :cond_15
    move v3, v0

    :goto_16
    if-nez v3, :cond_ae

    if-eqz p1, :cond_ae

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_21

    goto :goto_22

    :cond_21
    move v4, v0

    :goto_22
    if-eqz v4, :cond_26

    goto/16 :goto_ae

    :cond_26
    :try_start_26
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, p0, v4, p2, v5}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->isSupportZoomMode(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v3
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_3c

    :try_start_37
    sget-object v4, Lh4/z;->a:Lh4/z;
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_3a

    goto :goto_43

    :catchall_3a
    move-exception v4

    goto :goto_3f

    :catchall_3c
    move-exception v3

    move-object v4, v3

    move v3, v0

    :goto_3f
    invoke-static {v4}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    :goto_43
    invoke-static {v4}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_4e

    const-string v4, "isSupportedApp: method error baseComponent"

    invoke-static {v2, v1, v4}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    if-nez v3, :cond_65

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unsupport base component "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_65
    :try_start_65
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, v4, p2, v5}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->isSupportZoomMode(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    sget-object p2, Lh4/z;->a:Lh4/z;
    :try_end_78
    .catchall {:try_start_65 .. :try_end_78} :catchall_79

    goto :goto_7e

    :catchall_79
    move-exception p2

    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_7e
    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_89

    const-string p2, "isSupportedApp: method error topComponent"

    invoke-static {v2, v1, p2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_89
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSupportedApp: support="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", baseComponent="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", topComponent="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_ae
    :goto_ae
    const-string p2, "isSupportedApp(), return, base="

    const-string v3, ", top="

    invoke-static {p2, p0, v3, p1}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static final isZoomWindowSupported()Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->isSupportZoomWindowMode()Z

    move-result v0

    sget-object v1, Lh4/z;->a:Lh4/z;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    goto :goto_11

    :catchall_c
    move-exception v1

    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_11
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1e

    const-string v1, "RapidReactionUtils"

    const-string v2, "isSupportedApp: method error"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    return v0
.end method


# virtual methods
.method public final inSingleHandMode()Z
    .registers 1

    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result p0

    return p0
.end method

.method public final isRapidReactionSupported(Lcom/android/launcher3/BaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseComponent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topComponent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callPkg"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;->isSupportZoomWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {p2, p3, p4}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;->isSupportedApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2e

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;->inSplitScreenMode(Lcom/android/launcher3/BaseActivity;)Z

    move-result p1

    if-nez p1, :cond_2e

    invoke-virtual {p0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;->inSingleHandMode()Z

    move-result p0

    if-nez p0, :cond_2e

    const/4 p0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p0, 0x0

    :goto_2f
    return p0
.end method

.method public final isSupportZoomWindowMode()Z
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;->isSupportZoomWindowMode$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final updateSingleHandState(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;->inSingleHandMode:Z

    return-void
.end method
