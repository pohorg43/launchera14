.class public Lcom/android/wm/shell/common/TabletopModeController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/DevicePostureController$OnDevicePostureChangedListener;
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/common/TabletopModeController$OnTabletopModeChangedListener;,
        Lcom/android/wm/shell/common/TabletopModeController$PreferredTabletopHalf;
    }
.end annotation


# static fields
.field public static final PREFERRED_TABLETOP_HALF_BOTTOM:I = 0x1

.field public static final PREFERRED_TABLETOP_HALF_TOP:I = 0x0

.field private static final PREFER_TOP_HALF_IN_TABLETOP:Z

.field private static final TABLETOP_MODE_DELAY_MILLIS:J = 0x3e8L


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDevicePosture:I

.field private final mDevicePostureController:Lcom/android/wm/shell/common/DevicePostureController;

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private mDisplayRotation:I

.field private mLastIsInTabletopModeForCallback:Ljava/lang/Boolean;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wm/shell/common/TabletopModeController$OnTabletopModeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mOnEnterTabletopModeCallback:Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mTabletopModeRotations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "persist.wm.debug.prefer_top_half_in_tabletop"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/common/TabletopModeController;->PREFER_TOP_HALF_IN_TABLETOP:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DevicePostureController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 7
    .param p5  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mTabletopModeRotations:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mListeners:Ljava/util/List;

    new-instance v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;-><init>(Lcom/android/wm/shell/common/TabletopModeController;)V

    iput-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mOnEnterTabletopModeCallback:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDevicePosture:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDisplayRotation:I

    iput-object p1, p0, Lcom/android/wm/shell/common/TabletopModeController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDevicePostureController:Lcom/android/wm/shell/common/DevicePostureController;

    iput-object p4, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p5, p0, Lcom/android/wm/shell/common/TabletopModeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p1, Lcom/android/launcher3/pullup/controller/a;

    invoke-direct {p1, p0}, Lcom/android/launcher3/pullup/controller/a;-><init>(Lcom/android/wm/shell/common/TabletopModeController;)V

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/common/TabletopModeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/common/TabletopModeController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic b(ZLcom/android/wm/shell/common/TabletopModeController$OnTabletopModeChangedListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/common/TabletopModeController;->lambda$mayBroadcastOnTabletopModeChange$1(ZLcom/android/wm/shell/common/TabletopModeController$OnTabletopModeChangedListener;)V

    return-void
.end method

.method private isHalfOpened(I)Z
    .registers 2

    const/4 p0, 0x2

    if-ne p1, p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method private isInTabletopMode()Z
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDevicePosture:I

    invoke-direct {p0, v0}, Lcom/android/wm/shell/common/TabletopModeController;->isHalfOpened(I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mTabletopModeRotations:Ljava/util/Set;

    iget p0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDisplayRotation:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method private static synthetic lambda$mayBroadcastOnTabletopModeChange$1(ZLcom/android/wm/shell/common/TabletopModeController$OnTabletopModeChangedListener;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/android/wm/shell/common/TabletopModeController$OnTabletopModeChangedListener;->onTabletopModeChanged(Z)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    invoke-direct {p0}, Lcom/android/wm/shell/common/TabletopModeController;->isInTabletopMode()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/wm/shell/common/TabletopModeController;->mayBroadcastOnTabletopModeChange(Z)V

    :cond_a
    return-void
.end method

.method private mayBroadcastOnTabletopModeChange(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mLastIsInTabletopModeForCallback:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_1b

    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mListeners:Ljava/util/List;

    new-instance v1, Lcom/android/launcher/i;

    const/4 v2, 0x7

    invoke-direct {v1, p1, v2}, Lcom/android/launcher/i;-><init>(ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/TabletopModeController;->mLastIsInTabletopModeForCallback:Ljava/lang/Boolean;

    :cond_1b
    return-void
.end method

.method private onDevicePostureOrDisplayRotationChanged(II)V
    .registers 5

    invoke-direct {p0}, Lcom/android/wm/shell/common/TabletopModeController;->isInTabletopMode()Z

    move-result v0

    iput p1, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDevicePosture:I

    iput p2, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDisplayRotation:I

    invoke-direct {p0}, Lcom/android/wm/shell/common/TabletopModeController;->isInTabletopMode()Z

    move-result p1

    iget-object p2, p0, Lcom/android/wm/shell/common/TabletopModeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, p0, Lcom/android/wm/shell/common/TabletopModeController;->mOnEnterTabletopModeCallback:Ljava/lang/Runnable;

    invoke-interface {p2, v1}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez v0, :cond_21

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/android/wm/shell/common/TabletopModeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mOnEnterTabletopModeCallback:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-interface {p1, p0, v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    goto :goto_25

    :cond_21
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/TabletopModeController;->mayBroadcastOnTabletopModeChange(Z)V

    :goto_25
    return-void
.end method


# virtual methods
.method public getPreferredHalfInTabletopMode()I
    .registers 1

    sget-boolean p0, Lcom/android/wm/shell/common/TabletopModeController;->PREFER_TOP_HALF_IN_TABLETOP:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onDevicePostureChanged(I)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDevicePosture:I

    if-eq v0, p1, :cond_9

    iget v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDisplayRotation:I

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/common/TabletopModeController;->onDevicePostureOrDisplayRotationChanged(II)V

    :cond_9
    return-void
.end method

.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .registers 3

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result p2

    if-nez p1, :cond_11

    iget p1, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDisplayRotation:I

    if-eq p2, p1, :cond_11

    iget p1, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDevicePosture:I

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/common/TabletopModeController;->onDevicePostureOrDisplayRotationChanged(II)V

    :cond_11
    return-void
.end method

.method public onInit()V
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDevicePostureController:Lcom/android/wm/shell/common/DevicePostureController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DevicePostureController;->registerOnDevicePostureChangedListener(Lcom/android/wm/shell/common/DevicePostureController$OnDevicePostureChangedListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/internal/R$array;->config_deviceTabletopRotations:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_76

    array-length v3, v0

    if-nez v3, :cond_1e

    goto :goto_76

    :cond_1e
    array-length v3, v0

    move v4, v2

    :goto_20
    if-ge v4, v3, :cond_75

    aget v5, v0, v4

    if-eqz v5, :cond_69

    const/16 v6, 0x5a

    const/4 v7, 0x1

    if-eq v5, v6, :cond_5f

    const/16 v6, 0xb4

    if-eq v5, v6, :cond_54

    const/16 v6, 0x10e

    if-eq v5, v6, :cond_49

    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_FOLDABLE_enabled:Z

    if-eqz v6, :cond_72

    int-to-long v5, v5

    sget-object v8, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_FOLDABLE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v9, 0xdeea463

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v10, v2

    invoke-static {v8, v9, v7, v1, v10}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_72

    :cond_49
    iget-object v5, p0, Lcom/android/wm/shell/common/TabletopModeController;->mTabletopModeRotations:Ljava/util/Set;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_72

    :cond_54
    iget-object v5, p0, Lcom/android/wm/shell/common/TabletopModeController;->mTabletopModeRotations:Ljava/util/Set;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_72

    :cond_5f
    iget-object v5, p0, Lcom/android/wm/shell/common/TabletopModeController;->mTabletopModeRotations:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_72

    :cond_69
    iget-object v5, p0, Lcom/android/wm/shell/common/TabletopModeController;->mTabletopModeRotations:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_72
    :goto_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_75
    return-void

    :cond_76
    :goto_76
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_FOLDABLE_enabled:Z

    if-eqz p0, :cond_82

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_FOLDABLE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, 0x73f75efe

    invoke-static {p0, v0, v2, v1, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_82
    return-void
.end method

.method public registerOnTabletopModeChangedListener(Lcom/android/wm/shell/common/TabletopModeController$OnTabletopModeChangedListener;)V
    .registers 3

    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_17

    :cond_b
    iget-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/wm/shell/common/TabletopModeController;->isInTabletopMode()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/wm/shell/common/TabletopModeController$OnTabletopModeChangedListener;->onTabletopModeChanged(Z)V

    :cond_17
    :goto_17
    return-void
.end method

.method public unregisterOnTabletopModeChangedListener(Lcom/android/wm/shell/common/TabletopModeController$OnTabletopModeChangedListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
