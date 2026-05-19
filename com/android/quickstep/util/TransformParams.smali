.class public Lcom/android/quickstep/util/TransformParams;
.super Lcom/android/quickstep/util/OplusBaseTransformParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/TransformParams$BuilderProxy;
    }
.end annotation


# static fields
.field public static PROGRESS:Landroid/util/FloatProperty; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/util/TransformParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TransformParams"

.field public static TARGET_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/util/TransformParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseBuilderProxy:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

.field private mCornerRadius:F

.field private mHomeBuilderProxy:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

.field private mProgress:F

.field private mRecentsSurface:Landroid/view/SurfaceControl;

.field private mTargetAlpha:F

.field private mTargetSet:Lcom/android/quickstep/RemoteAnimationTargets;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/util/TransformParams$1;

    const-string/jumbo v1, "progress"

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/TransformParams$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/util/TransformParams;->PROGRESS:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/util/TransformParams$2;

    const-string/jumbo v1, "targetAlpha"

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/TransformParams$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/util/TransformParams;->TARGET_ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/quickstep/util/OplusBaseTransformParams;-><init>()V

    sget-object v0, Lcom/android/quickstep/util/TransformParams$BuilderProxy;->ALWAYS_VISIBLE:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    iput-object v0, p0, Lcom/android/quickstep/util/TransformParams;->mHomeBuilderProxy:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    iput-object v0, p0, Lcom/android/quickstep/util/TransformParams;->mBaseBuilderProxy:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/util/TransformParams;->mProgress:F

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/quickstep/util/TransformParams;->mTargetAlpha:F

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/quickstep/util/TransformParams;->mCornerRadius:F

    return-void
.end method

.method private static getRecentsSurface(Lcom/android/quickstep/RemoteAnimationTargets;)Landroid/view/SurfaceControl;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    iget-object v1, p0, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-nez v1, :cond_8

    goto :goto_24

    :cond_8
    const/4 v1, 0x0

    :goto_9
    iget-object v2, p0, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v3, v2

    if-ge v1, v3, :cond_24

    aget-object v2, v2, v1

    iget v3, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    iget v4, p0, Lcom/android/quickstep/RemoteAnimationTargets;->targetMode:I

    if-ne v3, v4, :cond_21

    iget v3, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1e

    iget-object p0, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    return-object p0

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_21
    iget-object p0, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    return-object p0

    :cond_24
    :goto_24
    return-object v0
.end method


# virtual methods
.method public applySurfaceParams(Lcom/android/quickstep/util/SurfaceTransaction;)V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    if-eqz v0, :cond_11

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/OplusBaseTransformParams;->needApplyNextFrame(Lcom/android/quickstep/util/SurfaceTransaction;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object p0, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    goto :goto_1b

    :cond_11
    invoke-virtual {p1}, Lcom/android/quickstep/util/SurfaceTransaction;->setVsyncId()V

    invoke-virtual {p1}, Lcom/android/quickstep/util/SurfaceTransaction;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_1b
    return-void
.end method

.method public applySurfaceParamsImmediately(Lcom/android/quickstep/util/SurfaceTransaction;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    goto :goto_12

    :cond_8
    invoke-virtual {p1}, Lcom/android/quickstep/util/SurfaceTransaction;->setVsyncId()V

    invoke-virtual {p1}, Lcom/android/quickstep/util/SurfaceTransaction;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_12
    return-void
.end method

.method public createSurfaceParams(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)Lcom/android/quickstep/util/SurfaceTransaction;
    .registers 10

    iget-object v0, p0, Lcom/android/quickstep/util/TransformParams;->mTargetSet:Lcom/android/quickstep/RemoteAnimationTargets;

    new-instance v1, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {v1}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    iget-object v2, p0, Lcom/android/quickstep/util/TransformParams;->mTargetSet:Lcom/android/quickstep/RemoteAnimationTargets;

    if-nez v2, :cond_14

    const-string p0, "TransformParams"

    const-string/jumbo p1, "mTargetSet is null !"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_14
    invoke-static {v0}, Lcom/android/quickstep/util/TransformParams;->getRecentsSurface(Lcom/android/quickstep/RemoteAnimationTargets;)Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/quickstep/util/TransformParams;->mRecentsSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    :goto_1b
    iget-object v3, v0, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v4, v3

    if-ge v2, v4, :cond_69

    aget-object v3, v3, v2

    iget-object v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v4}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v4

    iget v5, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    iget v6, v0, Lcom/android/quickstep/RemoteAnimationTargets;->targetMode:I

    if-ne v5, v6, :cond_61

    iget v5, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_39

    iget-object v5, p0, Lcom/android/quickstep/util/TransformParams;->mHomeBuilderProxy:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    invoke-interface {v5, v4, v3, p0}, Lcom/android/quickstep/util/TransformParams$BuilderProxy;->onBuildTargetParams(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V

    goto :goto_66

    :cond_39
    const/4 v6, 0x4

    if-ne v5, v6, :cond_56

    iget-boolean v5, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isNotInRecents:Z

    if-eqz v5, :cond_56

    invoke-virtual {p0}, Lcom/android/quickstep/util/TransformParams;->getProgress()F

    move-result v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000  # 1.0f

    invoke-static {v5, v6, v7}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v5

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2_5:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    sub-float/2addr v7, v5

    invoke-virtual {v4, v7}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    goto :goto_5d

    :cond_56
    invoke-virtual {p0}, Lcom/android/quickstep/util/TransformParams;->getTargetAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    :goto_5d
    invoke-interface {p1, v4, v3, p0}, Lcom/android/quickstep/util/TransformParams$BuilderProxy;->onBuildTargetParams(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V

    goto :goto_66

    :cond_61
    iget-object v5, p0, Lcom/android/quickstep/util/TransformParams;->mBaseBuilderProxy:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    invoke-interface {v5, v4, v3, p0}, Lcom/android/quickstep/util/TransformParams$BuilderProxy;->onBuildTargetParams(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V

    :goto_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_69
    return-object v1
.end method

.method public getCornerRadius()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/util/TransformParams;->mCornerRadius:F

    return p0
.end method

.method public getProgress()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/util/TransformParams;->mProgress:F

    return p0
.end method

.method public getRecentsSurface()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/TransformParams;->mRecentsSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getTargetAlpha()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/util/TransformParams;->mTargetAlpha:F

    return p0
.end method

.method public getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/TransformParams;->mTargetSet:Lcom/android/quickstep/RemoteAnimationTargets;

    return-object p0
.end method

.method public setBaseBuilderProxy(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)Lcom/android/quickstep/util/TransformParams;
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/util/TransformParams;->mBaseBuilderProxy:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    return-object p0
.end method

.method public setCornerRadius(F)Lcom/android/quickstep/util/TransformParams;
    .registers 2

    iput p1, p0, Lcom/android/quickstep/util/TransformParams;->mCornerRadius:F

    return-object p0
.end method

.method public setHomeBuilderProxy(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)Lcom/android/quickstep/util/TransformParams;
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/util/TransformParams;->mHomeBuilderProxy:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    return-object p0
.end method

.method public setProgress(F)Lcom/android/quickstep/util/TransformParams;
    .registers 2

    iput p1, p0, Lcom/android/quickstep/util/TransformParams;->mProgress:F

    return-object p0
.end method

.method public setSyncTransactionApplier(Lcom/android/quickstep/util/SurfaceTransactionApplier;)Lcom/android/quickstep/util/TransformParams;
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    return-object p0
.end method

.method public setTargetAlpha(F)Lcom/android/quickstep/util/TransformParams;
    .registers 2

    iput p1, p0, Lcom/android/quickstep/util/TransformParams;->mTargetAlpha:F

    return-object p0
.end method

.method public setTargetSet(Lcom/android/quickstep/RemoteAnimationTargets;)Lcom/android/quickstep/util/TransformParams;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/util/TransformParams;->setTargetSet(Lcom/android/quickstep/RemoteAnimationTargets;Z)Lcom/android/quickstep/util/TransformParams;

    move-result-object p0

    return-object p0
.end method

.method public setTargetSet(Lcom/android/quickstep/RemoteAnimationTargets;Z)Lcom/android/quickstep/util/TransformParams;
    .registers 4

    if-eqz p2, :cond_1d

    if-nez p1, :cond_1d

    const-string/jumbo p2, "setTargetSet targetSet==null, caller = "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TransformParams"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iput-object p1, p0, Lcom/android/quickstep/util/TransformParams;->mTargetSet:Lcom/android/quickstep/RemoteAnimationTargets;

    return-object p0
.end method
