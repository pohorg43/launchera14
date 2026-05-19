.class public final Lcom/android/launcher3/taskbar/TaskbarUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarUtils$ILauncherAvailableObserver;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTaskbarUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskbarUtils.kt\ncom/android/launcher3/taskbar/TaskbarUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 SparseArray.kt\nandroidx/core/util/SparseArrayKt\n*L\n1#1,1164:1\n1855#2,2:1165\n76#3,4:1167\n*S KotlinDebug\n*F\n+ 1 TaskbarUtils.kt\ncom/android/launcher3/taskbar/TaskbarUtils\n*L\n171#1:1165,2\n962#1:1167,4\n*E\n"
    }
.end annotation


# static fields
.field private static final BOTTOM_RECT_WIDTH:I = 0x14

.field private static final EFFECT_RECENT_TASK_FEEDBACK:I = 0x16f

.field public static final EXTRA_TASK_BAR_RECT:Ljava/lang/String; = "android.intent.extra.TASK_BAR_RECT"

.field public static final INSTANCE:Lcom/android/launcher3/taskbar/TaskbarUtils;

.field private static final NOTIFY_START_DRAG_TO_SPLIT_SCREEN_ACTION:Ljava/lang/String; = "com.oplus.smartsidebar.action.DismissExpandingPanel"

.field private static final PREF_KEY_TASKBAR_TODAY_ISLONGPRESS:Ljava/lang/String; = "sp_key_taskbar_today_islongpress"

.field private static final TAG:Ljava/lang/String; = "TaskbarUtils"

.field private static volatile inHideTaskbarOrNotOccludesWindow:Z

.field private static inPreStageOfGestureRecentsAnimation:Z

.field private static final isHideTaskbarWindowOnSmallScreen$delegate:Lh4/f;

.field public static isLauncherDestroyed:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static isRecentReverseScene:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static final isTaskbarWindowUseSpecHeight$delegate:Lh4/f;

.field private static final launcherAvailableObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/taskbar/TaskbarUtils$ILauncherAvailableObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static mTaskSettingActivityName:Ljava/lang/String;

.field private static final sGestureToHomeWatcher:Lcom/android/launcher3/taskbar/AnimatorWatcher;

.field private static willFinishToHome:Ljava/lang/Boolean;

.field private static zoomWindowPkg:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarUtils;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarUtils;->INSTANCE:Lcom/android/launcher3/taskbar/TaskbarUtils;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarUtils;->launcherAvailableObservers:Ljava/util/List;

    const-string v0, ""

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarUtils;->mTaskSettingActivityName:Ljava/lang/String;

    new-instance v0, Lcom/android/launcher3/taskbar/AnimatorWatcher;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/AnimatorWatcher;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarUtils;->sGestureToHomeWatcher:Lcom/android/launcher3/taskbar/AnimatorWatcher;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarUtils$isTaskbarWindowUseSpecHeight$2;->INSTANCE:Lcom/android/launcher3/taskbar/TaskbarUtils$isTaskbarWindowUseSpecHeight$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarUtils;->isTaskbarWindowUseSpecHeight$delegate:Lh4/f;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarUtils$isHideTaskbarWindowOnSmallScreen$2;->INSTANCE:Lcom/android/launcher3/taskbar/TaskbarUtils$isHideTaskbarWindowOnSmallScreen$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarUtils;->isHideTaskbarWindowOnSmallScreen$delegate:Lh4/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->onClickNavVibrate$lambda$1(Landroid/content/Context;)V

    return-void
.end method

.method public static final addAllAppsVisibilityChangeListener(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OnTaskbarAllAppsVisibilityChangeListener;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getActivityContext(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object p0

    if-nez p0, :cond_c

    return-void

    :cond_c
    instance-of v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_1c

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getAllAppsController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    move-result-object p0

    if-eqz p0, :cond_31

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->addVisibilityChangeListener(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OnTaskbarAllAppsVisibilityChangeListener;)V

    goto :goto_31

    :cond_1c
    instance-of p0, p0, Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_31

    sget-object p0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->INSTANCE:Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->getLauncherActivityContext()Lcom/android/launcher3/taskbar/LauncherActivityContext;

    move-result-object p0

    if-eqz p0, :cond_31

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/LauncherActivityContext;->getAllAppsController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    move-result-object p0

    if-eqz p0, :cond_31

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->addVisibilityChangeListener(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OnTaskbarAllAppsVisibilityChangeListener;)V

    :cond_31
    :goto_31
    return-void
.end method

.method public static final addObserverForObtainLauncher(Lcom/android/launcher3/taskbar/TaskbarUtils$ILauncherAvailableObserver;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "observer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarUtils;->launcherAvailableObservers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final addViewCompat(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "toAddView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3a

    const-string v1, "addViewCompat toAddView already has parent before add. parent: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/common/debug/LogUtils;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " toAddView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/common/debug/LogUtils;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskbarUtils"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3a
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static final applyTaskbarAllAppsRecyclerViewPadding(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/AlphabeticalAppsList;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/AllAppsRecyclerView;",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "*>;II)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "recyclerView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appsList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c27

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c25

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {p0, v1, p3, v0, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_3d

    :cond_3a
    invoke-virtual {p0, v0, p3, v1, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_3d
    const-string p3, "applyTaskbarAllAppsRecyclerViewPadding paddingLeft: "

    const-string v3, ", paddingRight: "

    const-string v4, ", paddingBottom: "

    invoke-static {p3, v0, v3, v1, v4}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "TaskbarUtils"

    invoke-static {v0, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    instance-of p3, p3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p3, :cond_8f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    const-string/jumbo v1, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    instance-of v1, p1, Lcom/android/launcher3/taskbar/allapps/TaskbarAlphabeticalAppsList;

    if-eqz v1, :cond_82

    check-cast p1, Lcom/android/launcher3/taskbar/allapps/TaskbarAlphabeticalAppsList;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAlphabeticalAppsList;->isNeedAddAllAppsHeader()Z

    move-result p1

    if-nez p1, :cond_82

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070c24

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, p2

    iput p0, p3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_84

    :cond_82
    iput p2, p3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_84
    const-string p0, "applyTaskbarAllAppsRecyclerViewPadding topMargin: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, p3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {p0, p1, v0}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_8f
    return-void
.end method

.method public static final cacheWindowOnDestroy(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    :cond_d
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isHideTaskbarWindowOnSmallScreen()Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarSettingEnable()Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method public static final canLongClickInGameMode()Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isDisableTaskbarLongClickToStash()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresent()Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    if-nez v0, :cond_16

    return v1

    :cond_16
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getSystemUiStateFlags()I

    move-result v0

    const/4 v2, 0x2

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-nez v0, :cond_21

    move v0, v3

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v4

    if-eqz v4, :cond_33

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarStashController()Lcom/android/launcher3/taskbar/TaskbarStashController;

    move-result-object v4

    if-eqz v4, :cond_33

    invoke-virtual {v4, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v2

    goto :goto_34

    :cond_33
    move v2, v1

    :goto_34
    if-eqz v2, :cond_39

    if-eqz v0, :cond_39

    move v1, v3

    :cond_39
    return v1
.end method

.method public static final createDividerItem(II)Lcom/android/launcher3/model/data/ItemInfo;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v0, 0xcb

    if-eq p0, v0, :cond_16

    const/16 v0, 0xc9

    if-ne p0, v0, :cond_9

    goto :goto_16

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "wrong divider type, "

    invoke-static {v0, p0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    :goto_16
    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 p0, -0x65

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    const/4 p0, 0x0

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    return-object v0
.end method

.method public static final createTaskbarTransYAnimForEnableChange(ZFFLcom/android/quickstep/AnimatedFloat;)Landroid/animation/Animator;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "transYAnim"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_a

    move v0, p2

    goto :goto_b

    :cond_a
    move v0, p1

    :goto_b
    if-eqz p0, :cond_e

    goto :goto_f

    :cond_e
    move p1, p2

    :goto_f
    iput p1, p3, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {p3, v0}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-string/jumbo p1, "transYAnim.animateToValue(transYValue)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final dumpLogs(Ljava/io/PrintWriter;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "pw"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_6
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarManager()Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v1, ""

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    :cond_16
    :goto_16
    return-void
.end method

.method public static final dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "prefix"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_c
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarManager()Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    :cond_1a
    :goto_1a
    return-void
.end method

.method public static final enableTaskbarSettingActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "componentName.className"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarUtils;->mTaskSettingActivityName:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p2, :cond_1a

    move p2, v0

    goto :goto_1b

    :cond_1a
    const/4 p2, 0x2

    :goto_1b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public static final getActivityContext(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/views/ActivityContext;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext;

    if-eqz v0, :cond_13

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext;->getActivityContext()Lcom/android/launcher3/views/ActivityContext;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_13

    :cond_12
    move-object p0, v0

    :cond_13
    :goto_13
    return-object p0
.end method

.method public static final getAllAppsBtnView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/OplusBubbleTextView;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getActivityContext(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    instance-of v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v1, :cond_17

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarView()Lcom/android/launcher3/taskbar/TaskbarView;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getTaskbarSubscribeAllAppsView(Lcom/android/launcher3/taskbar/TaskbarView;)Landroid/view/View;

    move-result-object p0

    goto :goto_2d

    :cond_17
    instance-of v1, p0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_2c

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    if-eqz p0, :cond_26

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    goto :goto_27

    :cond_26
    move-object p0, v0

    :goto_27
    invoke-static {p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getHotseatSubscribeAllAppsView(Lcom/android/launcher3/ShortcutAndWidgetContainer;)Landroid/view/View;

    move-result-object p0

    goto :goto_2d

    :cond_2c
    move-object p0, v0

    :goto_2d
    if-eqz p0, :cond_37

    instance-of v1, p0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v1, :cond_37

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    goto :goto_4f

    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllAppsBtnView failed, allAppsBtnView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Taskbar"

    const-string v2, "TaskbarUtils"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4f
    return-object v0
.end method

.method public static final getAllAppsItemInfo(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activityContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getAllAppsBtnView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    goto :goto_12

    :cond_11
    move-object v1, v0

    :goto_12
    if-eqz v1, :cond_39

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_39

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.model.data.WorkspaceItemInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v3, 0xcc

    if-ne v1, v3, :cond_39

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    goto :goto_55

    :cond_39
    const-string v1, "getAllAppsItemInfo failed, allAppsItemInfo: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p0, :cond_46

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    goto :goto_47

    :cond_46
    move-object p0, v0

    :goto_47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Taskbar"

    const-string v2, "TaskbarUtils"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_55
    return-object v0
.end method

.method public static final getDimensionPx(Landroid/content/Context;II)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    if-lez p2, :cond_2a

    if-eq p2, v0, :cond_2a

    int-to-float p0, p0

    invoke-static {p0, v0}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result p0

    int-to-float p1, p2

    const/16 p2, 0xa0

    int-to-float p2, p2

    div-float/2addr p1, p2

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000  # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    :cond_2a
    return p0
.end method

.method public static final getEnableTaskbarSettingActivityName()Ljava/lang/String;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarUtils;->mTaskSettingActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public static final getFileBtnView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/OplusBubbleTextView;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getActivityContext(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    instance-of v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/16 v2, 0xce

    if-eqz v1, :cond_15

    check-cast p0, Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getTaskbarSubscribeItemView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object p0

    goto :goto_1f

    :cond_15
    instance-of p0, p0, Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_1e

    invoke-static {v2}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getHotseatSubscribeItemView(I)Landroid/view/View;

    move-result-object p0

    goto :goto_1f

    :cond_1e
    move-object p0, v0

    :goto_1f
    if-eqz p0, :cond_29

    instance-of v1, p0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v1, :cond_29

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    goto :goto_41

    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFileBtnView failed, allFileBtnView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Taskbar"

    const-string v2, "TaskbarUtils"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_41
    return-object v0
.end method

.method public static final getFolderCellPadding(Landroid/content/Context;)Landroid/graphics/Rect;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070f96

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070f95

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static final getInPreStageOfGestureRecentsAnimation()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher3/taskbar/TaskbarUtils;->inPreStageOfGestureRecentsAnimation:Z

    return v0
.end method

.method public static synthetic getInPreStageOfGestureRecentsAnimation$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getLauncherActivityContext(Landroid/view/View;)Landroid/content/Context;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext;

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.taskbar.allapps.OplusTaskbarAllAppsContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext;->getLauncherContextIfExist()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_3c

    return-object v0

    :cond_29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_3c
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    goto :goto_4b

    :cond_47
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    :goto_4b
    return-object p0
.end method

.method public static final getNavBarInsets(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "windowLayoutParams"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    const-string/jumbo v0, "null"

    if-eqz p0, :cond_31

    const/4 v1, 0x0

    array-length v2, p0

    :goto_f
    if-ge v1, v2, :cond_31

    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v5

    if-ne v4, v5, :cond_2e

    invoke-virtual {v3}, Landroid/view/InsetsFrameProvider;->getInsetsSize()Landroid/graphics/Insets;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-virtual {p0}, Landroid/graphics/Insets;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    if-nez p0, :cond_2c

    goto :goto_2d

    :cond_2c
    move-object v0, p0

    :goto_2d
    return-object v0

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_31
    return-object v0
.end method

.method public static final getNavBarLefRect(Landroid/view/View;Z)Landroid/graphics/Rect;
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070ff6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070ff8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "view.resources"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarSizePx(Landroid/content/res/Resources;)I

    move-result v2

    sget-object v3, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget v4, p0, Landroid/graphics/Point;->y:I

    sub-int v2, v4, v2

    iput v2, v3, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    if-eqz p1, :cond_54

    iput v0, v3, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Point;->x:I

    div-int/lit8 p0, p0, 0x2

    iput p0, v3, Landroid/graphics/Rect;->right:I

    goto :goto_5d

    :cond_54
    iget p0, p0, Landroid/graphics/Point;->x:I

    div-int/lit8 p1, p0, 0x2

    iput p1, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v1

    iput p0, v3, Landroid/graphics/Rect;->right:I

    :goto_5d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getNavBarLefRect rect:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskbarUtils"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static final getOplusLauncher()Lcom/android/launcher/Launcher;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method

.method public static final getSGestureToHomeWatcher()Lcom/android/launcher3/taskbar/AnimatorWatcher;
    .registers 1

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarUtils;->sGestureToHomeWatcher:Lcom/android/launcher3/taskbar/AnimatorWatcher;

    return-object v0
.end method

.method public static synthetic getSGestureToHomeWatcher$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getScreenBottomRect(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string/jumbo v1, "view.resources"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarSizePx(Landroid/content/res/Resources;)I

    move-result p0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    const/16 v2, 0x14

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int p0, v0, p0

    iput p0, v1, Landroid/graphics/Rect;->top:I

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNavBottomRect sampleRect:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaskbarUtils"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final getScreenHeight(Landroid/content/Context;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/config/ScreenInfo$Companion;->getDisplayScreenSize(Landroid/content/Context;)[I

    move-result-object p0

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public static final getScreenWidth(Landroid/content/Context;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/config/ScreenInfo$Companion;->getDisplayScreenSize(Landroid/content/Context;)[I

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public static final getSparseArrayKeys(Landroid/util/SparseArray;Z)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "sparseArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/core/util/SparseArrayKt;->keyIterator(Landroid/util/SparseArray;)Li4/f0;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Li4/f0;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_21
    if-nez p1, :cond_26

    invoke-static {v0}, Li4/u;->w(Ljava/util/List;)V

    :cond_26
    return-object v0
.end method

.method public static final getStashedhandleViewRect(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07100a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-object v2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget v3, p0, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v3, 0x2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v4, v1

    iput v4, v2, Landroid/graphics/Rect;->left:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr p0, v0

    iput p0, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v0

    iput p0, v2, Landroid/graphics/Rect;->bottom:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getStashedhandleViewRect rect:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaskbarUtils"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getSystemDensityDpi()I
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    return v0
.end method

.method public static final getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarManager()Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->getCurrentActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public static final getTaskbarAllAppsRecyclerViewInitMarginTop(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "recyclerView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const-string/jumbo v0, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const-string v0, "getTaskbarAllAppsRecyclerViewInitMarginTop: "

    const-string v1, "TaskbarUtils"

    invoke-static {v0, p0, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method public static final getTaskbarAppConnectView()Landroid/view/View;
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarView()Lcom/android/launcher3/taskbar/TaskbarView;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    :goto_d
    if-nez v0, :cond_10

    return-object v1

    :cond_10
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    sget-object v3, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v3}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getAppConnectList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_21

    return-object v1

    :cond_21
    const/4 v4, 0x0

    move v5, v4

    :goto_23
    if-ge v5, v2, :cond_79

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v8, :cond_76

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v7}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v8

    if-nez v8, :cond_76

    invoke-static {v7}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isExpandContainer(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v7

    if-eqz v7, :cond_76

    instance-of v7, v6, Landroid/view/ViewGroup;

    if-nez v7, :cond_44

    goto :goto_76

    :cond_44
    check-cast v6, Landroid/view/ViewGroup;

    invoke-static {v6}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lj7/h;

    move-result-object v6

    invoke-interface {v6}, Lj7/h;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_76

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v9, :cond_4e

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v8}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x2

    invoke-static {v8, v9, v4, v10}, Lk7/m;->l(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v8

    if-eqz v8, :cond_4e

    return-object v7

    :cond_76
    :goto_76
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_79
    return-object v1
.end method

.method public static final getTaskbarAppIconActualSize(Landroid/content/Context;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070c3f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static final getTaskbarBackgroundColor(Landroid/content/Context;)I
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    sget-object v0, Lcom/android/common/util/ThemeUtils;->Companion:Lcom/android/common/util/ThemeUtils$Companion;

    const-string v1, "config"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/common/util/ThemeUtils$Companion;->isDarkMode(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_61

    const-class v0, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {v0, p0}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/OplusBaseConfiguration;

    const v0, 0x7f060814

    if-eqz p0, :cond_57

    invoke-virtual {p0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object p0

    iget p0, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeBackgroundMaxL:F

    const/4 v1, 0x0

    cmpg-float v1, p0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_36

    move v1, v2

    goto :goto_37

    :cond_36
    move v1, v3

    :goto_37
    if-eqz v1, :cond_3d

    const v0, 0x7f060813

    goto :goto_60

    :cond_3d
    const/high16 v1, 0x41000000  # 8.0f

    cmpg-float v1, p0, v1

    if-nez v1, :cond_45

    move v1, v2

    goto :goto_46

    :cond_45
    move v1, v3

    :goto_46
    if-eqz v1, :cond_49

    goto :goto_60

    :cond_49
    const/high16 v1, 0x41a00000  # 20.0f

    cmpg-float p0, p0, v1

    if-nez p0, :cond_50

    goto :goto_51

    :cond_50
    move v2, v3

    :goto_51
    if-eqz v2, :cond_60

    const v0, 0x7f060815

    goto :goto_60

    :cond_57
    const-string p0, "Taskbar"

    const-string v1, "TaskbarUtils"

    const-string v2, "getTaskbarBackgroundColor baseConfig type error"

    invoke-static {p0, v1, v2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    :goto_60
    return v0

    :cond_61
    const p0, 0x7f060812

    return p0
.end method

.method public static final getTaskbarBackgroundHeight(Lcom/android/launcher3/taskbar/TaskbarActivityContext;F)F
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "taskbarContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isTaskbarViewHide(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isGestureNav()Z

    move-result v1

    sget-object v2, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v2}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureNavbarHidden()Z

    move-result v2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_29

    const-string v3, "getTaskbarBackgroundHeight isGestureNav: "

    const-string v4, ", isGestureNavbarHidden: "

    const-string v5, "TaskbarUtils"

    invoke-static {v3, v1, v4, v2, v5}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    :cond_29
    if-eqz v0, :cond_3c

    if-eqz v1, :cond_3c

    if-nez v2, :cond_3c

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07100b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p1, p0

    goto :goto_41

    :cond_3c
    if-eqz v0, :cond_41

    if-eqz v1, :cond_41

    const/4 p1, 0x0

    :cond_41
    :goto_41
    return p1
.end method

.method public static final getTaskbarBgColorLong(Landroid/content/Context;I)J
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarBackgroundColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object p0

    invoke-static {v0, v1}, Landroid/graphics/Color;->red(J)F

    move-result v2

    invoke-static {v0, v1}, Landroid/graphics/Color;->green(J)F

    move-result v3

    invoke-static {v0, v1}, Landroid/graphics/Color;->blue(J)F

    move-result v0

    int-to-float p1, p1

    const v1, 0x3b808081

    mul-float/2addr p1, v1

    invoke-static {v2, v3, v0, p1, p0}, Landroid/graphics/Color;->pack(FFFFLandroid/graphics/ColorSpace;)J

    move-result-wide p0

    const-string v0, "getTaskbarBgColorLong "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/common/util/ColorUtils;->toARGB(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskbarUtils"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide p0
.end method

.method public static final getTaskbarContext()Landroid/content/Context;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarManager()Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public static final getTaskbarDividerHeight(Landroid/content/res/Resources;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "res"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f070c4c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static final getTaskbarDividerWidth(Landroid/content/res/Resources;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "res"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f070c4e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static final getTaskbarExpandDataItems()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarViewController()Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->getExpandDataItems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_18

    :cond_16
    sget-object v0, Li4/y;->a:Li4/y;

    :cond_18
    return-object v0
.end method

.method public static final getTaskbarHideTaskbarHeadwordResID()I
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f12054f

    goto :goto_d

    :cond_a
    const v0, 0x7f1202be

    :goto_d
    return v0
.end method

.method public static final getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public static final getTaskbarLauncherStateRecentsAnimationListener()Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->getTaskBarRecentsAnimationListener()Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public static final getTaskbarLongPressState(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "sp_key_taskbar_today_islongpress"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "1"

    const/4 v4, 0x0

    const-string v5, "0"

    if-eqz v2, :cond_30

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_23

    move-object v2, v3

    goto :goto_24

    :cond_23
    move-object v2, v5

    :goto_24
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_31

    :cond_30
    move-object v2, v5

    :goto_31
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string/jumbo v0, "taskbar_is_stashed"

    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3f

    move-object v3, v5

    :cond_3f
    const-string p0, " _ "

    invoke-static {v3, p0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getTaskbarManager()Lcom/android/launcher3/taskbar/OplusTaskbarManager;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->Companion:Lcom/android/quickstep/OplusBaseTouchInteractionService$Companion;

    invoke-virtual {v0}, Lcom/android/quickstep/OplusBaseTouchInteractionService$Companion;->getInstance()Lcom/android/quickstep/OplusBaseTouchInteractionService;

    move-result-object v0

    instance-of v1, v0, Lcom/android/quickstep/TouchInteractionService;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {v0}, Lcom/android/quickstep/TouchInteractionService;->getTaskbarManager()Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final getTaskbarNavBtnOffsetY()I
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static final getTaskbarOriginDensityDpi()I
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarManager()Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->getOriginDensityDpi()I

    move-result v0

    goto :goto_f

    :cond_b
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getSystemDensityDpi()I

    move-result v0

    :goto_f
    return v0
.end method

.method public static final getTaskbarPersistRegionPackages()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarViewController()Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->getPersistRegionItems()Landroid/util/SparseArray;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    if-eqz v1, :cond_3d

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_22
    if-ge v2, v3, :cond_3d

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v5, :cond_3a

    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getCompactTargetPackage(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3a

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_3d
    return-object v0
.end method

.method public static final getTaskbarRect(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "view.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarSizePx(Landroid/content/res/Resources;)I

    move-result v0

    sget-object v1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Point;->y:I

    sub-int v0, v2, v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Point;->x:I

    iput p0, v1, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getTaskbarRect rect:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaskbarUtils"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final getTaskbarScreenTitleResID()I
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f120258

    goto :goto_d

    :cond_a
    const v0, 0x7f12013a

    :goto_d
    return v0
.end method

.method public static final getTaskbarSettingsCls()Ljava/lang/String;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "com.android.launcher.settings.LauncherTabletTaskbarSettingActivity"

    goto :goto_b

    :cond_9
    const-string v0, "com.android.launcher.settings.LauncherTaskbarSettingActivity"

    :goto_b
    return-object v0
.end method

.method public static final getTaskbarSizePx(Landroid/content/Context;Z)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarOriginDensityDpi()I

    move-result p1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    const v0, 0x7f070c37

    invoke-static {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getDimensionPx(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static final getTaskbarSizePx(Landroid/content/res/Resources;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "res"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f070c37

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static final getTaskbarStashedHeight(Landroid/content/Context;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07100b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static final getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarViewController()Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    goto :goto_15

    :cond_14
    move-object v0, v1

    :goto_15
    instance-of v2, v0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    if-eqz v2, :cond_1c

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    :cond_1c
    return-object v1
.end method

.method public static final getTaskbarViewController()Lcom/android/launcher3/taskbar/OplusTaskbarViewController;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarViewController()Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public static final getTaskbarWindowSpecHeight(Landroid/content/res/Resources;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "res"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f070c4f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static final getWillFinishToHome()Ljava/lang/Boolean;
    .registers 1

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarUtils;->willFinishToHome:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static synthetic getWillFinishToHome$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final hideAllAppsWhenStartApp(Lcom/android/launcher3/views/ActivityContext;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getActivityContext(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    instance-of v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_17

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getAllAppsController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    move-result-object p0

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->hideWhenStartApp()V

    goto :goto_2c

    :cond_17
    instance-of p0, p0, Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_2c

    sget-object p0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->INSTANCE:Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->getLauncherActivityContext()Lcom/android/launcher3/taskbar/LauncherActivityContext;

    move-result-object p0

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/LauncherActivityContext;->getAllAppsController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    move-result-object p0

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->hideWhenStartApp()V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public static final hideLauncherAllApps()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->INSTANCE:Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->getLauncherActivityContext()Lcom/android/launcher3/taskbar/LauncherActivityContext;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/LauncherActivityContext;->getAllAppsController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->hide()V

    :cond_11
    return-void
.end method

.method public static final iconAlignmentAnimationRunningWithHotseat()Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresent()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->isIconAlignmentAnimating()Z

    move-result v0

    if-ne v0, v1, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarViewController()Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getCurrentIconAlignmentAnimationType()I

    move-result v0

    if-ne v0, v1, :cond_27

    move v0, v1

    goto :goto_28

    :cond_27
    move v0, v2

    :goto_28
    if-eqz v0, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v2

    :goto_2c
    return v1
.end method

.method public static final isAllAppsPanelOpen(Lcom/android/launcher3/views/ActivityContext;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getActivityContext(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    :cond_8
    instance-of v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v1, :cond_19

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getAllAppsController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->isSlideInViewOpen()Z

    move-result v0

    :cond_18
    return v0

    :cond_19
    instance-of p0, p0, Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_2f

    sget-object p0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->INSTANCE:Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->getLauncherActivityContext()Lcom/android/launcher3/taskbar/LauncherActivityContext;

    move-result-object p0

    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/LauncherActivityContext;->getAllAppsController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    move-result-object p0

    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->isSlideInViewOpen()Z

    move-result v0

    :cond_2f
    return v0
.end method

.method public static final isAllAppsPanelShow(Lcom/android/launcher3/views/ActivityContext;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getActivityContext(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    :cond_8
    instance-of v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v1, :cond_19

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getAllAppsController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->isSlideInViewShow()Z

    move-result v0

    :cond_18
    return v0

    :cond_19
    instance-of p0, p0, Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_2f

    sget-object p0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->INSTANCE:Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->getLauncherActivityContext()Lcom/android/launcher3/taskbar/LauncherActivityContext;

    move-result-object p0

    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/LauncherActivityContext;->getAllAppsController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    move-result-object p0

    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->isSlideInViewShow()Z

    move-result v0

    :cond_2f
    return v0
.end method

.method public static final isDisableTaskbarLongClickToStash()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static final isDisableWindowRoundCorner()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static final isDisplayImeButton()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static final isExpandContainer(I)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static final isExpandContainer(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "itemInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isExpandContainer(I)Z

    move-result p0

    return p0
.end method

.method public static final isFoldStateMatchScreenSize(Landroid/content/Context;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Lcom/android/common/util/FoldStateMonitor;->Companion:Lcom/android/common/util/FoldStateMonitor$Companion;

    invoke-virtual {v2, p0}, Lcom/android/common/util/FoldStateMonitor$Companion;->getInstance(Landroid/content/Context;)Lcom/android/common/util/FoldStateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/common/util/FoldStateMonitor;->isFold()Z

    move-result p0

    sget-object v2, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v2, v0, v1}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isLargeScreen(II)Z

    move-result v0

    if-eq p0, v0, :cond_21

    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    return p0
.end method

.method public static final isGesNavBarHiddenAndStashed()Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarStashController()Lcom/android/launcher3/taskbar/TaskbarStashController;

    move-result-object v0

    if-eqz v0, :cond_13

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    if-eqz v0, :cond_25

    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureNavbarHidden()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v1, 0x1

    :cond_25
    return v1
.end method

.method public static final isHideTaskbarWindowOnSmallScreen()Z
    .registers 1

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarUtils;->isHideTaskbarWindowOnSmallScreen$delegate:Lh4/f;

    invoke-interface {v0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic isHideTaskbarWindowOnSmallScreen$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final isIconAlignmentAnimRunning()Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->getIconAlignmentRunner()Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->isAnimating()Z

    move-result v0

    if-ne v0, v1, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    return v1
.end method

.method public static final isImitationLongClick()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static final isNormalContainer(I)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(I)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isExpandContainer(I)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isDividerItem(I)Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static final isNormalContainer(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "itemInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isNormalContainer(I)Z

    move-result p0

    return p0
.end method

.method public static final isTaskbarAllAppsAndFileMangerShowing(Lcom/android/launcher3/views/ActivityContext;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    :cond_d
    const/high16 v0, 0x20000

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->hasOpenView(Lcom/android/launcher3/views/ActivityContext;I)Z

    move-result p0

    if-nez p0, :cond_1f

    invoke-static {}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->isFileManagerVisible()Z

    move-result p0

    if-eqz p0, :cond_20

    :cond_1f
    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method public static final isTaskbarFolderClosing(Lcom/android/launcher3/folder/Folder;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "abstractFloatingView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->isAnimateClosing()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 p0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    :goto_1b
    return p0
.end method

.method public static final isTaskbarHideOnlyByManualStashed()Z
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarStashController()Lcom/android/launcher3/taskbar/TaskbarStashController;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    :goto_d
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarViewController()Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarIconAlpha()Lcom/android/launcher3/util/MultiValueAlpha;

    move-result-object v2

    goto :goto_1f

    :cond_1e
    move-object v2, v1

    :goto_1f
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_28

    invoke-virtual {v0, v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v5

    goto :goto_29

    :cond_28
    move v5, v4

    :goto_29
    if-eqz v5, :cond_37

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isInApp()Z

    move-result v0

    goto :goto_33

    :cond_32
    move v0, v4

    :goto_33
    if-eqz v0, :cond_37

    const/4 v0, 0x1

    goto :goto_38

    :cond_37
    move v0, v4

    :goto_38
    if-eqz v0, :cond_61

    if-eqz v2, :cond_61

    invoke-virtual {v2}, Lcom/android/launcher3/util/MultiValueAlpha;->getMyProperties()[Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v5

    array-length v5, v5

    move v6, v4

    :goto_42
    if-ge v6, v5, :cond_61

    invoke-virtual {v2, v6}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v7

    if-eqz v7, :cond_53

    invoke-virtual {v7}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_54

    :cond_53
    move-object v7, v1

    :goto_54
    if-eq v6, v3, :cond_5e

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v7

    if-eqz v7, :cond_5e

    goto :goto_62

    :cond_5e
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    :cond_61
    move v4, v0

    :goto_62
    return v4
.end method

.method public static final isTaskbarViewHide(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "taskbarContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarStashController()Lcom/android/launcher3/taskbar/TaskbarStashController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isInApp()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarStashController()Lcom/android/launcher3/taskbar/TaskbarStashController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashed()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarStashController()Lcom/android/launcher3/taskbar/TaskbarStashController;

    move-result-object p0

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result p0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v2, "isTaskbarViewHide isInApp: "

    const-string v3, ", isStashed: "

    const-string v4, ", isIconEmpty: "

    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TaskbarUtils"

    invoke-static {v2, p0, v3}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_35
    if-eqz v0, :cond_3e

    if-nez v1, :cond_3e

    if-eqz p0, :cond_3c

    goto :goto_3e

    :cond_3c
    const/4 p0, 0x0

    goto :goto_3f

    :cond_3e
    :goto_3e
    const/4 p0, 0x1

    :goto_3f
    return p0
.end method

.method public static final isTaskbarWindowUseSpecHeight()Z
    .registers 1

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarUtils;->isTaskbarWindowUseSpecHeight$delegate:Lh4/f;

    invoke-interface {v0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic isTaskbarWindowUseSpecHeight$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final makeExpandItemContainerInfo()Lcom/android/launcher3/model/data/ItemInfo;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    const/16 v1, 0x7d0

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    return-object v0
.end method

.method public static final noNeedAnimationWhenStashed()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static final noNeedRecreateWhenDarkModeChange()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static final notifyObserversForLauncherReady(Lcom/android/launcher/Launcher;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarUtils;->launcherAvailableObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/taskbar/TaskbarUtils$ILauncherAvailableObserver;

    invoke-interface {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarUtils$ILauncherAvailableObserver;->onLauncherAvailable(Lcom/android/launcher/Launcher;)V

    goto :goto_b

    :cond_1b
    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarUtils;->launcherAvailableObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static final notifyStartDragToSplitScreen()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "Taskbar"

    const-string v1, "TaskbarUtils"

    const-string/jumbo v2, "notifyStartDragToSplitScreen"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oplus.smartsidebar.action.DismissExpandingPanel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x7f120484

    invoke-static {v1}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static final onClickNavVibrate()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarManager()Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_d

    return-void

    :cond_d
    new-instance v1, Lcom/android/launcher3/taskbar/h1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/taskbar/h1;-><init>(Landroid/content/Context;I)V

    sget-object v0, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final onClickNavVibrate$lambda$1(Landroid/content/Context;)V
    .registers 9

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportLuxunVirbrator()Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x16f

    goto :goto_f

    :cond_e
    const/4 v0, 0x1

    :goto_f
    move v2, v0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/common/util/VibrationUtils;->vibrate$default(Landroid/content/Context;IJZILjava/lang/Object;)V

    return-void
.end method

.method public static final onConfigurationChanged(I)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->INSTANCE:Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->getLauncherActivityContext()Lcom/android/launcher3/taskbar/LauncherActivityContext;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/LauncherActivityContext;->onConfigurationChanged(I)V

    :cond_b
    return-void
.end method

.method public static final onLauncherDestroy()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->INSTANCE:Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->onLauncherDestroy()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/taskbar/TaskbarUtils;->isLauncherDestroyed:Z

    return-void
.end method

.method public static final onLauncherRecreate(Lcom/android/launcher/Launcher;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->INSTANCE:Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->onLauncherRecreate(Lcom/android/launcher/Launcher;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/launcher3/taskbar/TaskbarUtils;->isLauncherDestroyed:Z

    return-void
.end method

.method public static final onLauncherRestartOrResume(Lcom/android/launcher/Launcher;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->INSTANCE:Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->onLauncherRestartOrResume(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public static final recordTaskbarTodayIslongpress(Z)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sp_key_taskbar_today_islongpress"

    invoke-static {v0, v1, p0}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final removeAllAppsVisibilityChangeListener(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OnTaskbarAllAppsVisibilityChangeListener;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getActivityContext(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object p0

    if-nez p0, :cond_c

    return-void

    :cond_c
    instance-of v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_1c

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getAllAppsController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    move-result-object p0

    if-eqz p0, :cond_31

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->removeVisibilityChangeListener(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OnTaskbarAllAppsVisibilityChangeListener;)V

    goto :goto_31

    :cond_1c
    instance-of p0, p0, Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_31

    sget-object p0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->INSTANCE:Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->getLauncherActivityContext()Lcom/android/launcher3/taskbar/LauncherActivityContext;

    move-result-object p0

    if-eqz p0, :cond_31

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/LauncherActivityContext;->getAllAppsController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    move-result-object p0

    if-eqz p0, :cond_31

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->removeVisibilityChangeListener(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OnTaskbarAllAppsVisibilityChangeListener;)V

    :cond_31
    :goto_31
    return-void
.end method

.method public static final resetReverseAnimationStateIfNeed(Lcom/android/launcher3/LauncherState;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "toState"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher3/taskbar/TaskbarUtils;->isRecentReverseScene:Z

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq p0, v0, :cond_1d

    sget-object v0, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-eq p0, v0, :cond_1d

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/launcher3/taskbar/TaskbarUtils;->isRecentReverseScene:Z

    const-string p0, "TaskbarUtils"

    const-string/jumbo v0, "reset taskbar isRecentReverseScene to [false]"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public static final setInPreStageOfGestureRecentsAnimation(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/launcher3/taskbar/TaskbarUtils;->inPreStageOfGestureRecentsAnimation:Z

    if-eqz p0, :cond_7

    const/4 p0, 0x0

    sput-object p0, Lcom/android/launcher3/taskbar/TaskbarUtils;->willFinishToHome:Ljava/lang/Boolean;

    :cond_7
    return-void
.end method

.method public static final setWillFinishToHome(Ljava/lang/Boolean;)V
    .registers 1

    sput-object p0, Lcom/android/launcher3/taskbar/TaskbarUtils;->willFinishToHome:Ljava/lang/Boolean;

    return-void
.end method

.method public static final shouldDeferStartingActivity()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresent()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/android/launcher3/taskbar/TaskbarUtils;->inHideTaskbarOrNotOccludesWindow:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static final showAllApps(Lcom/android/launcher3/views/ActivityContext;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const-string v1, "TaskbarUtils"

    const-string v2, "Taskbar"

    if-eqz v0, :cond_44

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_ALLAPPS_BUTTON_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getAllAppsController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    move-result-object v0

    if-nez v0, :cond_39

    const-string/jumbo v0, "showAllApps failed, allAppsController:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getAllAppsController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b4

    :cond_39
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getAllAppsController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    move-result-object p0

    if-eqz p0, :cond_b4

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->show()V

    goto/16 :goto_b4

    :cond_44
    instance-of p0, p0, Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_b4

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_58

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v4

    if-ne v4, v0, :cond_58

    move v4, v0

    goto :goto_59

    :cond_58
    move v4, v3

    :goto_59
    if-nez v4, :cond_67

    if-eqz p0, :cond_64

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result v4

    if-ne v4, v0, :cond_64

    goto :goto_65

    :cond_64
    move v0, v3

    :goto_65
    if-eqz v0, :cond_6c

    :cond_67
    sget-object v0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->INSTANCE:Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->onLauncherRestartOrResume(Lcom/android/launcher/Launcher;)V

    :cond_6c
    sget-object p0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->INSTANCE:Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->getLauncherActivityContext()Lcom/android/launcher3/taskbar/LauncherActivityContext;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/LauncherActivityContext;->getAllAppsController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    move-result-object v0

    goto :goto_7b

    :cond_7a
    move-object v0, v3

    :goto_7b
    if-nez v0, :cond_a5

    const-string/jumbo v0, "showAllApps failed, launcherActivity:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->getLauncherActivityContext()Lcom/android/launcher3/taskbar/LauncherActivityContext;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", allAppsController:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->getLauncherActivityContext()Lcom/android/launcher3/taskbar/LauncherActivityContext;

    move-result-object p0

    if-eqz p0, :cond_9a

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/LauncherActivityContext;->getAllAppsController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    move-result-object v3

    :cond_9a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b4

    :cond_a5
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->getLauncherActivityContext()Lcom/android/launcher3/taskbar/LauncherActivityContext;

    move-result-object p0

    if-eqz p0, :cond_b4

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/LauncherActivityContext;->getAllAppsController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    move-result-object p0

    if-eqz p0, :cond_b4

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->show()V

    :cond_b4
    :goto_b4
    return-void
.end method

.method public static final supportDrag(Landroid/view/View;Landroid/content/Context;Z)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->supportDrag(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_21

    :cond_1d
    invoke-static {p0, p1, v0, p2}, Lcom/android/launcher3/taskbar/splitscreen/SplitScreenUtils;->isSupportDrag(Landroid/view/View;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    move-result v2

    :cond_21
    :goto_21
    return v2
.end method

.method private static final supportDrag(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_12

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_12

    packed-switch p0, :pswitch_data_14

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    :pswitch_12  #0xcb, 0xcc, 0xcd, 0xce
    const/4 p0, 0x0

    :goto_13
    return p0

    :pswitch_data_14
    .packed-switch 0xcb
        :pswitch_12  #000000cb
        :pswitch_12  #000000cc
        :pswitch_12  #000000cd
        :pswitch_12  #000000ce
    .end packed-switch
.end method

.method public static final updateAllAppsBtnCheckedOrUnCheckedState(ZLcom/android/launcher3/views/ActivityContext;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getAllAppsBtnView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->updateBtnCheckedOrUnCheckedState(ZLcom/android/launcher3/OplusBubbleTextView;)V

    return-void
.end method

.method public static final updateBtnCheckedOrUnCheckedState(ZLcom/android/launcher3/OplusBubbleTextView;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_4c

    instance-of v0, p1, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    if-eqz v0, :cond_4c

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->isPressAnimRunning()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->getTargetStateWhenPressAnimRunning()Z

    move-result v0

    if-eqz p0, :cond_17

    goto :goto_1c

    :cond_17
    if-nez v0, :cond_1b

    move v0, v1

    goto :goto_1c

    :cond_1b
    move v0, v2

    :goto_1c
    if-eqz v0, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    const-string v0, "AllApps Window Open "

    const-string v2, "TaskbarUtils"

    if-nez v1, :cond_35

    const-string v1, ": state error and set state to Checked "

    invoke-static {v0, p0, v1, p0, v2}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    if-eqz p0, :cond_31

    invoke-virtual {p1}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->setCheckedStateIfNecessary()V

    goto :goto_4c

    :cond_31
    invoke-virtual {p1}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->setUnCheckedStateIfNecessary()V

    goto :goto_4c

    :cond_35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ": state will be right!!"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public static final updateFileBtnCheckedOrUncheckedState(Z)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getFileBtnView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->updateBtnCheckedOrUnCheckedState(ZLcom/android/launcher3/OplusBubbleTextView;)V

    return-void
.end method

.method public static final updateFolderTextViewColor(ZLandroid/widget/TextView;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_f

    const p0, 0x7f13024c

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_15

    :cond_f
    const p0, 0x7f13024d

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextAppearance(I)V

    :goto_15
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    if-nez p0, :cond_26

    const/4 p0, 0x0

    const-string/jumbo v0, "sans-serif-medium"

    invoke-static {v0, p0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_26
    return-void
.end method

.method public static final updatePredictionAndFrequencyUsage(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_41

    invoke-static {}, Lcom/android/launcher/predictedapps/PredictedAppManager;->getInstance()Lcom/android/launcher/predictedapps/PredictedAppManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher/predictedapps/PredictedAppManager;->reportAppLaunch(Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_4c

    check-cast p0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_4c

    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/common/util/DrawAppSortManagerUtil;->handleAppInfoClick(Landroid/content/Context;Lcom/android/launcher3/util/ComponentKey;)V

    goto :goto_4c

    :cond_41
    instance-of p0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz p0, :cond_4c

    invoke-static {}, Lcom/android/launcher/predictedapps/PredictedAppManager;->getInstance()Lcom/android/launcher/predictedapps/PredictedAppManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher/predictedapps/PredictedAppManager;->reportAppLaunch(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public static final updateTaskbarAllAppsIconSize()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarManager()Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->getCurrentActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/OplusDeviceProfile;->updateTaskbarAllAppsIconSize(FLandroid/content/Context;)V

    :cond_15
    sget-object v0, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->INSTANCE:Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getAllAppsController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->removeDragLayer()V

    :cond_26
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/AllAppsActivityContextManager;->getLauncherActivityContext()Lcom/android/launcher3/taskbar/LauncherActivityContext;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/LauncherActivityContext;->getAllAppsController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->removeDragLayer()V

    :cond_35
    return-void
.end method


# virtual methods
.method public final getInHideTaskbarOrNotOccludesWindow()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/taskbar/TaskbarUtils;->inHideTaskbarOrNotOccludesWindow:Z

    return p0
.end method

.method public final getMTaskSettingActivityName()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarUtils;->mTaskSettingActivityName:Ljava/lang/String;

    return-object p0
.end method

.method public final getZoomWindowPkg()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarUtils;->zoomWindowPkg:Ljava/lang/String;

    return-object p0
.end method

.method public final setInHideTaskbarOrNotOccludesWindow(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher3/taskbar/TaskbarUtils;->inHideTaskbarOrNotOccludesWindow:Z

    return-void
.end method

.method public final setMTaskSettingActivityName(Ljava/lang/String;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/taskbar/TaskbarUtils;->mTaskSettingActivityName:Ljava/lang/String;

    return-void
.end method

.method public final setZoomWindowPkg(Ljava/lang/String;)V
    .registers 2

    sput-object p1, Lcom/android/launcher3/taskbar/TaskbarUtils;->zoomWindowPkg:Ljava/lang/String;

    return-void
.end method
