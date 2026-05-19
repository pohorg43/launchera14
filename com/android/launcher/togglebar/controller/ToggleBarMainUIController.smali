.class public final Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;
.super Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nToggleBarMainUIController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ToggleBarMainUIController.kt\ncom/android/launcher/togglebar/controller/ToggleBarMainUIController\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,329:1\n31#2:330\n94#2,14:331\n1#3:345\n*S KotlinDebug\n*F\n+ 1 ToggleBarMainUIController.kt\ncom/android/launcher/togglebar/controller/ToggleBarMainUIController\n*L\n228#1:330\n228#1:331,14\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$Companion;

.field private static final SHOW_TOOLTIPS_DURATION:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "ToggleBarMainUIController"


# instance fields
.field private mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

.field private mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

.field private widgetMoveToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->Companion:Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;-><init>(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->showToolTips$lambda$3(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)V

    return-void
.end method

.method public static final synthetic access$getMContentView$p(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->showToolTips$lambda$3$lambda$2$lambda$1$lambda$0(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)V

    return-void
.end method

.method private final isIgnoreItem(ZIZLcom/android/launcher/Launcher;)Z
    .registers 6

    const p0, 0x7f0a0636

    const/4 v0, 0x0

    if-eq p2, p0, :cond_1c

    const p0, 0x7f0a0638

    if-eq p2, p0, :cond_12

    const p0, 0x7f0a063a

    if-eq p2, p0, :cond_22

    :cond_10
    move p3, v0

    goto :goto_22

    :cond_12
    if-nez p1, :cond_1a

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isRemoveLayoutSettings()Z

    move-result p0

    if-eqz p0, :cond_10

    :cond_1a
    const/4 p3, 0x1

    goto :goto_22

    :cond_1c
    invoke-virtual {p4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean p3, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    :cond_22
    :goto_22
    return p3
.end method

.method private static final showToolTips$lambda$3(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)V
    .registers 7

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createView itemView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isLargeDisplayDevice:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isLargeDisplayDeviceInLarge:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInLarge()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ToggleBarMainUIController"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    const/4 v4, 0x1

    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4f

    move v1, v4

    :cond_4f
    if-eqz v1, :cond_99

    if-eqz v0, :cond_99

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5a

    goto :goto_99

    :cond_5a
    iget-object v1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_99

    new-instance v1, Lcom/coui/appcompat/tooltips/COUIToolTips;

    iget-object v2, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {v1, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    const v5, 0x7f120329

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setDismissOnTouchOutside(Z)V

    const/4 v2, 0x4

    :try_start_75
    invoke-virtual {v1, v0, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;I)V
    :try_end_78
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_8f

    :catch_79
    move-exception v0

    const-string/jumbo v2, "showWithDirection,exception:"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8f
    new-instance v0, Le0/b;

    invoke-direct {v0, p0}, Le0/b;-><init>(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)V

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-object v1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->widgetMoveToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    :cond_99
    :goto_99
    return-void
.end method

.method private static final showToolTips$lambda$3$lambda$2$lambda$1$lambda$0(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher/guide/GuidePageManager;->hideWidgetMoveTip(Landroid/content/Context;)V

    :cond_15
    return-void
.end method


# virtual methods
.method public final alphaDestroyAnimation()Landroid/animation/ObjectAnimator;
    .registers 4

    const-string v0, "Togglebar"

    const-string v1, "ToggleBarMainUIController"

    const-string v2, "alphaDestroyAnimation."

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-nez v0, :cond_e

    goto :goto_13

    :cond_e
    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :goto_13
    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-nez v0, :cond_18

    goto :goto_1c

    :cond_18
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1c
    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_42

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x8c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_MAIN_UI:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v1, "animator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$alphaDestroyAnimation$$inlined$doOnEnd$1;

    invoke-direct {v1, p0}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$alphaDestroyAnimation$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_42
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public final animationContentAlpha(ZJ)V
    .registers 8

    const-string v0, "animationContentAlpha, show = "

    const-string v1, "Togglebar"

    const-string v2, "ToggleBarMainUIController"

    invoke-static {v0, p1, v1, v2}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz p1, :cond_10

    move v2, v0

    goto :goto_11

    :cond_10
    move v2, v1

    :goto_11
    if-eqz p1, :cond_14

    move v0, v1

    :cond_14
    iget-object v1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-nez v1, :cond_19

    goto :goto_1d

    :cond_19
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1d
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x8c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    sget-object v0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_MAIN_UI:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$animationContentAlpha$1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$animationContentAlpha$1$1;-><init>(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;Z)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, p2, p3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-eqz p0, :cond_3e

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3e
    return-void
.end method

.method public final animationForDestroyMainUI(ZLjava/lang/Runnable;)Landroid/animation/Animator;
    .registers 7

    const-string v0, "completeRunnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animationForDestroyMainUI, alphaFadeOut = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", RecyclerView state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_26

    :cond_25
    move-object v1, v2

    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Togglebar"

    const-string v3, "ToggleBarMainUIController"

    invoke-static {v1, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    :cond_3b
    if-nez p1, :cond_71

    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-eqz p1, :cond_4a

    invoke-virtual {p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_4b

    :cond_4a
    move-object p1, v2

    :goto_4b
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eq p1, v0, :cond_53

    goto :goto_71

    :cond_53
    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    if-nez p1, :cond_5d

    const-string p0, "Can not execute destroy animation as null recyclerView\'s adapter"

    invoke-static {v1, v3, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_5d
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->itemDestroyAnimation(Landroid/view/View;Ljava/lang/Runnable;Z)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    if-eqz p2, :cond_6e

    invoke-virtual {p2}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->onMainUIDestroy()V

    :cond_6e
    iput-object v2, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    return-object p1

    :cond_71
    :goto_71
    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    if-eqz p1, :cond_78

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->onMainUIDestroy()V

    :cond_78
    iput-object v2, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->alphaDestroyAnimation()Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public canScrollVerticallyDown(II)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public createView(I)V
    .registers 10

    invoke-super {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->createView(I)V

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    const v3, 0x7f0a03b2

    invoke-virtual {p0, v3}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    iput-object v3, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    iget-object v3, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v3}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v4

    if-eqz v4, :cond_2c

    const v4, 0x7f0709a4

    goto :goto_2f

    :cond_2c
    const v4, 0x7f0709a5

    :goto_2f
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-eqz v4, :cond_53

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_53
    const/4 v3, 0x0

    if-eqz v0, :cond_85

    and-int/2addr p1, v2

    if-eqz p1, :cond_7d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cvFlags and hasMark = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " cvFlags and FLAG_CREATE_VIEW_CLOSE_ANIM = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " close anim"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ToggleBarMainUIController"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8c

    :cond_7d
    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-eqz p1, :cond_8c

    invoke-virtual {p1, v3, v2}, Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;->initLayoutAnimation(Landroid/view/View;Z)V

    goto :goto_8c

    :cond_85
    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-eqz p1, :cond_8c

    invoke-virtual {p1, v3, v2}, Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;->initLayoutAnimation(Landroid/view/View;Z)V

    :cond_8c
    :goto_8c
    new-instance p1, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    const-string v4, "mLauncher"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->parserToggleBarContent(Lcom/android/launcher/Launcher;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p1, v0, v4}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;-><init>(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-nez v0, :cond_a8

    goto :goto_ab

    :cond_a8
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_ab
    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071068

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-eqz v0, :cond_c4

    new-instance v4, Lcom/android/launcher/togglebar/RvItemDecoration;

    invoke-direct {v4, p1, v1}, Lcom/android/launcher/togglebar/RvItemDecoration;-><init>(II)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_c4
    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_d5

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    if-eqz p1, :cond_d5

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getLastColorState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    goto :goto_d6

    :cond_d5
    move-object p1, v3

    :goto_d6
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_119

    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-nez p1, :cond_e3

    goto :goto_f9

    :cond_e3
    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_f5

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_f5

    const v1, 0x7f120651

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f6

    :cond_f5
    move-object v0, v3

    :goto_f6
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_f9
    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-eqz p1, :cond_102

    const/16 v0, 0x40

    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_102
    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_111

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    if-eqz p1, :cond_111

    const/16 v0, 0x800

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    :cond_111
    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-nez p0, :cond_116

    goto :goto_119

    :cond_116
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :cond_119
    :goto_119
    return-void
.end method

.method public destroy(Z)V
    .registers 5

    const-string v0, "destroy, animate = "

    const-string v1, ", mAdapter = "

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Togglebar"

    const-string v2, "ToggleBarMainUIController"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->dismissToolTip()V

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    :cond_22
    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->destroy()V

    :cond_29
    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    if-eqz v0, :cond_30

    invoke-super {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->destroy(Z)V

    :cond_30
    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-nez p1, :cond_57

    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-nez p1, :cond_3f

    goto :goto_43

    :cond_3f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_43
    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-eqz p1, :cond_57

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f120652

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_57
    return-void
.end method

.method public final dismissToolTip()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->widgetMoveToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismiss()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->widgetMoveToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-void
.end method

.method public getContentLayoutId()I
    .registers 1

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, 0x7f0d0272

    goto :goto_d

    :cond_a
    const p0, 0x7f0d0271

    :goto_d
    return p0
.end method

.method public getContentView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    return-object p0
.end method

.method public getContentViewHeight()I
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f071074

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_23

    :cond_18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f071073

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_23
    return p0
.end method

.method public final getMAdapter()Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    return-object p0
.end method

.method public final getWidgetMoveToolTips()Lcom/coui/appcompat/tooltips/COUIToolTips;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->widgetMoveToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-object p0
.end method

.method public onWallpaperBrightnessChanged()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->onWallpaperBrightnessChanged()V

    :cond_7
    return-void
.end method

.method public final parserToggleBarContent(Lcom/android/launcher/Launcher;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/togglebar/item/ToggleBarItem;",
            ">;"
        }
    .end annotation

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->isCustomizeChangeWallpaperDisabled(Landroid/content/Context;)Z

    move-result v2

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v3

    const/4 v4, 0x0

    :try_start_1b
    sget-boolean v5, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v5, :cond_27

    const v5, 0x7f15002c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    goto :goto_2e

    :cond_27
    const v5, 0x7f15002b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    :goto_2e
    if-nez v4, :cond_31

    goto :goto_86

    :cond_31
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    const-string v6, "items"

    invoke-static {v4, v6}, Lcom/android/launcher3/AutoInstallsLayout;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_3a
    :goto_3a
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_86

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    if-ne v6, v9, :cond_3a

    sget-object v6, Lcom/android/launcher3/R$styleable;->TogPreview:[I

    invoke-virtual {p1, v5, v6}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    const-string v10, "item"

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_80

    if-eqz v6, :cond_80

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-direct {p0, v3, v7, v2, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->isIgnoreItem(ZIZLcom/android/launcher/Launcher;)Z

    move-result v10

    if-eqz v10, :cond_64

    goto :goto_3a

    :cond_64
    invoke-virtual {v6, v9, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/4 v10, 0x3

    invoke-virtual {v6, v10, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v10, Lcom/android/launcher/togglebar/item/ToggleBarItem;

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v8, v9}, Lcom/android/launcher/togglebar/item/ToggleBarItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v7}, Lcom/android/launcher/togglebar/item/ToggleBarItem;->setViewId(I)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_80
    if-eqz v6, :cond_3a

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3a

    :cond_86
    :goto_86
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_88
    .catchall {:try_start_1b .. :try_end_88} :catchall_89

    goto :goto_8e

    :catchall_89
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_8e
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_9b

    const-string p1, "Got IOException parsing  default_allapps favorites.  e = "

    const-string v1, "ToggleBarMainUIController"

    invoke-static {p1, p0, v1}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_9b
    if-eqz v4, :cond_a0

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_a0
    return-object v0
.end method

.method public pause(IZ)V
    .registers 5

    if-eqz p2, :cond_8

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->animationContentAlpha(ZJ)V

    :cond_8
    return-void
.end method

.method public resume(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->updateAccessibilityFlags(Z)V

    return-void
.end method

.method public final setMAdapter(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    return-void
.end method

.method public final setWidgetMoveToolTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->widgetMoveToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-void
.end method

.method public final showToolTips()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->widgetMoveToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    if-eqz v1, :cond_11

    return-void

    :cond_11
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportCard()Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSupportCardAndWidgetCombine:Z

    if-nez v0, :cond_1c

    goto :goto_2a

    :cond_1c
    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-eqz v0, :cond_2a

    new-instance v1, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2a
    :goto_2a
    return-void
.end method
