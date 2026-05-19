.class public final Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nStashedHandleViewGuidHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StashedHandleViewGuidHelper.kt\ncom/android/launcher3/taskbar/StashedHandleViewGuidHelper\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,102:1\n252#2:103\n94#3,14:104\n*S KotlinDebug\n*F\n+ 1 StashedHandleViewGuidHelper.kt\ncom/android/launcher3/taskbar/StashedHandleViewGuidHelper\n*L\n65#1:103\n71#1:104,14\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;

.field private static final SHARE_PREFERENCE_KEY:Ljava/lang/String; = "STASHED_HANDLE_GUID_SHOWED"

.field private static final TAG:Ljava/lang/String; = "StashedHandleViewGuidHelper"

.field private static final mStashedHandleSourceTipResMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mStashedHandleViewGuidTip:Landroid/widget/PopupWindow;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;->INSTANCE:Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;->mStashedHandleSourceTipResMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;->showStashedHandleGuidTip$lambda$2$lambda$1()V

    return-void
.end method

.method public static final dismissStashedHandleGuidTip()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "StashedHandleViewGuidHelper"

    const-string v1, "dismissStashedHandleGuidTip"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;->mStashedHandleViewGuidTip:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1b

    const-string/jumbo v1, "mStashedHandleViewGuidTip != null   dismissStashedHandleGuidTip"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;->mStashedHandleViewGuidTip:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_18
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;->mStashedHandleViewGuidTip:Landroid/widget/PopupWindow;

    :cond_1b
    return-void
.end method

.method private final getGuidTipString(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, 0x7f120631

    goto :goto_d

    :cond_a
    const p0, 0x7f120630

    :goto_d
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "context.getString(if (Ap…R.string.to_show_taskbar)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final hasStashedHandleGuidBeenShowed(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "STASHED_HANDLE_GUID_SHOWED"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static final showStashedHandleGuidTip(Landroid/view/View;)V
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;->mStashedHandleViewGuidTip:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    const-string v3, "StashedHandleViewGuidHelper"

    if-eqz v0, :cond_1a

    const-string/jumbo p0, "mStashedHandleViewGuidTip?.isShowing == true"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarProfile()Lcom/android/launcher3/taskbar/TaskbarProfile;

    move-result-object v0

    goto :goto_27

    :cond_26
    move-object v0, v4

    :goto_27
    if-eqz v0, :cond_38

    sget-object v5, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->Companion:Lcom/android/launcher3/taskbar/OplusTaskbarManager$Companion;

    invoke-virtual {v5, v0}, Lcom/android/launcher3/taskbar/OplusTaskbarManager$Companion;->isSmallScreenMode(Lcom/android/launcher3/taskbar/TaskbarProfile;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string/jumbo p0, "showStashedHandleGuidTip  isSmallScreenMode：true"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_38
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_3f

    return-void

    :cond_3f
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v5

    if-nez v5, :cond_4a

    return-void

    :cond_4a
    invoke-virtual {v5}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v6

    sget-object v7, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5b

    return-void

    :cond_5b
    sget-object v6, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;->INSTANCE:Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "app.context"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;->getGuidTipString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "showStashedHandleView isVisible:"

    invoke-static {v7}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_78

    move v1, v2

    :cond_78
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-direct {v1, v5}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setDismissOnTouchOutside(Z)V

    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f071005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v5

    if-eqz v5, :cond_aa

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v5

    goto :goto_ab

    :cond_aa
    move-object v5, v4

    :goto_ab
    instance-of v6, v5, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;

    if-eqz v6, :cond_b2

    check-cast v5, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;

    goto :goto_b3

    :cond_b2
    move-object v5, v4

    :goto_b3
    if-eqz v5, :cond_b9

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->getLongPressHotAreaAnim()Landroid/animation/ValueAnimator;

    move-result-object v4

    :cond_b9
    if-eqz v4, :cond_c3

    new-instance v5, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper$showStashedHandleGuidTip$lambda$2$$inlined$addListener$default$1;

    invoke-direct {v5, v1, p0, v3}, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper$showStashedHandleGuidTip$lambda$2$$inlined$addListener$default$1;-><init>(Lcom/coui/appcompat/tooltips/COUIToolTips;Landroid/view/View;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_c3
    if-eqz v4, :cond_c8

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    :cond_c8
    sget-object p0, Lcom/android/launcher3/taskbar/j0;->a:Lcom/android/launcher3/taskbar/j0;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    sput-object v1, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;->mStashedHandleViewGuidTip:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "STASHED_HANDLE_GUID_SHOWED"

    invoke-static {p0, v0, v2}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private static final showStashedHandleGuidTip$lambda$2$lambda$1()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;->dismissStashedHandleGuidTip()V

    return-void
.end method

.method public static final showStashedHandleViewGuideIfNecessary(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "StashedHandleViewGuidHelper"

    const-string/jumbo v1, "showStashedHandleViewIfNecessary"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;->dismissStashedHandleGuidTip()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "view.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;->hasStashedHandleGuidBeenShowed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_22

    return-void

    :cond_22
    invoke-static {p0}, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;->showStashedHandleGuidTip(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getMStashedHandleSourceTipResMap()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;->mStashedHandleSourceTipResMap:Ljava/util/HashMap;

    return-object p0
.end method
