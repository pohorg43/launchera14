.class public final Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final hookScaleHotseat(Lcom/android/launcher3/LauncherState;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo p0, "state"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    sget-object p0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method

.method public final hookScalePageIndicator(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo p0, "state"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "propertySetter"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1e

    sget-object p0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    :cond_1e
    instance-of p0, p2, Lcom/android/launcher3/anim/PendingAnimation;

    if-eqz p0, :cond_24

    move p0, v0

    goto :goto_25

    :cond_24
    move p0, v1

    :goto_25
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresentAndNotStashedInApp()Z

    move-result p1

    if-eqz p1, :cond_31

    sget-boolean p1, Lcom/android/launcher3/taskbar/TaskbarUtils;->isRecentReverseScene:Z

    if-eqz p1, :cond_31

    move p1, v0

    goto :goto_32

    :cond_31
    move p1, v1

    :goto_32
    if-eqz p1, :cond_3b

    const-string p2, "CustomTransitionController"

    const-string v2, "Taskbar presents and reverse animation is running, do not change pageIndicator\'s scale"

    invoke-static {p2, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    if-nez p0, :cond_41

    if-eqz p1, :cond_40

    goto :goto_41

    :cond_40
    move v0, v1

    :cond_41
    :goto_41
    return v0
.end method

.method public final hookScaleWorkspace(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo p0, "state"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "propertySetter"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    instance-of p0, p2, Lcom/android/launcher3/anim/PendingAnimation;

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public final hookTranslateYPagePreview(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo p0, "state"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "propertySetter"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    const/4 v0, 0x1

    if-ne p1, p0, :cond_16

    instance-of p0, p2, Lcom/android/launcher3/anim/PendingAnimation;

    if-eqz p0, :cond_16

    return v0

    :cond_16
    sget-object p0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, p0, :cond_1b

    return v0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method
