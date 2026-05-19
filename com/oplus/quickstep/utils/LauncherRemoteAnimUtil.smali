.class public final Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLauncherRemoteAnimUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherRemoteAnimUtil.kt\ncom/oplus/quickstep/utils/LauncherRemoteAnimUtil\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,154:1\n13309#2,2:155\n13309#2,2:157\n*S KotlinDebug\n*F\n+ 1 LauncherRemoteAnimUtil.kt\ncom/oplus/quickstep/utils/LauncherRemoteAnimUtil\n*L\n78#1:155,2\n110#1:157,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;

.field public static final OPS_PENDING_PROGRESS:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "LauncherRemoteAnimUtil"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createAnimListenerForLayerType(Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$IAnimListenerToken;

    if-nez v0, :cond_f

    new-instance p0, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil$createAnimListenerForLayerType$1;

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil$createAnimListenerForLayerType$1;-><init>()V

    return-object p0

    :cond_f
    move-object v0, p0

    check-cast v0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$IAnimListenerToken;

    invoke-interface {v0}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$IAnimListenerToken;->getListenerToken()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$IAnimListenerToken;->setListenerToken(I)V

    new-instance v1, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil$createAnimListenerForLayerType$2;

    invoke-direct {v1, v0, p0}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil$createAnimListenerForLayerType$2;-><init>(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$IAnimListenerToken;Landroid/view/View;)V

    return-object v1
.end method

.method public static final createParamForResetTask([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/util/SurfaceTransaction;
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "appTargets"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {v0}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_31

    aget-object v4, p0, v3

    iget v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    iget-object v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_21

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-ne v5, v6, :cond_21

    goto :goto_22

    :cond_21
    move v6, v2

    :goto_22
    if-eqz v6, :cond_2e

    iget-object v4, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v4}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_31
    return-object v0
.end method

.method public static final createParamForTaskLayerRestore(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)Lcom/android/quickstep/util/SurfaceTransaction;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "appTargets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {v0}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->restoreTaskLayer(Lcom/android/quickstep/util/SurfaceTransaction;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)Lcom/android/quickstep/util/SurfaceTransaction;

    move-result-object p0

    return-object p0
.end method

.method public static final isAppWindowAnimRunning(Lcom/android/launcher/Launcher;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->isAppWindowAnimRunning()Z

    move-result v0

    if-nez v0, :cond_1c

    const/16 v0, 0x100

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->hasOpenView(Lcom/android/launcher3/views/ActivityContext;I)Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 p0, 0x1

    :goto_1d
    return p0
.end method

.method public static final isShellTransitionRecentAnimRunning(Lcom/android/launcher/Launcher;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object p0

    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingIconViewContainer;->isRecentAnimating()Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public static final restoreTaskLayer(Lcom/android/quickstep/util/SurfaceTransaction;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)Lcom/android/quickstep/util/SurfaceTransaction;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "transaction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appTargets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->restoreTaskLayer(Lcom/android/quickstep/util/SurfaceTransaction;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZZ)Lcom/android/quickstep/util/SurfaceTransaction;

    move-result-object p0

    return-object p0
.end method

.method public static final restoreTaskLayer(Lcom/android/quickstep/util/SurfaceTransaction;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZZ)Lcom/android/quickstep/util/SurfaceTransaction;
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "transaction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appTargets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_a2

    aget-object v3, p2, v2

    iget-object v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskLeash:Landroid/view/SurfaceControl;

    const-string v5, "LauncherRemoteAnimUtil"

    const-string v6, "Restore, taskLeash.isValid = "

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v4, :cond_26

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_27

    :cond_26
    const/4 v7, 0x0

    :goto_27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", it.mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", targetMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    if-eqz v4, :cond_4d

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v6

    if-ne v6, v5, :cond_4d

    goto :goto_4e

    :cond_4d
    move v5, v1

    :goto_4e
    if-eqz v5, :cond_9e

    iget v3, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-eq v3, p1, :cond_57

    const/4 v5, 0x2

    if-ne v3, v5, :cond_9e

    :cond_57
    invoke-virtual {p0, v4}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v3

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v6, -0x1

    if-eqz p3, :cond_89

    const-class v7, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;

    monitor-enter v7

    :try_start_6f
    invoke-virtual {v3, v4}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v4

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v1, v1, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v8}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    if-eqz p4, :cond_84

    invoke-virtual {v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setShow()Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;
    :try_end_84
    .catchall {:try_start_6f .. :try_end_84} :catchall_86

    :cond_84
    monitor-exit v7

    goto :goto_9e

    :catchall_86
    move-exception p0

    monitor-exit v7

    throw p0

    :cond_89
    invoke-virtual {v3, v4}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v4

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v1, v1, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v7}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    if-eqz p4, :cond_9e

    invoke-virtual {v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setShow()Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    :cond_9e
    :goto_9e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    :cond_a2
    return-object p0
.end method
