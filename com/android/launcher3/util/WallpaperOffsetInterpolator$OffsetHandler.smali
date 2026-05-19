.class Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/WallpaperOffsetInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OffsetHandler"
.end annotation


# instance fields
.field private mAnimating:Z

.field private mAnimationStartOffset:F

.field private mAnimationStartTime:J

.field private mCurrentOffset:F

.field private mFinalOffset:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mOffsetX:F

.field private final mWM:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/oplus/util/OplusExecutors;->WALLPAPER_TRANSACTION_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/high16 v0, 0x3f000000  # 0.5f

    iput v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_5:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mWM:Landroid/app/WallpaperManager;

    return-void
.end method

.method private setOffsetSafely(Landroid/os/IBinder;)V
    .registers 7

    const-string v0, "Error updating wallpaper offset: "

    const-string v1, "WPOffsetInterpolator"

    :try_start_4
    sget-object v2, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v2}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setAsyncUx(I)V

    iget-object v3, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mWM:Landroid/app/WallpaperManager;

    iget p0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    const/high16 v4, 0x3f000000  # 0.5f

    invoke-virtual {v3, p1, p0, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    invoke-virtual {v2}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setAsyncUx(I)V
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_1f} :catch_34
    .catch Landroid/os/DeadSystemRuntimeException; {:try_start_4 .. :try_end_1f} :catch_20

    goto :goto_47

    :catch_20
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    :catch_34
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_47
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_aa

    return-void

    :pswitch_11  #0x6
    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_1c

    move v2, v4

    :cond_1c
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    return-void

    :pswitch_24  #0x5
    iget p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    iget v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mFinalOffset:F

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_35

    iget p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mFinalOffset:F

    iput p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->setOffsetSafely(Landroid/os/IBinder;)V

    :cond_35
    iput-boolean v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimating:Z

    return-void

    :pswitch_38  #0x4
    iget p1, p1, Landroid/os/Message;->arg1:I

    sub-int/2addr p1, v4

    int-to-float p1, p1

    div-float p1, v3, p1

    iput p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mOffsetX:F

    iget-object p0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mWM:Landroid/app/WallpaperManager;

    invoke-virtual {p0, p1, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    return-void

    :pswitch_46  #0x1
    iput-boolean v4, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimating:Z

    iget v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    iput v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimationStartOffset:F

    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimationStartTime:J

    :pswitch_52  #0x2
    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-float v1, v1

    iget p1, p1, Landroid/os/Message;->arg2:I

    int-to-float p1, p1

    div-float/2addr v1, p1

    iput v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mFinalOffset:F

    :pswitch_5b  #0x3
    iget p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    iget-boolean v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimating:Z

    if-eqz v1, :cond_86

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimationStartTime:J

    sub-long/2addr v5, v7

    long-to-float v1, v5

    const/high16 v7, 0x437a0000  # 250.0f

    div-float/2addr v1, v7

    iget-object v7, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iget v7, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimationStartOffset:F

    iget v8, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mFinalOffset:F

    invoke-static {v8, v7, v1, v7}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    const-wide/16 v7, 0xfa

    cmp-long v1, v5, v7

    if-gez v1, :cond_83

    move v2, v4

    :cond_83
    iput-boolean v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimating:Z

    goto :goto_8a

    :cond_86
    iget v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mFinalOffset:F

    iput v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    :goto_8a
    iget v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mCurrentOffset:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_9c

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->setOffsetSafely(Landroid/os/IBinder;)V

    iget-object p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mWM:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mOffsetX:F

    invoke-virtual {p1, v1, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    :cond_9c
    iget-boolean p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;->mAnimating:Z

    if-eqz p1, :cond_a8

    const/4 p1, 0x3

    invoke-static {p0, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_a8
    return-void

    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_46  #00000001
        :pswitch_52  #00000002
        :pswitch_5b  #00000003
        :pswitch_38  #00000004
        :pswitch_24  #00000005
        :pswitch_11  #00000006
    .end packed-switch
.end method
