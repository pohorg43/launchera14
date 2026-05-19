.class public abstract Lcom/android/launcher3/states/OPlusBaseState;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final FLAG_ALL_VIEW_ACTIVE:I = 0x2

.field public static final FLAG_NONE:I

.field private static TARGET_STATE:Lcom/android/launcher3/states/OPlusBaseState;


# instance fields
.field public mActionFlag:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/states/OPlusBaseState;->mActionFlag:I

    return-void
.end method

.method public static getTargetLauncherState()Lcom/android/launcher3/states/OPlusBaseState;
    .registers 1

    sget-object v0, Lcom/android/launcher3/states/OPlusBaseState;->TARGET_STATE:Lcom/android/launcher3/states/OPlusBaseState;

    return-object v0
.end method

.method public static setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTargetLauncherState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    const-string v2, "OPlusBaseState"

    invoke-static {v1, v0, v2}, Lcom/android/common/util/k;->a(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1f
    sput-object p0, Lcom/android/launcher3/states/OPlusBaseState;->TARGET_STATE:Lcom/android/launcher3/states/OPlusBaseState;

    return-void
.end method


# virtual methods
.method public addActionFlag(I)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/states/OPlusBaseState;->mActionFlag:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/states/OPlusBaseState;->mActionFlag:I

    return-void
.end method

.method public getBlur(Landroid/content/Context;)F
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getDragLayerScaleAndAlpha(Lcom/android/launcher3/Launcher;)[F
    .registers 2

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_8

    return-object p0

    nop

    :array_8
    .array-data 4
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public getLauncherTaskViewAlpha(Lcom/android/launcher3/Launcher;)F
    .registers 2

    const/high16 p0, 0x3f800000  # 1.0f

    return p0
.end method

.method public getLauncherTaskViewTouchable(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;
    .registers 2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getOverviewScrimAlpha(Lcom/android/launcher3/Launcher;)F
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public hasActionFlag(I)Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/states/OPlusBaseState;->mActionFlag:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public onInterceptBackPressed(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/LauncherState;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Lcom/android/launcher3/statemanager/StateManager<",
            "Lcom/android/launcher3/LauncherState;",
            ">;",
            "Lcom/android/launcher3/LauncherState;",
            ")Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public resetActionFlag()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/states/OPlusBaseState;->mActionFlag:I

    return-void
.end method

.method public shouldCancelAnimationWhenDraggingToOverview()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
