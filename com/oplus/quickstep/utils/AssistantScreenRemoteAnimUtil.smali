.class public final Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil$HomeAnimation;
    }
.end annotation


# static fields
.field private static final ASSISTANT_SCREEN_ANIMATION_TIME_MILLIS:I = 0xc8

.field private static final EXTRAS_ASSISTANT_SCREEN_WIDTH:Ljava/lang/String; = "assistant_screen_width_set"

.field private static final EXTRAS_LAUNCH_VIEW_INFO:Ljava/lang/String; = "launchViewInfo_set"

.field public static final INSTANCE:Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;

.field public static final METHOD_SET_LAUNCH_VIEW_INFO:Ljava/lang/String; = "setLaunchViewInfoForWindow"

.field public static final ON_GESTURE_SWIPE_UP_TARGET_HOME:Ljava/lang/String; = "swipe_up_to_home"

.field public static final ON_GESTURE_SWIPE_UP_TARGET_RECENTS:Ljava/lang/String; = "swipe_up_to_recents"

.field private static final TAG:Ljava/lang/String; = "AssistantScreenRemoteAnimUtil"

.field private static final TARGET_ASSISTANT_SCREEN:I = 0x5

.field private static asstScreenWidth:I

.field private static final mTmpValues:[F

.field private static volatile startTimeMillis:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;

    const/16 v0, 0x9

    new-array v0, v0, [F

    sput-object v0, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->mTmpValues:[F

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$createAnimLeash(Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;I)Landroid/view/SurfaceControl;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->createAnimLeash(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;I)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAsstScreenWidth$p()I
    .registers 1

    sget v0, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->asstScreenWidth:I

    return v0
.end method

.method public static final synthetic access$transformIconLeashToPortrait(Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;IFF)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->transformIconLeashToPortrait(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;IFF)V

    return-void
.end method

.method private final createAnimLeash(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;I)Landroid/view/SurfaceControl;
    .registers 6

    if-eqz p1, :cond_5d

    if-eqz p2, :cond_5d

    if-eqz p4, :cond_5d

    const/4 p0, 0x2

    if-ne p4, p0, :cond_a

    goto :goto_5d

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createAnimLeash: rotation="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p4, "AssistantScreenRemoteAnimUtil"

    invoke-static {p4, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_anim-leash"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p3, p0, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 p1, 0x1

    invoke-virtual {p3, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    const p1, 0x7fffffff

    invoke-virtual {p3, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-object p0

    :cond_5d
    :goto_5d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getOpeningAppsTaskLeash([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/SurfaceControl;
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

    iget v3, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v3, :cond_12

    iget-object p0, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskLeash:Landroid/view/SurfaceControl;

    return-object p0

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final isAssistantOpenAnimRunning()Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportInterceptSwipeUpGesture()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->startTimeMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method private static final isLaunchViewInfoInvalid(Lcom/oplus/animation/LaunchViewInfo;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    iget-object v0, p0, Lcom/oplus/animation/LaunchViewInfo;->mLaunchPackage:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    move v0, v1

    goto :goto_10

    :cond_f
    :goto_f
    move v0, v2

    :goto_10
    if-nez v0, :cond_23

    iget-object p0, p0, Lcom/oplus/animation/LaunchViewInfo;->mViewSurface:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p0

    if-ne p0, v2, :cond_1e

    move p0, v2

    goto :goto_1f

    :cond_1e
    move p0, v1

    :goto_1f
    if-nez p0, :cond_22

    goto :goto_23

    :cond_22
    return v1

    :cond_23
    :goto_23
    return v2
.end method

.method public static final parseData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "AssistantScreenRemoteAnimUtil"

    const-string v1, "resolveData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez p0, :cond_10

    const-string p0, "resolveData: bundle is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_10
    const-string v2, "launchViewInfo_set"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "assistant_screen_width_set"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v3, p0, Ljava/lang/Integer;

    if-eqz v3, :cond_23

    check-cast p0, Ljava/lang/Integer;

    goto :goto_24

    :cond_23
    move-object p0, v1

    :goto_24
    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_2d

    :cond_2b
    sget p0, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->asstScreenWidth:I

    :goto_2d
    sput p0, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->asstScreenWidth:I

    instance-of p0, v2, Lcom/oplus/animation/LaunchViewInfo;

    if-nez p0, :cond_39

    const-string p0, "resolveData: info isn\'t LaunchViewInfo"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_39
    check-cast v2, Lcom/oplus/animation/LaunchViewInfo;

    invoke-static {v2}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->isLaunchViewInfoInvalid(Lcom/oplus/animation/LaunchViewInfo;)Z

    move-result p0

    if-eqz p0, :cond_47

    const-string p0, "resolveData: info isn\'t valid"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_47
    const/4 p0, 0x1

    invoke-static {p0}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->setNextCardLauncherViewInfo(Z)V

    invoke-static {v2}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->setLaunchViewInfo(Lcom/oplus/animation/LaunchViewInfo;)V

    return-object v1
.end method

.method public static final resetStartTimeMillis()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->startTimeMillis:J

    return-void
.end method

.method private final transformIconLeashToPortrait(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;IFF)V
    .registers 7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createAnimLeash: rotation="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", w="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", h="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AssistantScreenRemoteAnimUtil"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_35

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {p3, p4, p5, p0}, Lcom/android/quickstep/util/RecentsOrientedState;->postDisplayRotation(IFFLandroid/graphics/Matrix;)V

    sget-object p3, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->mTmpValues:[F

    invoke-virtual {p2, p1, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    :cond_35
    return-void
.end method

.method public static final updateStartTimeMillis()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->startTimeMillis:J

    return-void
.end method
