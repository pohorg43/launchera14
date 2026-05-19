.class public final Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;
.super Lcom/android/launcher3/AbstractFloatingView;
.source ""

# interfaces
.implements Lcom/android/launcher3/SystemWindowInsettable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBranchGuidePagePanel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BranchGuidePagePanel.kt\ncom/android/launcher3/allapps/branch/BranchGuidePagePanel\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,409:1\n151#2,6:410\n163#2,6:416\n*S KotlinDebug\n*F\n+ 1 BranchGuidePagePanel.kt\ncom/android/launcher3/allapps/branch/BranchGuidePagePanel\n*L\n402#1:410,6\n403#1:416,6\n*E\n"
    }
.end annotation


# static fields
.field private static final AUTO_CLOSE_PROGRESS:F = 0.5f

.field public static final Companion:Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel$Companion;

.field private static final FLOAT_0:F = 0.0f

.field private static final FLOAT_1:F = 1.0f

.field public static final KEY_ENABLE_SERVICE_DECLARE_PANEL:Ljava/lang/String; = "key_enable_branch_service_declare_panel"

.field public static final KEY_LAYOUT_OPTIMIZE_PANEL_SHOW_LIMIT:Ljava/lang/String; = "key_branch_layout_optimize_panel_show_limit"

.field public static final KEY_SERVICE_DECLARE_PANEL_SHOW_COUNT:Ljava/lang/String; = "key_branch_service_declare_panel_show_count"

.field private static final MAX_AUTO_ANIM_DURATION:I = 0x190

.field private static final MAX_FLING_AUTO_ANIM_DURATION:I = 0x1f4

.field private static final MAX_SWIPE_ANGLE:F = 1.0471976f

.field private static final MAX_VELOCITY:I = 0x5dc0

.field private static final MIN_FLING_AUTO_ANIM_DURATION:I = 0xfa

.field public static final SERVICE_DECLARE_CHECK_SHOW_LIMIT:I = 0x2

.field public static final TAG:Ljava/lang/String; = "BranchGuidePagePanel"

.field public static final TYPE_LAYOUT_OPTIMIZE:I = 0x1

.field public static final TYPE_SERVICE_DECLARE:I = 0x2

.field private static final VELOCITY_UNIT:I = 0x3e8


# instance fields
.field private mAutoAnimEndValue:F

.field private mColorAllAppsContainerView:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

.field private mCurProgress:F

.field private mDeclarePanelShowCount:I

.field private final mDialogDismissCallback:Lcom/android/launcher/folder/recommend/DialogDismissCallback;

.field private mEnabledCheck:Landroid/widget/CheckBox;

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private mPanelAnimator:Landroid/animation/ObjectAnimator;

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewHeight:I

.field private mViewType:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->Companion:Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    const-string p2, "fromContext(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mViewType:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->onAttachedToWindow$lambda$4(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$closeComplete(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->closeComplete()V

    return-void
.end method

.method public static final synthetic access$getMAutoAnimEndValue$p(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mAutoAnimEndValue:F

    return p0
.end method

.method public static final synthetic access$setMColorAllAppsContainerView$p(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mColorAllAppsContainerView:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    return-void
.end method

.method public static final synthetic access$setMViewType$p(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mViewType:I

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->playAutoTouchUpAnimIfNecessary$lambda$5(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->onAttachedToWindow$lambda$0(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;Landroid/view/View;)V

    return-void
.end method

.method private final closeComplete()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    const-string/jumbo v1, "mLauncher.dragLayer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mViewType:I

    const/4 v1, 0x2

    const-string v2, "key_enable_branch_service_declare_panel"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_57

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mLauncher:Lcom/android/launcher/Launcher;

    const-string v4, "key_branch_layout_optimize_panel_show_limit"

    invoke-static {v0, v4, v3}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->getPersonalizeSearchSetting()Z

    move-result v0

    if-nez v0, :cond_9f

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0, v2, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_9f

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_9f

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->Companion:Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel$Companion;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mColorAllAppsContainerView:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel$Companion;->createPanel(Landroid/content/Context;ILcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)V

    goto :goto_9f

    :cond_57
    if-ne v0, v1, :cond_9f

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mLauncher:Lcom/android/launcher/Launcher;

    iget v1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mDeclarePanelShowCount:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mDeclarePanelShowCount:I

    const-string v5, "key_branch_service_declare_panel_show_count"

    invoke-static {v0, v5, v1}, Lcom/android/common/util/LauncherSharedPrefs;->putIntCommit(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mEnabledCheck:Landroid/widget/CheckBox;

    if-eqz v0, :cond_9a

    const-string/jumbo v1, "mViewType:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mViewType:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",check : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "BranchGuidePagePanel"

    invoke-static {v5, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0, v2, v4}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/allapps/branch/BranchManager;->setReIntoDrawer(Z)V

    :cond_9a
    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0, v2, v4}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_9f
    :goto_9f
    return-void
.end method

.method public static final createPanel(Landroid/content/Context;ILcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->Companion:Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel$Companion;->createPanel(Landroid/content/Context;ILcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->onAttachedToWindow$lambda$2(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;Landroid/view/View;)V

    return-void
.end method

.method private final dragAngleDetect(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mTouchDownY:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_d

    return v1

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mTouchDownX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget p0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mTouchDownY:I

    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    int-to-float v2, v2

    cmpg-float p1, v2, p1

    const/4 v2, 0x1

    if-nez p1, :cond_32

    move p1, v2

    goto :goto_33

    :cond_32
    move p1, v1

    :goto_33
    if-eqz p1, :cond_37

    const/high16 v0, 0x3f800000  # 1.0f

    :cond_37
    div-float/2addr p0, v0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    double-to-float p0, p0

    const p1, 0x3f860a92

    cmpl-float p0, p0, p1

    if-lez p0, :cond_46

    move v1, v2

    :cond_46
    return v1
.end method

.method private final handleMove(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mTouchDownY:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mViewHeight:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mCurProgress:F

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1d

    iput v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mCurProgress:F

    goto :goto_25

    :cond_1d
    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_25

    iput v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mCurProgress:F

    :cond_25
    :goto_25
    iget p1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mCurProgress:F

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->playDragDownAnimWithProgress(F)V

    return-void
.end method

.method private final initPolicySpan()Landroid/text/SpannableString;
    .registers 15

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/branch/BranchManager;->getResourceId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/launcher3/allapps/branch/BranchManager;->getResourceId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lcom/android/launcher3/allapps/branch/BranchManager;->getResourceId(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const-string/jumbo v6, "template"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    :goto_52
    const/16 v9, 0x25

    const/4 v10, -0x1

    const/4 v11, 0x1

    if-ge v8, v6, :cond_67

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-ne v12, v9, :cond_60

    move v12, v11

    goto :goto_61

    :cond_60
    move v12, v7

    :goto_61
    if-eqz v12, :cond_64

    goto :goto_68

    :cond_64
    add-int/lit8 v8, v8, 0x1

    goto :goto_52

    :cond_67
    move v8, v10

    :goto_68
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/2addr v6, v10

    if-ltz v6, :cond_83

    :goto_6f
    add-int/lit8 v12, v6, -0x1

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ne v13, v9, :cond_79

    move v13, v11

    goto :goto_7a

    :cond_79
    move v13, v7

    :goto_7a
    if-eqz v13, :cond_7e

    move v10, v6

    goto :goto_83

    :cond_7e
    if-gez v12, :cond_81

    goto :goto_83

    :cond_81
    move v6, v12

    goto :goto_6f

    :cond_83
    :goto_83
    new-instance v6, Landroid/text/SpannableString;

    sget-object v9, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v2, v9, v7

    aput-object v1, v9, v11

    const-string v1, "format(format, *args)"

    invoke-static {v9, v3, v0, v1}, Lcom/android/common/debug/b;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment$URLSpanNoUnderline;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->getBranchNavigatorUrl()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment$URLSpanNoUnderline;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    add-int v1, v8, v4

    const/16 v3, 0x21

    invoke-virtual {v6, v0, v8, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment$URLSpanNoUnderline;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->getBranchNavigatorUrl()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment$URLSpanNoUnderline;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    add-int/2addr v10, v4

    add-int/lit8 p0, v10, -0x4

    add-int/2addr v10, v5

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {v6, v0, p0, v10, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v6
.end method

.method private static final onAttachedToWindow$lambda$0(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;Landroid/view/View;)V
    .registers 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method private static final onAttachedToWindow$lambda$2(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;Landroid/view/View;)V
    .registers 4

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mColorAllAppsContainerView:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->showKeyboardInDrawerPage()V

    :cond_1b
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "3.1"

    invoke-virtual {p0, v0, p1}, Lcom/android/statistics/LauncherStatistics;->statsServiceDeclareClick(Ljava/lang/String;I)V

    return-void
.end method

.method private static final onAttachedToWindow$lambda$4(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;Landroid/view/View;)V
    .registers 6

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/allapps/branch/BranchManager;->enableSearch(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "show_inputmethod_in_drawer_switch"

    invoke-static {v0, v2, v1}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    new-instance v0, Lio/branch/search/CustomEvent;

    invoke-direct {v0}, Lio/branch/search/CustomEvent;-><init>()V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "OPT_IN"

    invoke-virtual {v0, v3, v2}, Lio/branch/search/CustomEvent;->set(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/search/CustomEvent;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/AnalyticsEvent;->track()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mColorAllAppsContainerView:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-eqz v0, :cond_3e

    iget-object v2, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/branch/BranchManager;->refillAdapterItemsAndUpdate()V

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->showKeyboardInDrawerPage()V

    :cond_3e
    invoke-virtual {p0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    const-string p1, "3.1"

    invoke-virtual {p0, p1, v1}, Lcom/android/statistics/LauncherStatistics;->statsServiceDeclareClick(Ljava/lang/String;I)V

    return-void
.end method

.method private final playAutoTouchUpAnimIfNecessary(F)V
    .registers 11

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mCurProgress:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_13

    invoke-direct {p0}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->closeComplete()V

    return-void

    :cond_13
    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1c

    move v3, v4

    goto :goto_1d

    :cond_1c
    move v3, v5

    :goto_1d
    if-eqz v3, :cond_20

    return-void

    :cond_20
    iput v2, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mAutoAnimEndValue:F

    cmpl-float v2, p1, v1

    if-lez v2, :cond_28

    move v2, v4

    goto :goto_29

    :cond_28
    move v2, v5

    :goto_29
    const/high16 v3, 0x3f000000  # 0.5f

    cmpl-float v6, v0, v3

    if-gtz v6, :cond_31

    if-eqz v2, :cond_33

    :cond_31
    iput v1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mAutoAnimEndValue:F

    :cond_33
    const/16 v6, 0x1f4

    const/16 v7, 0xfa

    const/4 v8, 0x2

    if-eqz v2, :cond_4b

    iget v3, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mViewHeight:I

    mul-int/2addr v3, v8

    int-to-float v3, v3

    sub-float/2addr v1, v0

    mul-float/2addr v1, v3

    div-float/2addr v1, p1

    float-to-int v0, v1

    if-ge v0, v7, :cond_46

    move v6, v7

    goto :goto_59

    :cond_46
    if-le v0, v6, :cond_49

    goto :goto_59

    :cond_49
    :goto_49
    move v6, v0

    goto :goto_59

    :cond_4b
    cmpg-float v3, v0, v3

    const/16 v6, 0x190

    if-gez v3, :cond_54

    int-to-float v1, v6

    mul-float/2addr v1, v0

    goto :goto_57

    :cond_54
    int-to-float v3, v6

    sub-float/2addr v1, v0

    mul-float/2addr v1, v3

    :goto_57
    float-to-int v0, v1

    goto :goto_49

    :goto_59
    const-string/jumbo v0, "playAutoTouchUpAnimationIfNecessary progress:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mCurProgress:F

    const-string v3, ",velocityY:"

    const-string v7, ",mMaxHeightDiff:"

    invoke-static {v0, v1, v3, p1, v7}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    iget p1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mViewHeight:I

    const-string v1, ",duration:"

    const-string v3, ", fling = "

    invoke-static {v0, p1, v1, v6, v3}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mAutoEndValue = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mAutoAnimEndValue:F

    const-string v1, "BranchGuidePagePanel"

    invoke-static {v0, p1, v1}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    new-array p1, v8, [F

    iget v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mCurProgress:F

    aput v0, p1, v5

    iget v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mAutoAnimEndValue:F

    aput v0, p1, v4

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    int-to-long v0, v6

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_4:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/launcher/batchdrag/a;

    invoke-direct {v0, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel$playAutoTouchUpAnimIfNecessary$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel$playAutoTouchUpAnimIfNecessary$2;-><init>(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static final playAutoTouchUpAnimIfNecessary$lambda$5(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "valueAnimator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->playDragDownAnimWithProgress(F)V

    return-void
.end method

.method private final playDragDownAnimWithProgress(F)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mViewHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public final animateShow()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mLauncher:Lcom/android/launcher/Launcher;

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;

    if-eqz v0, :cond_24

    const-string v0, "BranchGuidePagePanel"

    const-string/jumbo v1, "the panel is showing!"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    const-string/jumbo v1, "mLauncher.dragLayer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void

    :cond_24
    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/OplusDeviceProfile;->getWorkspaceInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.views.BaseDragLayer.LayoutParams"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070866

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    const/4 v1, 0x2

    new-array v1, v1, [F

    int-to-float v2, v3

    const/4 v3, 0x0

    aput v2, v1, v3

    int-to-float v2, v3

    aput v2, v1, v0

    const-string/jumbo v0, "translationY"

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1a4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/common/config/AnimationConstant;->CURVE_MOVE_EASE:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public handleClose(Z)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleClose: animate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BranchGuidePagePanel"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v0

    if-nez v0, :cond_22

    const-string p0, "handleClose, the panel not open yet!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_22
    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mDialogDismissCallback:Lcom/android/launcher/folder/recommend/DialogDismissCallback;

    if-eqz v0, :cond_29

    invoke-interface {v0}, Lcom/android/launcher/folder/recommend/DialogDismissCallback;->dismiss()V

    :cond_29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mCurProgress:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v1}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_3e
    if-eqz p1, :cond_8a

    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.views.BaseDragLayer.LayoutParams"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iget v3, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mViewHeight:I

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p1

    int-to-float p1, v3

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v1, v2, v0

    const/4 v0, 0x1

    aput p1, v2, v0

    const-string/jumbo p1, "translationY"

    invoke-static {p0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xf0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/android/common/config/AnimationConstant;->CURVE_MOVE_OUT:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel$handleClose$1$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel$handleClose$1$1;-><init>(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_8d

    :cond_8a
    invoke-direct {p0}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->closeComplete()V

    :goto_8d
    return-void
.end method

.method public isOfType(I)Z
    .registers 2

    const/high16 p0, 0x100000

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final logActionCommand(I)V
    .registers 2

    const-string p0, "BranchGuidePagePanel"

    const-string p1, "logActionCommand"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 5

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const-string/jumbo v0, "onAttachedToWindow mDeclarePanelShowCount = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mDeclarePanelShowCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mViewType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mViewType:I

    const-string v2, "BranchGuidePagePanel"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mViewType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    const v0, 0x7f0a00f8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    new-instance v1, Lcom/android/common/util/b1;

    invoke-direct {v1, p0}, Lcom/android/common/util/b1;-><init>(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_99

    :cond_32
    const/4 v1, 0x2

    if-ne v0, v1, :cond_99

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "key_branch_service_declare_panel_show_count"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mDeclarePanelShowCount:I

    const v0, 0x7f0a010f

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    new-instance v2, Lcom/android/common/util/c1;

    invoke-direct {v2, p0}, Lcom/android/common/util/c1;-><init>(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0110

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    new-instance v2, Lcom/android/launcher/u;

    invoke-direct {v2, p0}, Lcom/android/launcher/u;-><init>(Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0114

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mEnabledCheck:Landroid/widget/CheckBox;

    iget v2, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mDeclarePanelShowCount:I

    if-lt v2, v1, :cond_7a

    if-nez v0, :cond_76

    goto :goto_82

    :cond_76
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_82

    :cond_7a
    if-nez v0, :cond_7d

    goto :goto_82

    :cond_7d
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_82
    const v0, 0x7f0a0115

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->initPolicySpan()Landroid/text/SpannableString;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_99
    :goto_99
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mTouchDownX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mTouchDownY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mCurProgress:F

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    const-string/jumbo v1, "mLauncher.dragLayer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_33

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return p1

    :cond_33
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->dragAngleDetect(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_18

    if-nez v1, :cond_18

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    :cond_18
    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_22

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_22
    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_29

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_29
    const/4 v1, 0x1

    if-eq v0, v1, :cond_37

    const/4 v2, 0x2

    if-eq v0, v2, :cond_33

    const/4 p1, 0x3

    if-eq v0, p1, :cond_37

    goto :goto_6a

    :cond_33
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->handleMove(Landroid/view/MotionEvent;)V

    goto :goto_6a

    :cond_37
    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    if-eqz p1, :cond_43

    const v2, 0x46bb8000  # 24000.0f

    invoke-virtual {p1, v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    :cond_43
    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v2, 0x0

    if-eqz p1, :cond_51

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_52

    :cond_51
    move-object p1, v2

    :goto_52
    const-string/jumbo v3, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->playAutoTouchUpAnimIfNecessary(F)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_68

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    :cond_68
    iput-object v2, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_6a
    return v1
.end method

.method public onFinishInflate()V
    .registers 6

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0a010d

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v3

    if-eqz v3, :cond_2f

    sget-object v3, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v4, "context"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4}, Lcom/android/common/config/ScreenInfo$Companion;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result p0

    goto :goto_30

    :cond_2f
    const/4 p0, 0x0

    :goto_30
    add-int/2addr v2, p0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p2, p0, Lcom/android/launcher3/allapps/branch/BranchGuidePagePanel;->mViewHeight:I

    return-void
.end method

.method public setWindowInsets(Landroid/graphics/Rect;)V
    .registers 2

    const-string p0, "BranchGuidePagePanel"

    const-string/jumbo p1, "setWindowInsets"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
