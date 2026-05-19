.class public final Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CLASS_REMOTE_ANIMATION_TARGET_EXT:Ljava/lang/String; = "android.view.RemoteAnimationTargetExtImpl"

.field private static final CLASS_WCT_EXTEND_INFO:Ljava/lang/String; = "android.window.OplusWCTExtendInfo"

.field private static final CLASS_WINDOW_CONTAINER_TRANSACTION_EXT:Ljava/lang/String; = "android.view.WindowContainerTransactionExtImpl"

.field private static final GET_EXTENDED_INFO:Ljava/lang/String; = "getExtendedInfo"

.field private static final GET_IS_TASK_NOT_IN_RECENTS:Ljava/lang/String; = "getIsTaskNotInRecents"

.field private static final GET_OPLUS_LAUNCH_VIEW_INFO:Ljava/lang/String; = "getOplusLaunchViewInfo"

.field private static final GET_RECENTS_CONTROLLER:Ljava/lang/String; = "getRecentsController"

.field private static final GET_TASK_LEASH:Ljava/lang/String; = "getTaskLeash"

.field private static final GET_WCT_EXTEND_INFO:Ljava/lang/String; = "getWCTExtendInfo"

.field public static final INSTANCE:Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;

.field private static final METHOD_SET_REMOTE_INTERRUPT:Ljava/lang/String; = "setRemoteInterrupt"

.field private static final REMOTE_ANIMATION_TARGET_EXT:Ljava/lang/String; = "mExt"

.field private static final SET_WCT_EXTEND_INFO:Ljava/lang/String; = "setWCTExtendInfo"

.field private static final TAG:Ljava/lang/String; = "RemoteAnimationUtil"

.field private static final TRANSITION_INFO_EXT:Ljava/lang/String; = "mExt"

.field private static final VIEW_LAUNCH_PKG:Ljava/lang/String; = "mLaunchPackage"

.field private static final VIEW_LOCATION:Ljava/lang/String; = "mViewLocation"

.field private static final VIEW_SURFACE:Ljava/lang/String; = "mViewSurface"

.field private static final WINDOW_CONTAINER_TRANSACTION_EXT:Ljava/lang/String; = "mExt"

.field private static extField:Ljava/lang/reflect/Field;

.field private static extFieldWCT:Ljava/lang/reflect/Field;

.field private static getTaskLeashMethod:Ljava/lang/reflect/Method;

.field private static getWCTExtendInfoMethod:Ljava/lang/reflect/Method;

.field private static infoMethod:Ljava/lang/reflect/Method;

.field private static volatile isFirstCheck:Z

.field private static volatile isNextCardLauncherViewInfo:Z

.field private static volatile isSupportBackToAssistant:Z

.field private static volatile launchViewInfo:Lcom/oplus/animation/LaunchViewInfo;

.field private static locationField:Ljava/lang/reflect/Field;

.field private static pkgField:Ljava/lang/reflect/Field;

.field private static setRemoteInterruptMethod:Ljava/lang/reflect/Method;

.field private static setWCTExtendInfoMethod:Ljava/lang/reflect/Method;

.field private static surfaceField:Ljava/lang/reflect/Field;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;

    invoke-direct {v0}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;-><init>()V

    sput-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->INSTANCE:Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isFirstCheck:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final clearLaunchViewInfo()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->launchViewInfo:Lcom/oplus/animation/LaunchViewInfo;

    if-eqz v0, :cond_31

    const-string v0, "clear Launcher view info, pkg = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->launchViewInfo:Lcom/oplus/animation/LaunchViewInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    iget-object v1, v1, Lcom/oplus/animation/LaunchViewInfo;->mLaunchPackage:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object v1, v2

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->launchViewInfo:Lcom/oplus/animation/LaunchViewInfo;

    if-eqz v1, :cond_22

    iget-object v1, v1, Lcom/oplus/animation/LaunchViewInfo;->mViewLocation:Landroid/graphics/Point;

    goto :goto_23

    :cond_22
    move-object v1, v2

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteAnimationUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v2, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->launchViewInfo:Lcom/oplus/animation/LaunchViewInfo;

    :cond_31
    return-void
.end method

.method private static final getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_e

    :catchall_9
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_e
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_15

    goto :goto_21

    :cond_15
    const-string p0, "getField exception: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "RemoteAnimationUtil"

    invoke-static {p1, p0, v0}, Li2/a;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_21
    check-cast p0, Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public static final getIconLeash([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/SurfaceControl;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "targets"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    aget-object v2, p0, v1

    iget-boolean v3, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startFromAssistScreen:Z

    if-eqz v3, :cond_12

    iget-object p0, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->viewLeash:Landroid/view/SurfaceControl;

    return-object p0

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getLaunchViewInfo()Lcom/oplus/animation/LaunchViewInfo;
    .registers 1

    sget-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->launchViewInfo:Lcom/oplus/animation/LaunchViewInfo;

    return-object v0
.end method

.method public static synthetic getLaunchViewInfo$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private static final getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    goto :goto_11

    :catchall_c
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_11
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_18

    goto :goto_24

    :cond_18
    const-string p0, "getMethod exception: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "RemoteAnimationUtil"

    invoke-static {p1, p0, v0}, Li2/a;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_24
    check-cast p0, Ljava/lang/reflect/Method;

    return-object p0
.end method

.method private static final varargs getMethodExt(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object p0
.end method

.method public static final getRecentsController(Landroid/window/TransitionInfo;)Landroid/view/IRecentsAnimationController;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "transitionInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mExt"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_53

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    const-string v5, "getExtendedInfo"

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_53

    const-string v2, "invoke(ext)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Class;

    const-string v5, "getRecentsController"

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Landroid/view/IRecentsAnimationController;

    if-eqz v1, :cond_53

    move-object v0, p0

    check-cast v0, Landroid/view/IRecentsAnimationController;

    :cond_53
    return-object v0
.end method

.method public static final getTargetRectByTargets([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/RectF;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "targets"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_34

    aget-object v2, p0, v1

    iget v3, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v3, :cond_31

    iget-boolean v3, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startFromAssistScreen:Z

    if-eqz v3, :cond_31

    iget-object p0, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->viewLocation:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    iget-object v1, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->viewLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v2, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->viewLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p0

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0, p0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_34
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0
.end method

.method public static final initOplusField(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "appCompat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isBackToAssistantSupported()Z

    move-result v0

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-eqz v0, :cond_10

    goto :goto_29

    :cond_10
    sget-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->launchViewInfo:Lcom/oplus/animation/LaunchViewInfo;

    if-eqz v0, :cond_23

    iget-object v1, v0, Lcom/oplus/animation/LaunchViewInfo;->mViewSurface:Landroid/view/SurfaceControl;

    iput-object v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->viewLeash:Landroid/view/SurfaceControl;

    iget-object v1, v0, Lcom/oplus/animation/LaunchViewInfo;->mViewLocation:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->viewLocation:Landroid/graphics/Point;

    iget-object v0, v0, Lcom/oplus/animation/LaunchViewInfo;->mLaunchPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->launchPkg:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startFromAssistScreen:Z

    :cond_23
    const/4 p0, 0x0

    sput-boolean p0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isNextCardLauncherViewInfo:Z

    invoke-static {}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->clearLaunchViewInfo()V

    :cond_29
    :goto_29
    return-void
.end method

.method public static final initOplusField(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/view/RemoteAnimationTarget;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "appCompat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isBackToAssistantSupported()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    sget-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->extField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_21

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mExt"

    invoke-static {v0, v1}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->extField:Ljava/lang/reflect/Field;

    :cond_21
    sget-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->extField:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2c

    :cond_2b
    move-object p1, v1

    :goto_2c
    if-nez p1, :cond_2f

    return-void

    :cond_2f
    sget-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->infoMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getOplusLaunchViewInfo"

    invoke-static {v0, v2}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->infoMethod:Ljava/lang/reflect/Method;

    :cond_3f
    sget-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->infoMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4b

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4c

    :cond_4b
    move-object p1, v1

    :goto_4c
    if-nez p1, :cond_4f

    return-void

    :cond_4f
    sget-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->surfaceField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_5f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mViewSurface"

    invoke-static {v0, v2}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->surfaceField:Ljava/lang/reflect/Field;

    :cond_5f
    sget-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->surfaceField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_68

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_69

    :cond_68
    move-object v0, v1

    :goto_69
    instance-of v2, v0, Landroid/view/SurfaceControl;

    if-eqz v2, :cond_70

    check-cast v0, Landroid/view/SurfaceControl;

    goto :goto_71

    :cond_70
    move-object v0, v1

    :goto_71
    if-eqz v0, :cond_cb

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_7a

    goto :goto_cb

    :cond_7a
    sget-object v2, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->locationField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_8a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mViewLocation"

    invoke-static {v2, v3}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->locationField:Ljava/lang/reflect/Field;

    :cond_8a
    sget-object v2, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->pkgField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_9a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mLaunchPackage"

    invoke-static {v2, v3}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->pkgField:Ljava/lang/reflect/Field;

    :cond_9a
    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->viewLeash:Landroid/view/SurfaceControl;

    sget-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->locationField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_a5

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a6

    :cond_a5
    move-object v0, v1

    :goto_a6
    instance-of v2, v0, Landroid/graphics/Point;

    if-eqz v2, :cond_ad

    check-cast v0, Landroid/graphics/Point;

    goto :goto_ae

    :cond_ad
    move-object v0, v1

    :goto_ae
    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->viewLocation:Landroid/graphics/Point;

    sget-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->pkgField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_b9

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_ba

    :cond_b9
    move-object p1, v1

    :goto_ba
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_c1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :cond_c1
    iput-object v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->launchPkg:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->viewLocation:Landroid/graphics/Point;

    if-nez p1, :cond_c8

    return-void

    :cond_c8
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startFromAssistScreen:Z

    :cond_cb
    :goto_cb
    return-void
.end method

.method public static final initTaskLeashField(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/view/RemoteAnimationTarget;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "appCompat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isBackToAssistantSupported()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    sget-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->extField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_21

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mExt"

    invoke-static {v0, v1}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->extField:Ljava/lang/reflect/Field;

    :cond_21
    sget-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->extField:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2c

    :cond_2b
    move-object p1, v1

    :goto_2c
    if-nez p1, :cond_2f

    return-void

    :cond_2f
    sget-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getTaskLeashMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getTaskLeash"

    invoke-static {v0, v2}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getTaskLeashMethod:Ljava/lang/reflect/Method;

    :cond_3f
    sget-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getTaskLeashMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4b

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4c

    :cond_4b
    move-object p1, v1

    :goto_4c
    if-nez p1, :cond_4f

    return-void

    :cond_4f
    instance-of v0, p1, Landroid/view/SurfaceControl;

    if-eqz v0, :cond_56

    move-object v1, p1

    check-cast v1, Landroid/view/SurfaceControl;

    :cond_56
    if-eqz v1, :cond_61

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-nez p1, :cond_5f

    goto :goto_61

    :cond_5f
    iput-object v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskLeash:Landroid/view/SurfaceControl;

    :cond_61
    :goto_61
    return-void
.end method

.method public static final isBackToAssistantSupported()Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isFirstCheck:Z

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isFirstCheck:Z

    :try_start_7
    const-string v1, "android.view.RemoteAnimationTargetExtImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isSupportBackToAssistant:Z

    sget-object v1, Lh4/z;->a:Lh4/z;
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    goto :goto_17

    :catchall_12
    move-exception v1

    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_17
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1e

    goto :goto_2b

    :cond_1e
    const-string v2, "load class exception: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "RemoteAnimationUtil"

    invoke-static {v1, v2, v3}, Li2/a;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    sput-boolean v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isSupportBackToAssistant:Z

    :cond_2b
    :goto_2b
    sget-boolean v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isSupportBackToAssistant:Z

    return v0
.end method

.method public static final isNextCardLauncherViewInfo()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isNextCardLauncherViewInfo:Z

    return v0
.end method

.method public static synthetic isNextCardLauncherViewInfo$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final isTaskRestartBecauseRemovedInRecents(Landroid/view/RemoteAnimationTarget;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "target"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mExt"

    invoke-static {v0, v1}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getIsTaskNotInRecents"

    invoke-static {v0, v2}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2d

    :cond_2c
    move-object p0, v2

    :goto_2d
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_34

    move-object v2, p0

    check-cast v2, Ljava/lang/Boolean;

    :cond_34
    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_3a
    return v1
.end method

.method public static final notifyInterruptScene(Landroid/window/WindowContainerTransaction;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "wct"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->extFieldWCT:Ljava/lang/reflect/Field;

    if-nez v0, :cond_15

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mExt"

    invoke-static {v0, v1}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->extFieldWCT:Ljava/lang/reflect/Field;

    :cond_15
    sget-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->extFieldWCT:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_20

    :cond_1f
    move-object p0, v1

    :goto_20
    if-nez p0, :cond_23

    return-void

    :cond_23
    sget-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->setWCTExtendInfoMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v3

    const-string v5, "setWCTExtendInfo"

    invoke-static {v0, v5, v4}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getMethodExt(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->setWCTExtendInfoMethod:Ljava/lang/reflect/Method;

    :cond_3b
    const-string v0, "android.window.OplusWCTExtendInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    const-string v5, "setRemoteInterrupt"

    invoke-static {v0, v5, v4}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getMethodExt(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->setRemoteInterruptMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_52

    return-void

    :cond_52
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->setRemoteInterruptMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_6b

    new-array v5, v2, [Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v5, v3

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6b
    sget-object v4, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->setWCTExtendInfoMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_77

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-virtual {v4, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_77
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateWCTExtendInfo extResult:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RemoteAnimationUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final setLaunchViewInfo(Lcom/oplus/animation/LaunchViewInfo;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "info"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->launchViewInfo:Lcom/oplus/animation/LaunchViewInfo;

    return-void
.end method

.method public static final setNextCardLauncherViewInfo(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isNextCardLauncherViewInfo:Z

    return-void
.end method
