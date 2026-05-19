.class public abstract Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;
.super Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "OplusOverviewProxyImpl"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mSercice:Lcom/android/quickstep/TouchInteractionService;

.field private final mSysuiFlagChangedCallback:Ljava/lang/Runnable;

.field private mSysuiFlags:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->Companion:Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/TouchInteractionService;)V
    .registers 3

    const-string v0, "mSercice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSercice:Lcom/android/quickstep/TouchInteractionService;

    new-instance p1, Lcom/android/quickstep/util/n;

    invoke-direct {p1, p0}, Lcom/android/quickstep/util/n;-><init>(Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;)V

    iput-object p1, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSysuiFlagChangedCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSysuiFlagChangedCallback$lambda$0(Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;)V

    return-void
.end method

.method private static final applySplitScreenSecondaryBoundsChangedByOplus$lambda$3(Lcom/android/launcher3/util/WindowBounds;)V
    .registers 2

    const-string v0, "$wb"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/util/SplitScreenBounds;->INSTANCE:Lcom/android/quickstep/util/SplitScreenBounds;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/SplitScreenBounds;->setSecondaryWindowBounds(Lcom/android/launcher3/util/WindowBounds;)V

    return-void
.end method

.method public static synthetic b(ILcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->interceptOnSystemUiStateChanged$lambda$4(ILcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;Landroid/graphics/Region;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->onActiveNavBarRegionChanges$lambda$1(Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;Landroid/graphics/Region;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/statemanager/StatefulActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->onOverviewHidden$lambda$2(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    return-void
.end method

.method public static synthetic e(Landroid/os/Bundle;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->notifyCapsuleChange$lambda$5(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/util/WindowBounds;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->applySplitScreenSecondaryBoundsChangedByOplus$lambda$3(Lcom/android/launcher3/util/WindowBounds;)V

    return-void
.end method

.method private final initInputMonitorWithCheck()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSercice:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {v0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->forceUpdateMonitorIfNeed()Z

    move-result v0

    const-string v1, "initInputMonitorWithCheck: shouldInit = "

    const-string v2, "QuickStep"

    const-string v3, "OplusOverviewProxyImpl"

    invoke-static {v1, v0, v2, v3}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSercice:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->initInputMonitor()V

    :cond_16
    return-void
.end method

.method private static final interceptOnSystemUiStateChanged$lambda$4(ILcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "interceptOnSystemUiStateChanged: set sysUiFlags to ="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->getSystemUiStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusOverviewProxyImpl"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    invoke-direct {p1, p0}, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->updateUserLockedStateIfNeed(I)V

    iget-object v0, p1, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSercice:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {v0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getSystemUiStateFlags()I

    move-result v0

    iget-object v1, p1, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSercice:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {v1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->setSystemUiFlags(I)V

    iget-object p0, p1, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSercice:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/TouchInteractionService;->onSystemUiFlagsChanged(I)V

    return-void
.end method

.method private static final mSysuiFlagChangedCallback$lambda$0(Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execute flag changed callback, and the new flag is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSysuiFlags:I

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->getSystemUiStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusOverviewProxyImpl"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSysuiFlags:I

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->updateUserLockedStateIfNeed(I)V

    iget-object v0, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSercice:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {v0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getSystemUiStateFlags()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSercice:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {v1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    iget v2, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSysuiFlags:I

    invoke-virtual {v1, v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->setSystemUiFlags(I)V

    iget-object p0, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSercice:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/TouchInteractionService;->onSystemUiFlagsChanged(I)V

    return-void
.end method

.method private static final notifyCapsuleChange$lambda$5(Landroid/os/Bundle;)V
    .registers 2

    const-string v0, "$bundle"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->onCapsuleChange(Landroid/os/Bundle;)V

    return-void
.end method

.method private static final onActiveNavBarRegionChanges$lambda$1(Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;Landroid/graphics/Region;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSercice:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->setDeferredGestureRegion(Landroid/graphics/Region;)V

    return-void
.end method

.method private static final onOverviewHidden$lambda$2(Lcom/android/launcher3/statemanager/StatefulActivity;)V
    .registers 2

    const-string v0, "null cannot be cast to non-null type com.android.quickstep.RecentsActivity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivity;->startHome()V

    return-void
.end method

.method private final updateUserLockedStateIfNeed(I)V
    .registers 5

    const-string v0, "updateUserLockedStateIfNeed: pre update isUserUnLocked: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSercice:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {v1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusOverviewProxyImpl"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSercice:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {v0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSercice:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {v0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->isKeyguardShowing(I)Z

    move-result p1

    if-nez p1, :cond_65

    iget-object p1, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSercice:Lcom/android/quickstep/TouchInteractionService;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p1

    iget-object p0, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSercice:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->setUserUnlocked(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateUserLockedStateIfNeed: update user unlock state to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    return-void
.end method


# virtual methods
.method public final applySplitScreenSecondaryBoundsChangedByOplus(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5

    const-string p0, "bounds"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "insets"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "applySplitScreenSecondaryBoundsChangedByOplus: bounds = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", insets = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QuickStep"

    const-string v1, "OplusOverviewProxyImpl"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    new-instance p0, Lcom/android/launcher3/util/WindowBounds;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/WindowBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p2, Lcom/android/wm/shell/draganddrop/b;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/draganddrop/b;-><init>(Lcom/android/launcher3/util/WindowBounds;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final getContext()Lcom/android/quickstep/TouchInteractionService;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSercice:Lcom/android/quickstep/TouchInteractionService;

    return-object p0
.end method

.method public getPreAppIcon()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusOverviewProxyImpl"

    const-string v2, "getPreAppIcon()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSercice:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;

    invoke-virtual {p0}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->onGetAppIcon()V

    return-void
.end method

.method public getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final interceptOnOverviewToggle()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSercice:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->onOverviewToggle()V

    const/4 p0, 0x1

    return p0
.end method

.method public final interceptOnSystemUiStateChanged(I)Z
    .registers 5

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->needDelayOnSystemUiStateChanged(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1f

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    new-instance v2, Landroidx/core/content/res/c;

    invoke-direct {v2, p1, p0}, Landroidx/core/content/res/c;-><init>(ILcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1f
    return v1
.end method

.method public final isOneHandedModeActivated()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSercice:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isOneHandedModeActive()Z

    move-result p0

    return p0
.end method

.method public final needDelayOnSystemUiStateChanged(I)Z
    .registers 7

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result v0

    const-string v1, "OplusOverviewProxyImpl"

    const-string v2, "QuickStep"

    if-eqz v0, :cond_1e

    const-string v0, "onSystemUiStateChanged(), sysUiFlagsStr="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->getSystemUiStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSysuiFlagChangedCallback:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_31

    return v4

    :cond_31
    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v3

    if-nez v3, :cond_3c

    return v4

    :cond_3c
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    if-nez v3, :cond_43

    return v4

    :cond_43
    invoke-virtual {v3}, Lcom/android/launcher3/OplusWorkspace;->isDismissKeyguardAnimating()Z

    move-result v3

    if-eqz v3, :cond_5d

    iput p1, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSysuiFlags:I

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSysuiFlagChangedCallback:Ljava/lang/Runnable;

    const-wide/16 v3, 0x104

    invoke-virtual {p1, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p0, "onSystemUiStateChanged(), isDismissKeyguardAnimating"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_5d
    return v4
.end method

.method public notifyCapsuleChange(Landroid/os/Bundle;)V
    .registers 3

    const-string p0, "bundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/wm/shell/onehanded/d;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/onehanded/d;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActiveNavBarRegionChanges(Landroid/graphics/Region;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActiveNavBarRegionChanges(), region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusOverviewProxyImpl"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/wm/shell/animation/c;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/animation/c;-><init>(Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;Landroid/graphics/Region;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInitialize(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->initInputMonitorWithCheck()V

    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSercice:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->executeGestureRegionChangedTransaction()V

    return-void
.end method

.method public onOverviewHidden(ZZ)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOverviewHidden(), fromAltTab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fromHomeKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusOverviewProxyImpl"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_4a

    if-eqz p2, :cond_4a

    iget-object p1, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSercice:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {p1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p1

    if-eqz p1, :cond_4a

    iget-object p0, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSercice:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result p0

    if-nez p0, :cond_4a

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p2, Lcom/android/wm/shell/common/c;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/common/c;-><init>(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_4a
    return-void
.end method

.method public abstract registerDragScrollConsumer(Lcom/android/quickstep/InputConsumer;)V
.end method

.method public switchPreApp(I)V
    .registers 5

    const-string v0, "getPreAppIcon(), side="

    const-string v1, "QuickStep"

    const-string v2, "OplusOverviewProxyImpl"

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSercice:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->onSwitchToPreAppSideGesture(I)V

    return-void
.end method

.method public switchPreAppCurvedGesture()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusOverviewProxyImpl"

    const-string v2, "switchPreAppCurvedGesture()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->mSercice:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;

    invoke-virtual {p0}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->onSwitchToPreAppCurvedGesture()V

    return-void
.end method

.method public abstract unRegisterDragScrollConsumer()V
.end method
