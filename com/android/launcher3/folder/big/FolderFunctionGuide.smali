.class public final Lcom/android/launcher3/folder/big/FolderFunctionGuide;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFolderFunctionGuide.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FolderFunctionGuide.kt\ncom/android/launcher3/folder/big/FolderFunctionGuide\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,734:1\n1855#2,2:735\n1#3:737\n*S KotlinDebug\n*F\n+ 1 FolderFunctionGuide.kt\ncom/android/launcher3/folder/big/FolderFunctionGuide\n*L\n201#1:735,2\n*E\n"
    }
.end annotation


# static fields
.field private static final BIG_FOLDER_CONVERT_TIP:Ljava/lang/String; = "big_folder_convert_tip_key"

.field private static final BIG_FOLDER_MAX_CONTENT_FOR_ONE_PAGE:I = 0x8

.field private static final BIG_FOLDER_SCROLL_TIP:Ljava/lang/String; = "big_folder_scroll_tip_key"

.field private static final BIG_FOLDER_SCROLL_TIP_DELAY:J = 0xc8L

.field private static final BIG_FOLDER_SCROLL_TIP_DELAY_3S:J = 0xbb8L

.field private static final BIG_FOLDER_SCROLL_TIP_ROTATION:F = 90.0f

.field private static final DEBUG_GUIDE:Z = false

.field private static final FOLDER_LONG_CLICK_TIP:Ljava/lang/String; = "folder_long_click_tip_key"

.field private static final FOLDER_POP_CLICK_TIP:Ljava/lang/String; = "folder_pop_click_tip_key"

.field public static final INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

.field private static final alarm:Lcom/android/launcher3/Alarm;

.field private static folder:Lcom/android/launcher3/folder/OplusFolderIcon;

.field private static folderTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

.field private static volatile hasInitial:Z

.field private static isBigFolderAddItem:Z

.field private static isCreateFolderTipShow:Z

.field private static isDisplayInfoChange:Z

.field private static isLongClickIcon:Z

.field private static isSomethingShowing:Z

.field private static isTipAutoScroll:Z

.field private static popClickTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

.field private static scrollFolder:Lcom/android/launcher3/folder/big/BigFolderIcon;

.field private static scrollFolderTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

.field private static final stateListener:Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;

.field private static tipBigFolderConvert:Z

.field private static tipBigFolderScroll:Z

.field private static tipFolderLongClick:Z

.field private static tipFolderPopClick:Z

.field private static final tipLifecycleObserver:Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-direct {v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/android/launcher3/Alarm;-><init>(ZLandroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->alarm:Lcom/android/launcher3/Alarm;

    new-instance v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;

    invoke-direct {v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipLifecycleObserver:Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;

    new-instance v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;

    invoke-direct {v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->stateListener:Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Lcom/android/launcher3/Alarm;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->checkScrollBigFolderTip$lambda$0(Landroid/view/View;Lcom/android/launcher3/Alarm;)V

    return-void
.end method

.method public static final synthetic access$getPopClickTip$p()Lcom/coui/appcompat/tooltips/COUIToolTips;
    .registers 1

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->popClickTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-object v0
.end method

.method public static final synthetic access$getScrollFolderTip$p()Lcom/coui/appcompat/tooltips/COUIToolTips;
    .registers 1

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->scrollFolderTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-object v0
.end method

.method public static final synthetic access$getStateListener$p()Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;
    .registers 1

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->stateListener:Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;

    return-object v0
.end method

.method public static final synthetic access$isTipAutoScroll$p()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isTipAutoScroll:Z

    return v0
.end method

.method public static final synthetic access$removeAnimGuideView(Lcom/android/launcher3/folder/big/FolderFunctionGuide;Lcom/android/launcher3/OplusDragLayer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->removeAnimGuideView(Lcom/android/launcher3/OplusDragLayer;)V

    return-void
.end method

.method public static final synthetic access$setScrollFolder$p(Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 1

    sput-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->scrollFolder:Lcom/android/launcher3/folder/big/BigFolderIcon;

    return-void
.end method

.method public static final synthetic access$setScrollFolderTip$p(Lcom/coui/appcompat/tooltips/COUIToolTips;)V
    .registers 1

    sput-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->scrollFolderTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-void
.end method

.method public static final synthetic access$updateAndRecordPref(Lcom/android/launcher3/folder/big/FolderFunctionGuide;Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->updateAndRecordPref(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/coui/appcompat/tooltips/COUIToolTips;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->bigFolderScrollTip$lambda$10$lambda$9(Landroid/content/Context;Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    return-void
.end method

.method private static final bigFolderCovert$lambda$8(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/Alarm;)V
    .registers 2

    const-string p1, "$bigFolder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-direct {p1, p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->bigFolderScrollTip(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    sget-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->alarm:Lcom/android/launcher3/Alarm;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    return-void
.end method

.method private final bigFolderScrollTip(Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 9

    sget-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isLongClickIcon:Z

    const-string v1, "BigFolderGuide"

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    const-string p0, "bigFolderScrollTip, but isLongClickIcon is true"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isLongClickIcon:Z

    return-void

    :cond_f
    sget-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipBigFolderScroll:Z

    if-eqz v0, :cond_a3

    sget-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isTipAutoScroll:Z

    if-nez v0, :cond_a3

    if-nez p1, :cond_1b

    goto/16 :goto_a3

    :cond_1b
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_30

    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v5

    if-nez v5, :cond_30

    move v5, v4

    goto :goto_31

    :cond_30
    move v5, v2

    :goto_31
    const-string v6, "Folder"

    if-eqz v5, :cond_3b

    const-string p0, "bigFolderScrollTip, but launcher is other state."

    invoke-static {v6, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3b
    invoke-static {}, Lcom/android/launcher3/folder/big/FolderManager;->supportBigFolder()Z

    move-result v5

    if-nez v5, :cond_42

    return-void

    :cond_42
    if-eqz v3, :cond_52

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    if-eqz v3, :cond_52

    invoke-virtual {v3}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v3

    if-ne v3, v4, :cond_52

    move v3, v4

    goto :goto_53

    :cond_52
    move v3, v2

    :goto_53
    if-eqz v3, :cond_5b

    const-string p0, "bigFolderScrollTip, but isPageInTransition."

    invoke-static {v6, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5b
    sput-object p1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->scrollFolder:Lcom/android/launcher3/folder/big/BigFolderIcon;

    new-instance v1, Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;)V

    const v3, 0x7f120139

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setArrowOverflow(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;I)V

    new-instance v2, Lcom/android/launcher/q0;

    invoke-direct {v2, v0, p1, v1}, Lcom/android/launcher/q0;-><init>(Landroid/content/Context;Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setOnCloseIconClickListener(Lcom/coui/appcompat/tooltips/COUIToolTips$OnCloseIconClickListener;)V

    sput-object v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->scrollFolderTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    sget-object v2, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipLifecycleObserver:Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;->setTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    sget-object v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->stateListener:Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;

    sget-object v2, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->scrollFolderTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;->setTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    new-instance v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide$bigFolderScrollTip$2;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide$bigFolderScrollTip$2;-><init>(Landroid/content/Context;Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->setOnScrollPageEndCallback(Lcom/android/launcher3/folder/big/BigFolderIcon$OnScrollPageEndCallback;)V

    const-string v0, "big_folder_scroll_tip_key"

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->showJsonAnim(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->snapHalfPage(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    return-void

    :cond_a3
    :goto_a3
    const-string p0, "bigFolderScrollTip, but tipBigFolderScroll="

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipBigFolderScroll:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isTipAutoScroll="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isTipAutoScroll:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " bigFolder="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_c1

    const/4 p1, 0x0

    goto :goto_c3

    :cond_c1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_c3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final bigFolderScrollTip$lambda$10$lambda$9(Landroid/content/Context;Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/coui/appcompat/tooltips/COUIToolTips;)V
    .registers 5

    const-string v0, "$this_apply"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-direct {v1, v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->removeAnimGuideView(Lcom/android/launcher3/OplusDragLayer;)V

    :cond_16
    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->snapReset(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    const-string p1, "context"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "big_folder_scroll_tip_key"

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->updateAndRecordPref(Ljava/lang/String;Landroid/content/Context;)V

    const/4 p0, 0x0

    sput-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->scrollFolder:Lcom/android/launcher3/folder/big/BigFolderIcon;

    sput-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->scrollFolderTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-virtual {p2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismiss()V

    return-void
.end method

.method public static synthetic c(Ljava/util/ArrayList;Lcom/android/launcher3/Alarm;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->checkScrollBigFolderTip$lambda$1(Ljava/util/ArrayList;Lcom/android/launcher3/Alarm;)V

    return-void
.end method

.method private final cancelScrollAnim(Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapPageValid()Z

    move-result p0

    if-eqz p0, :cond_1f

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getScrollDistance()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-nez p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    if-eqz p0, :cond_1f

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->cancelScrollAnim()V

    :cond_1f
    return-void
.end method

.method private final checkFolderIsClosed(Lcom/android/launcher3/OplusCellLayout;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_19

    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_17

    const-string v0, "getOpenFolder(it)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return p1

    :cond_17
    const/4 p0, 0x1

    return p0

    :cond_19
    return p1
.end method

.method private static final checkScrollBigFolderTip$lambda$0(Landroid/view/View;Lcom/android/launcher3/Alarm;)V
    .registers 2

    sget-object p1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-direct {p1, p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->onAlarm(Landroid/view/View;)V

    sget-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->alarm:Lcom/android/launcher3/Alarm;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    return-void
.end method

.method private static final checkScrollBigFolderTip$lambda$1(Ljava/util/ArrayList;Lcom/android/launcher3/Alarm;)V
    .registers 2

    const-string p1, "$cellLayoutList"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-direct {p1, p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->onAlarm(Ljava/util/ArrayList;)V

    sget-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->alarm:Lcom/android/launcher3/Alarm;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    return-void
.end method

.method public static synthetic d(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->folderPopClickTip$lambda$7$lambda$6(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic e(Landroid/content/Context;Lcom/coui/appcompat/tooltips/COUIToolTips;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->longClickFolderTip$lambda$5$lambda$4(Landroid/content/Context;Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/Alarm;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->bigFolderCovert$lambda$8(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/Alarm;)V

    return-void
.end method

.method private static final folderPopClickTip$lambda$7$lambda$6(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    if-eqz p0, :cond_11

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->removeAnimGuideView(Lcom/android/launcher3/OplusDragLayer;)V

    :cond_11
    const/4 p0, 0x0

    sput-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->popClickTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/OplusDragLayer;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->removeAnimGuideView$lambda$22(Lcom/android/launcher3/OplusDragLayer;Landroid/view/View;)V

    return-void
.end method

.method private final getBigFolderIcon(Lcom/android/launcher3/OplusCellLayout;)Lcom/android/launcher3/folder/big/BigFolderIcon;
    .registers 9

    const-string v0, "BigFolderGuide"

    const-string v1, "getBigFolderIcon."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/folder/big/FolderManager;->supportBigFolder()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    const-string/jumbo p0, "supportBigFolder()=false."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_15
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v1

    if-ne v1, v4, :cond_2f

    move v1, v4

    goto :goto_30

    :cond_2f
    move v1, v3

    :goto_30
    if-eqz v1, :cond_38

    const-string p0, "getBigFolderIcon, but isPageInTransition."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_38
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->checkFolderIsClosed(Lcom/android/launcher3/OplusCellLayout;)Z

    move-result p0

    if-nez p0, :cond_44

    const-string p0, "getBigFolderIcon, but there is opened or animating folder."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_44
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    if-eqz p0, :cond_ae

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v0, v3

    :goto_4f
    if-ge v0, p1, :cond_ae

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5c

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    goto :goto_5d

    :cond_5c
    move-object v1, v2

    :goto_5d
    instance-of v5, v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v5, :cond_64

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_65

    :cond_64
    move-object v1, v2

    :goto_65
    if-eqz v1, :cond_ab

    iget v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_ab

    iget v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-le v5, v4, :cond_ab

    instance-of v5, v1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v5, :cond_77

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo;

    goto :goto_78

    :cond_77
    move-object v1, v2

    :goto_78
    if-nez v1, :cond_7b

    return-object v2

    :cond_7b
    iget-object v5, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    const/16 v6, 0x8

    if-le v5, v6, :cond_87

    move v5, v4

    goto :goto_88

    :cond_87
    move v5, v3

    :goto_88
    if-eqz v5, :cond_8b

    goto :goto_8c

    :cond_8b
    move-object v1, v2

    :goto_8c
    if-eqz v1, :cond_ab

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v5, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIcon"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconPageNum()I

    move-result v5

    if-le v5, v4, :cond_a2

    move v5, v4

    goto :goto_a3

    :cond_a2
    move v5, v3

    :goto_a3
    if-eqz v5, :cond_a7

    move-object v5, v1

    goto :goto_a8

    :cond_a7
    move-object v5, v2

    :goto_a8
    if-eqz v5, :cond_ab

    return-object v1

    :cond_ab
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    :cond_ae
    return-object v2
.end method

.method private final getFirstFolderIcon(Lcom/android/launcher3/OplusCellLayout;)Lcom/android/launcher3/folder/OplusFolderIcon;
    .registers 8

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_3f

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_e
    if-ge v0, v1, :cond_3f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1c

    :cond_1b
    move-object v3, p1

    :goto_1c
    instance-of v4, v3, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_23

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_24

    :cond_23
    move-object v3, p1

    :goto_24
    if-eqz v3, :cond_3c

    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3c

    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne v3, v2, :cond_3c

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const-string/jumbo p1, "null cannot be cast to non-null type com.android.launcher3.folder.OplusFolderIcon"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    return-object p0

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_3f
    return-object p1
.end method

.method private final isRecentsAniming(Landroid/view/View;)Z
    .registers 3

    const/4 p0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_9

    :cond_8
    move-object p1, p0

    :goto_9
    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncherOrNull(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/LauncherRecentsView;

    :cond_15
    const/4 p1, 0x0

    if-nez p0, :cond_19

    return p1

    :cond_19
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRecentAnimateDragging()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSpringAnimToRecent()Z

    move-result p0

    if-eqz p0, :cond_26

    :cond_25
    const/4 p1, 0x1

    :cond_26
    return p1
.end method

.method private static final longClickFolderTip$lambda$5$lambda$4(Landroid/content/Context;Lcom/coui/appcompat/tooltips/COUIToolTips;)V
    .registers 4

    const-string v0, "$this_apply"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-direct {v1, v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->removeAnimGuideView(Lcom/android/launcher3/OplusDragLayer;)V

    :cond_16
    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "folder_long_click_tip_key"

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->updateAndRecordPref(Ljava/lang/String;Landroid/content/Context;)V

    const/4 p0, 0x0

    sput-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->folderTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    sput-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->folder:Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismiss()V

    return-void
.end method

.method private final onAlarm(Landroid/view/View;)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    if-nez v1, :cond_10

    return-void

    :cond_10
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isBigFolderAddItem:Z

    sput-boolean v3, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isDisplayInfoChange:Z

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v3

    const-string v4, "BigFolderGuide"

    if-eqz v3, :cond_27

    const-string p0, "checkScrollBigFolderTip, but isPageInTransition"

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_27
    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-nez v3, :cond_35

    const-string p0, "checkScrollBigFolderTip, but is not normal"

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_35
    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v1

    if-nez v1, :cond_41

    const-string p0, "checkScrollBigFolderTip, but is not resume"

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_41
    sget-object v1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getLauncherFinishBindFlag()Z

    move-result v1

    if-nez v1, :cond_4f

    const-string p0, "checkScrollBigFolderTip, but is launcher doesn\'t finish bind"

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4f
    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    instance-of v1, p1, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v1, :cond_64

    check-cast p1, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_65

    :cond_64
    move-object p1, v0

    :goto_65
    if-eqz p1, :cond_6b

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->getBigFolderIcon(Lcom/android/launcher3/OplusCellLayout;)Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object v0

    :cond_6b
    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->bigFolderScrollTip(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    :cond_6e
    return-void
.end method

.method private final onAlarm(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_17

    :cond_16
    move-object v0, v1

    :goto_17
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    sput-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isBigFolderAddItem:Z

    sput-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isDisplayInfoChange:Z

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p0

    const-string v3, "BigFolderGuide"

    if-eqz p0, :cond_34

    const-string p0, "checkScrollBigFolderTip, but isPageInTransition"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_34
    sget-object p0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-nez p0, :cond_42

    const-string p0, "checkScrollBigFolderTip, but is not normal"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_42
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result p0

    if-nez p0, :cond_4e

    const-string p0, "checkScrollBigFolderTip, but is not resume"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4e
    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getLauncherFinishBindFlag()Z

    move-result p0

    if-nez p0, :cond_5c

    const-string p0, "checkScrollBigFolderTip, but is launcher doesn\'t finish bind"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5c
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusDragLayer;->getIsBracketSpaceRunning()Z

    move-result p0

    if-eqz p0, :cond_6c

    const-string p0, "checkScrollBigFolderTip, but bracket space is running"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6c
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_70
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_7f

    return-void

    :cond_7f
    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    :cond_9d
    instance-of v0, p1, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v0, :cond_a4

    check-cast p1, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_a5

    :cond_a4
    move-object p1, v1

    :goto_a5
    if-eqz p1, :cond_70

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-direct {v0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->getBigFolderIcon(Lcom/android/launcher3/OplusCellLayout;)Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object p1

    if-eqz p1, :cond_70

    invoke-direct {v0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->bigFolderScrollTip(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    :cond_b2
    return-void
.end method

.method private final removeAnimGuideView(Lcom/android/launcher3/OplusDragLayer;)V
    .registers 4

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isSomethingShowing:Z

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_9
    const/4 v0, -0x1

    if-ge v0, p0, :cond_20

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz v1, :cond_1d

    new-instance p0, Lcom/android/launcher/widget/a;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/widget/a;-><init>(Lcom/android/launcher3/OplusDragLayer;Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_20

    :cond_1d
    add-int/lit8 p0, p0, -0x1

    goto :goto_9

    :cond_20
    :goto_20
    return-void
.end method

.method private static final removeAnimGuideView$lambda$22(Lcom/android/launcher3/OplusDragLayer;Landroid/view/View;)V
    .registers 3

    const-string v0, "$this_removeAnimGuideView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusDragLayer;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private final showJsonAnim(Landroid/view/View;Ljava/lang/String;)V
    .registers 13

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isSomethingShowing:Z

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    if-nez v1, :cond_16

    return-void

    :cond_16
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    new-instance v3, Lcom/oplus/anim/EffectiveAnimationView;

    invoke-direct {v3, v1}, Lcom/oplus/anim/EffectiveAnimationView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x5e2a29fb

    const/4 v6, 0x0

    const-string v7, "BigFolderGuide"

    if-eq v4, v5, :cond_fd

    const v5, -0x2da73d83

    const-string v8, "dragLayer"

    const v9, 0x7f0701b8

    if-eq v4, v5, :cond_ab

    const v5, -0x1a15a0c5

    if-eq v4, v5, :cond_44

    goto/16 :goto_105

    :cond_44
    const-string v4, "big_folder_scroll_tip_key"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    goto/16 :goto_105

    :cond_4e
    instance-of p2, p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz p2, :cond_55

    move-object v6, p1

    check-cast v6, Lcom/android/launcher3/folder/big/BigFolderIcon;

    :cond_55
    if-nez v6, :cond_58

    return-void

    :cond_58
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const p2, 0x7f0701bb

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    new-instance v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getBgRectInDragLayer(Lcom/android/launcher3/dragndrop/DragLayer;)Landroid/graphics/Rect;

    move-result-object v4

    if-nez v4, :cond_78

    const-string/jumbo p0, "showJsonAnim, error: BIG_FOLDER_SCROLL_TIP -> position is null"

    invoke-static {v7, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_78
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v5, p2

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eqz v1, :cond_8f

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int/2addr p2, v4

    div-int/lit8 p1, p1, 0x2

    goto :goto_95

    :cond_8f
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    div-int/lit8 p1, p1, 0x2

    :goto_95
    sub-int/2addr p2, p1

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    const p1, 0x7f110005

    invoke-virtual {v3, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    if-eqz v1, :cond_a4

    const/high16 p1, -0x3d4c0000  # -90.0f

    goto :goto_a6

    :cond_a4
    const/high16 p1, 0x42b40000  # 90.0f

    :goto_a6
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setRotation(F)V

    goto/16 :goto_167

    :cond_ab
    const-string v4, "big_folder_convert_tip_key"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b4

    goto :goto_105

    :cond_b4
    instance-of p2, p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz p2, :cond_bb

    move-object v6, p1

    check-cast v6, Lcom/android/launcher3/folder/big/BigFolderIcon;

    :cond_bb
    if-nez v6, :cond_be

    return-void

    :cond_be
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    new-instance v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-direct {v0, p1, p1}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getBgRectInDragLayer(Lcom/android/launcher3/dragndrop/DragLayer;)Landroid/graphics/Rect;

    move-result-object p2

    if-nez p2, :cond_d7

    const-string/jumbo p0, "showJsonAnim, error: BIG_FOLDER_CONVERT_TIP -> position is null"

    invoke-static {v7, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d7
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v4, p1

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eqz v1, :cond_ed

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    sub-int/2addr v1, p2

    sub-int/2addr v1, p1

    goto :goto_f3

    :cond_ed
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    sub-int v1, p2, p1

    :goto_f3
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    const p1, 0x7f110004

    invoke-virtual {v3, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    goto :goto_167

    :cond_fd
    const-string v4, "folder_pop_click_tip_key"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11d

    :goto_105
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "showJsonAnim, error key: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Folder"

    invoke-static {p1, v7, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11d
    instance-of p2, p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz p2, :cond_124

    move-object v6, p1

    check-cast v6, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    :cond_124
    if-nez v6, :cond_127

    return-void

    :cond_127
    const p1, 0x7f0701b9

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    new-instance p2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-direct {p2, p1, p1}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v6, v4}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    const v5, 0x7f0701ba

    if-eqz v1, :cond_151

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget v6, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, p1

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr v6, p1

    sub-int/2addr v1, v6

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_15c

    :cond_151
    iget v1, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    :goto_15c
    iget p1, v4, Landroid/graphics/Rect;->top:I

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const p1, 0x7f110003

    invoke-virtual {v3, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    move-object v0, p2

    :goto_167
    const/4 p1, -0x1

    invoke-virtual {v3, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    iput-boolean p0, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    invoke-virtual {v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    return-void
.end method

.method private final updateAndRecordPref(Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    invoke-static {p2}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x0

    sparse-switch p2, :sswitch_data_64

    goto :goto_49

    :sswitch_d
    const-string p2, "folder_long_click_tip_key"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_49

    :cond_16
    sput-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipFolderLongClick:Z

    invoke-virtual {p0, p2, v0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->putBooleanPref(Ljava/lang/String;Z)V

    goto :goto_62

    :sswitch_1c
    const-string p2, "big_folder_scroll_tip_key"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_49

    :cond_25
    sput-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipBigFolderScroll:Z

    invoke-virtual {p0, p2, v0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->putBooleanPref(Ljava/lang/String;Z)V

    goto :goto_62

    :sswitch_2b
    const-string p2, "big_folder_convert_tip_key"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    goto :goto_49

    :cond_34
    sput-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipBigFolderConvert:Z

    invoke-virtual {p0, p2, v0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->putBooleanPref(Ljava/lang/String;Z)V

    goto :goto_62

    :sswitch_3a
    const-string p2, "folder_pop_click_tip_key"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    goto :goto_49

    :cond_43
    sput-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipFolderPopClick:Z

    invoke-virtual {p0, p2, v0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->putBooleanPref(Ljava/lang/String;Z)V

    goto :goto_62

    :goto_49
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateAndRecordPref, error key: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Folder"

    const-string p2, "BigFolderGuide"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_62
    return-void

    nop

    :sswitch_data_64
    .sparse-switch
        -0x5e2a29fb -> :sswitch_3a
        -0x2da73d83 -> :sswitch_2b
        -0x1a15a0c5 -> :sswitch_1c
        0x430183f2 -> :sswitch_d
    .end sparse-switch
.end method


# virtual methods
.method public final bigFolderCovert(Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 4

    const-string p0, "bigFolder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconPageNum()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_1b

    sget-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->alarm:Lcom/android/launcher3/Alarm;

    new-instance v0, Lcom/android/launcher/folder/download/f;

    invoke-direct {v0, p1}, Lcom/android/launcher/folder/download/f;-><init>(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    :cond_1b
    return-void
.end method

.method public final checkAndHideScrollFolderTip()V
    .registers 6

    const-string v0, "BigFolderGuide"

    const-string v1, "checkAndHideScrollFolderTip"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->alarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    sget-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isTipAutoScroll:Z

    const-string v2, "dragLayer"

    const/4 v3, 0x0

    if-eqz v0, :cond_59

    sput-boolean v3, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isTipAutoScroll:Z

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->scrollFolder:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_23

    :cond_22
    move-object v0, v1

    :goto_23
    if-eqz v0, :cond_39

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    if-eqz v0, :cond_39

    sget-object v4, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->removeAnimGuideView(Lcom/android/launcher3/OplusDragLayer;)V

    :cond_39
    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->scrollFolderTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismissImmediately()V

    :cond_40
    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->scrollFolder:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_47

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->cancelScrollAnim(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    :cond_47
    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->scrollFolder:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_4e

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->setOnScrollPageEndCallback(Lcom/android/launcher3/folder/big/BigFolderIcon$OnScrollPageEndCallback;)V

    :cond_4e
    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->scrollFolder:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_55

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->snapReset(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    :cond_55
    sput-object v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->scrollFolderTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    sput-object v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->scrollFolder:Lcom/android/launcher3/folder/big/BigFolderIcon;

    :cond_59
    sget-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isCreateFolderTipShow:Z

    if-eqz p0, :cond_8a

    sput-boolean v3, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isCreateFolderTipShow:Z

    sget-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->folder:Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz p0, :cond_68

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_69

    :cond_68
    move-object p0, v1

    :goto_69
    if-eqz p0, :cond_7f

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    if-eqz p0, :cond_7f

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    if-eqz p0, :cond_7f

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->removeAnimGuideView(Lcom/android/launcher3/OplusDragLayer;)V

    :cond_7f
    sget-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->folderTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-eqz p0, :cond_86

    invoke-virtual {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismissImmediately()V

    :cond_86
    sput-object v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->folderTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    sput-object v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->folder:Lcom/android/launcher3/folder/OplusFolderIcon;

    :cond_8a
    return-void
.end method

.method public final checkScrollBigFolderTip(Landroid/view/View;Z)V
    .registers 4

    sget-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipBigFolderScroll:Z

    if-eqz v0, :cond_4e

    if-eqz p1, :cond_4e

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isRecentsAniming(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_4e

    if-eqz p2, :cond_f

    goto :goto_4e

    :cond_f
    const-string p0, "checkScrollBigFolderTip, screenId = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    instance-of p2, p1, Lcom/android/launcher3/CellLayout;

    const/4 v0, 0x0

    if-eqz p2, :cond_1e

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/CellLayout;

    goto :goto_1f

    :cond_1e
    move-object p2, v0

    :goto_1f
    if-eqz p2, :cond_29

    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->getScreenId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_29
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "BigFolderGuide"

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->alarm:Lcom/android/launcher3/Alarm;

    new-instance p2, Lcom/android/launcher3/card/i;

    invoke-direct {p2, p1}, Lcom/android/launcher3/card/i;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    sget-boolean p1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isBigFolderAddItem:Z

    if-eqz p1, :cond_49

    const-wide/16 p1, 0xbb8

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    goto :goto_4e

    :cond_49
    const-wide/16 p1, 0xc8

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public final checkScrollBigFolderTip(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cellLayoutList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipBigFolderScroll:Z

    if-eqz v0, :cond_3d

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isRecentsAniming(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_3d

    :cond_1d
    const-string p0, "BigFolderGuide"

    const-string v0, "checkScrollBigFolderTip with cell layout list"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->alarm:Lcom/android/launcher3/Alarm;

    new-instance v0, Lcom/android/launcher3/folder/big/f;

    invoke-direct {v0, p1}, Lcom/android/launcher3/folder/big/f;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    sget-boolean p1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isBigFolderAddItem:Z

    if-eqz p1, :cond_38

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    goto :goto_3d

    :cond_38
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public final disableLongClickIconFlag()V
    .registers 1

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isLongClickIcon:Z

    return-void
.end method

.method public final folderPopClickTip(Landroid/view/View;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    sget-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipFolderPopClick:Z

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-static {}, Lcom/android/launcher3/folder/big/FolderManager;->supportBigFolder()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v1

    if-ne v1, v3, :cond_28

    move v2, v3

    :cond_28
    if-eqz v2, :cond_34

    const-string p0, "Folder"

    const-string p1, "BigFolderGuide"

    const-string v0, "folderPopClickTip, but isPageInTransition."

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_34
    new-instance v1, Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120273

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setDismissOnTouchOutside(Z)V

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;I)V

    new-instance v2, Lcom/android/launcher3/folder/big/e;

    invoke-direct {v2, v0}, Lcom/android/launcher3/folder/big/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    sput-object v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->popClickTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    sget-object v2, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipLifecycleObserver:Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;->setTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    sget-object v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->stateListener:Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;

    sget-object v2, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->popClickTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;->setTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    new-instance v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide$folderPopClickTip$2;

    invoke-direct {v1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide$folderPopClickTip$2;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const-string v1, "folder_pop_click_tip_key"

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->showJsonAnim(Landroid/view/View;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->updateAndRecordPref(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public final getLifecycleObserver()Lcom/android/launcher/ILauncherLifecycleObserver;
    .registers 1

    sget-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipLifecycleObserver:Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;

    return-object p0
.end method

.method public final hasShowAllGuide()Z
    .registers 2

    sget-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipFolderLongClick:Z

    sget-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipFolderPopClick:Z

    or-int/2addr p0, v0

    sget-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipBigFolderConvert:Z

    or-int/2addr p0, v0

    sget-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipBigFolderScroll:Z

    or-int/2addr p0, v0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final hidePopClickTip()V
    .registers 3

    sget-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->popClickTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_d

    :cond_c
    move-object p0, v0

    :goto_d
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismissImmediately()V

    :cond_12
    sput-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->popClickTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-void
.end method

.method public final declared-synchronized init(Landroid/content/Context;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->hasInitial:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_39

    if-eqz v0, :cond_c

    monitor-exit p0

    return-void

    :cond_c
    const/4 v0, 0x1

    :try_start_d
    sput-boolean v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->hasInitial:Z

    invoke-static {p1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object p1

    invoke-static {}, Lcom/android/launcher3/folder/big/FolderManager;->supportBigFolder()Z

    move-result v0

    const-string v1, "folder_long_click_tip_key"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getBooleanPref(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipFolderLongClick:Z

    const-string v1, "folder_pop_click_tip_key"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getBooleanPref(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipFolderPopClick:Z

    const-string v1, "big_folder_convert_tip_key"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getBooleanPref(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipBigFolderConvert:Z

    const-string v1, "big_folder_scroll_tip_key"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getBooleanPref(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipBigFolderScroll:Z
    :try_end_37
    .catchall {:try_start_d .. :try_end_37} :catchall_39

    monitor-exit p0

    return-void

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final isSomethingShowing()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isSomethingShowing:Z

    return p0
.end method

.method public final longClickFolderTip(Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 13

    sget-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isCreateFolderTipShow:Z

    const-string v0, "BigFolderGuide"

    const-string v1, "Folder"

    if-eqz p0, :cond_e

    const-string p0, "longClickFolderTip, the folder has been created prompt is displayed, return."

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    if-nez p1, :cond_16

    const-string p0, "longClickFolderTip, the folder icon is null, return."

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    invoke-static {}, Lcom/android/launcher3/folder/big/FolderManager;->supportBigFolder()Z

    move-result p0

    if-nez p0, :cond_22

    const-string p0, "longClickFolderTip, big folder is not supported, return."

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_22
    sget-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipFolderLongClick:Z

    if-nez p0, :cond_2c

    const-string p0, "longClickFolderTip, already prompted to press and hold the folder, return."

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2c
    invoke-static {}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isPopupDismissed()Z

    move-result p0

    if-nez p0, :cond_38

    const-string p0, "longClickFolderTip, long press to pop up the shortcut panel is displayed, return."

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_38
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    if-nez v2, :cond_43

    return-void

    :cond_43
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_53

    invoke-virtual {v3}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v3

    if-ne v3, v4, :cond_53

    move v3, v4

    goto :goto_54

    :cond_53
    move v3, v5

    :goto_54
    if-eqz v3, :cond_5c

    const-string p0, "longClickFolderTip, but isPageInTransition"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5c
    sget-object v3, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-nez v3, :cond_6f

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-eqz v3, :cond_6d

    goto :goto_6f

    :cond_6d
    move v3, v5

    goto :goto_70

    :cond_6f
    :goto_6f
    move v3, v4

    :goto_70
    if-nez v3, :cond_78

    const-string p0, "longClickFolderTip, the state of displaying bubble tips is not supported, return."

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_78
    invoke-static {v2}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v3

    if-eqz v3, :cond_84

    const-string p0, "longClickFolderTip, the folder is open, return."

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_84
    sput-object p1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->folder:Lcom/android/launcher3/folder/OplusFolderIcon;

    new-instance v0, Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12026b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    new-instance v1, Lcom/android/launcher/x;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher/x;-><init>(Landroid/content/Context;Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setOnCloseIconClickListener(Lcom/coui/appcompat/tooltips/COUIToolTips$OnCloseIconClickListener;)V

    sget-object p0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_f2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result p0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float p0, p0, v1

    if-nez p0, :cond_be

    move p0, v4

    goto :goto_bf

    :cond_be
    move p0, v5

    :goto_bf
    if-nez p0, :cond_f2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result p0

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v3

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;I)V

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setScaleY(F)V

    goto :goto_117

    :cond_f2
    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-nez p0, :cond_10e

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p0

    if-nez p0, :cond_10e

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v1

    sub-int/2addr p0, v1

    neg-int v5, p0

    :cond_10e
    move v10, v5

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v5, v0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;IZII)V

    :goto_117
    sput-boolean v4, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isCreateFolderTipShow:Z

    sput-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->folderTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    sget-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipLifecycleObserver:Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;->setTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    sget-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->stateListener:Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;

    sget-object p1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->folderTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;->setTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    return-void
.end method

.method public final reset()V
    .registers 1

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isTipAutoScroll:Z

    sput-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isCreateFolderTipShow:Z

    sput-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isLongClickIcon:Z

    sput-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isBigFolderAddItem:Z

    sput-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isDisplayInfoChange:Z

    const/4 p0, 0x0

    sput-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->scrollFolder:Lcom/android/launcher3/folder/big/BigFolderIcon;

    sput-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->scrollFolderTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    sput-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->folder:Lcom/android/launcher3/folder/OplusFolderIcon;

    sput-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->folderTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    sput-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->popClickTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-void
.end method

.method public final resetInitState()V
    .registers 1

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->hasInitial:Z

    return-void
.end method

.method public final setBigFolderAddItemFlag()V
    .registers 1

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isBigFolderAddItem:Z

    return-void
.end method

.method public final setLongClickIconFlag()V
    .registers 1

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isLongClickIcon:Z

    return-void
.end method

.method public final setSomethingShowing(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isSomethingShowing:Z

    return-void
.end method

.method public final snapHalfPage(Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 2

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapPageValid()Z

    move-result p0

    if-eqz p0, :cond_19

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapHalfPage()V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isTipAutoScroll:Z

    :cond_19
    return-void
.end method

.method public final snapReset(Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 4

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapPageValid()Z

    move-result p0

    if-eqz p0, :cond_28

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getScrollDistance()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1c

    move p0, v0

    goto :goto_1d

    :cond_1c
    move p0, v1

    :goto_1d
    if-nez p0, :cond_28

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPage(IZ)V

    sput-boolean v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isTipAutoScroll:Z

    :cond_28
    return-void
.end method

.method public final updateAndRecordCreateFolderTipsPref(I)V
    .registers 5

    const-string p0, "folder.id = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->folder:Lcom/android/launcher3/folder/OplusFolderIcon;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_15

    :cond_14
    move-object v0, v1

    :goto_15
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", input id = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BigFolderGuide"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isCreateFolderTipShow:Z

    if-eqz p0, :cond_71

    sget-boolean p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->tipFolderLongClick:Z

    if-eqz p0, :cond_71

    sget-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->folder:Lcom/android/launcher3/folder/OplusFolderIcon;

    const/4 v0, 0x0

    if-eqz p0, :cond_3d

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getId()I

    move-result p0

    if-ne p0, p1, :cond_3d

    const/4 v0, 0x1

    :cond_3d
    if-eqz v0, :cond_71

    sget-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->folder:Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz p0, :cond_71

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_71

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    if-eqz p1, :cond_5f

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    if-eqz p1, :cond_5f

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    const-string v2, "dragLayer"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->removeAnimGuideView(Lcom/android/launcher3/OplusDragLayer;)V

    :cond_5f
    sget-object p1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    const-string v0, "folder_long_click_tip_key"

    invoke-direct {p1, v0, p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->updateAndRecordPref(Ljava/lang/String;Landroid/content/Context;)V

    sget-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->folderTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-eqz p0, :cond_6d

    invoke-virtual {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismissImmediately()V

    :cond_6d
    sput-object v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->folder:Lcom/android/launcher3/folder/OplusFolderIcon;

    sput-object v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->folderTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    :cond_71
    return-void
.end method
