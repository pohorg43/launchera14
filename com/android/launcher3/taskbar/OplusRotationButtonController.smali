.class public Lcom/android/launcher3/taskbar/OplusRotationButtonController;
.super Lcom/android/systemui/shared/rotation/RotationButtonController;
.source ""


# instance fields
.field private mDrawableResFloat:[I

.field private mDrawableResLight:[I

.field private mDrawableResNight:[I

.field private mIsNightEnv:Z

.field private mIsTreeNav:Z

.field private mNavbarDarkChangeListener:Lcom/oplus/quickstep/common/IObserverListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIIILjava/util/function/Supplier;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIIIII",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/shared/rotation/RotationButtonController;-><init>(Landroid/content/Context;IIIIIILjava/util/function/Supplier;)V

    new-instance p1, Lcom/android/launcher3/taskbar/OplusRotationButtonController$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/OplusRotationButtonController$1;-><init>(Lcom/android/launcher3/taskbar/OplusRotationButtonController;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusRotationButtonController;->mNavbarDarkChangeListener:Lcom/oplus/quickstep/common/IObserverListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[I[I[IZZLjava/util/function/Supplier;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[I[I[IZZ",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object v9, p0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    const/4 v0, 0x0

    aget v4, v10, v0

    const/4 v0, 0x1

    aget v5, v10, v0

    const/4 v0, 0x2

    aget v6, v10, v0

    const/4 v0, 0x3

    aget v7, v10, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/taskbar/OplusRotationButtonController;-><init>(Landroid/content/Context;IIIIIILjava/util/function/Supplier;)V

    iput-object v10, v9, Lcom/android/launcher3/taskbar/OplusRotationButtonController;->mDrawableResLight:[I

    iput-object v11, v9, Lcom/android/launcher3/taskbar/OplusRotationButtonController;->mDrawableResNight:[I

    iput-object v12, v9, Lcom/android/launcher3/taskbar/OplusRotationButtonController;->mDrawableResFloat:[I

    move/from16 v0, p7

    iput-boolean v0, v9, Lcom/android/launcher3/taskbar/OplusRotationButtonController;->mIsTreeNav:Z

    move/from16 v0, p8

    iput-boolean v0, v9, Lcom/android/launcher3/taskbar/OplusRotationButtonController;->mIsNightEnv:Z

    invoke-direct {p0, v10, v11, v12}, Lcom/android/launcher3/taskbar/OplusRotationButtonController;->updateResources([I[I[I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/taskbar/OplusRotationButtonController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/OplusRotationButtonController;->mIsTreeNav:Z

    return p0
.end method

.method private updateResources([I[I[I)V
    .registers 9

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/OplusRotationButtonController;->mIsTreeNav:Z

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_19

    aget p1, p3, v4

    iput p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconCcwStart0ResId:I

    aget p1, p3, v3

    iput p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconCcwStart90ResId:I

    aget p1, p3, v2

    iput p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconCwStart0ResId:I

    aget p1, p3, v1

    iput p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconCwStart90ResId:I

    goto :goto_3e

    :cond_19
    iget-boolean p3, p0, Lcom/android/launcher3/taskbar/OplusRotationButtonController;->mIsNightEnv:Z

    if-eqz p3, :cond_2e

    aget p1, p2, v4

    iput p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconCcwStart0ResId:I

    aget p1, p2, v3

    iput p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconCcwStart90ResId:I

    aget p1, p2, v2

    iput p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconCwStart0ResId:I

    aget p1, p2, v1

    iput p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconCwStart90ResId:I

    goto :goto_3e

    :cond_2e
    aget p2, p1, v4

    iput p2, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconCcwStart0ResId:I

    aget p2, p1, v3

    iput p2, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconCcwStart90ResId:I

    aget p2, p1, v2

    iput p2, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconCwStart0ResId:I

    aget p1, p1, v1

    iput p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconCwStart90ResId:I

    :goto_3e
    iget p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconCcwStart90ResId:I

    iput p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconResId:I

    return-void
.end method


# virtual methods
.method public init()V
    .registers 1

    invoke-super {p0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->init()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusRotationButtonController;->mNavbarDarkChangeListener:Lcom/oplus/quickstep/common/IObserverListener;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->addNavbarDarkChangeListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->onDestroy()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusRotationButtonController;->mNavbarDarkChangeListener:Lcom/oplus/quickstep/common/IObserverListener;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->removeNavbarDarkChangeListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    return-void
.end method

.method public shouldOverrideUserLockPrefs(I)Z
    .registers 3

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-super {p0, p1}, Lcom/android/systemui/shared/rotation/RotationButtonController;->shouldOverrideUserLockPrefs(I)Z

    move-result p0

    return p0
.end method

.method public updateResources(ZZ)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/OplusRotationButtonController;->mIsNightEnv:Z

    if-ne p1, v0, :cond_8

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/OplusRotationButtonController;->mIsTreeNav:Z

    if-eq p2, v0, :cond_15

    :cond_8
    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/OplusRotationButtonController;->mIsTreeNav:Z

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/OplusRotationButtonController;->mIsNightEnv:Z

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusRotationButtonController;->mDrawableResLight:[I

    iget-object p2, p0, Lcom/android/launcher3/taskbar/OplusRotationButtonController;->mDrawableResNight:[I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusRotationButtonController;->mDrawableResFloat:[I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/OplusRotationButtonController;->updateResources([I[I[I)V

    :cond_15
    return-void
.end method

.method public updateSysuiFlags(I)V
    .registers 2

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    iput-boolean p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIsImmersive:Z

    return-void
.end method
