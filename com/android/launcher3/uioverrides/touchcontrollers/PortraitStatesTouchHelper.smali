.class public final Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchHelper;

.field public static final TAG:Ljava/lang/String; = "PortraitStatesTouchHelper"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchHelper;

    invoke-direct {v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchHelper;->INSTANCE:Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isTouchFastScroller(Lcom/android/launcher3/Launcher;Landroid/view/MotionEvent;)Z
    .registers 3

    sget-object p0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_1e

    :cond_a
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    const-string/jumbo p1, "null cannot be cast to non-null type com.android.launcher3.allapps.OplusLauncherAllAppsContainerView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getScrollHelper()Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->isHitInParent(Landroid/view/MotionEvent;)Z

    move-result p0

    :goto_1e
    return p0
.end method

.method private final isTouchScrollWidgetInDrawerMode(Lcom/android/launcher3/Launcher;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p0

    if-eqz p0, :cond_26

    sget-object p0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-nez p0, :cond_26

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/OplusWorkspace;->isTouchScrollAppWidget(FF)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final injectCanInterceptTouch(Lcom/android/launcher3/Launcher;Landroid/view/MotionEvent;)Z
    .registers 12

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ev"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->isBeginPageTransFromWidgetInDrawer()Z

    move-result v0

    if-nez v0, :cond_22

    move v0, v1

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchHelper;->isTouchFastScroller(Lcom/android/launcher3/Launcher;Landroid/view/MotionEvent;)Z

    move-result v4

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchHelper;->isTouchScrollWidgetInDrawerMode(Lcom/android/launcher3/Launcher;Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-static {}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->getState()I

    move-result v5

    if-nez v5, :cond_3b

    move v5, v1

    goto :goto_3c

    :cond_3b
    move v5, v2

    :goto_3c
    sget-object v6, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v6}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->isOpeningAnim()Z

    move-result v6

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderExtImplV2;->getCurrentFolder(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    if-eqz p1, :cond_58

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    if-eqz p1, :cond_58

    invoke-interface {p1}, Lcom/android/launcher3/folder/IFolderExt;->isAnimating()Z

    move-result p1

    if-ne p1, v1, :cond_58

    move p1, v1

    goto :goto_59

    :cond_58
    move p1, v2

    :goto_59
    if-nez p0, :cond_69

    if-nez v0, :cond_69

    if-nez v3, :cond_69

    if-nez v4, :cond_69

    if-nez v6, :cond_69

    if-nez p1, :cond_69

    if-eqz v5, :cond_68

    goto :goto_69

    :cond_68
    move v1, v2

    :cond_69
    :goto_69
    if-eqz v1, :cond_a0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAlwayson()Z

    move-result v0

    if-eqz v0, :cond_a0

    sget-object v0, Lcom/android/common/TouchLogger;->Companion:Lcom/android/common/TouchLogger$Companion;

    invoke-virtual {v0}, Lcom/android/common/TouchLogger$Companion;->getINSTANCE()Lcom/android/common/TouchLogger;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const-string v2, "isSwitchingState = "

    const-string v7, ", ， isTouchScroller = "

    const-string v8, ", isTouchScrollWidget = "

    invoke-static {v2, v3, v7, v4, v8}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isOpenAnimatingForbid = "

    const-string v4, ", isFolderOpening = "

    invoke-static {v2, p0, v3, v6, v4}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", isLocateIcon = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TouchIntercept::PortraitStatesTouchHelper"

    invoke-virtual {v0, p2, p1, p0}, Lcom/android/common/TouchLogger;->debug(ILjava/lang/String;Ljava/lang/String;)V

    :cond_a0
    return v1
.end method
