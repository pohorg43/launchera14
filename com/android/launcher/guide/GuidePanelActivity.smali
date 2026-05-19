.class public final Lcom/android/launcher/guide/GuidePanelActivity;
.super Lcom/android/launcher/OplusBaseAppCompatActivity;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter;,
        Lcom/android/launcher/guide/GuidePanelActivity$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGuidePanelActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GuidePanelActivity.kt\ncom/android/launcher/guide/GuidePanelActivity\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,255:1\n42#2:256\n94#2,14:257\n31#2:271\n94#2,14:272\n*S KotlinDebug\n*F\n+ 1 GuidePanelActivity.kt\ncom/android/launcher/guide/GuidePanelActivity\n*L\n176#1:256\n176#1:257,14\n194#1:271\n194#1:272,14\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/guide/GuidePanelActivity$Companion;

.field public static final DURATION_DO_COLLAPSED_ANIM:J = 0x12cL

.field public static final INTENT_EXTRA_KEY:Ljava/lang/String; = "guide_type"

.field public static final REQUEST_CODE_FOR_GUIDE_PANEL_WORK_EDU:I = 0x4e21

.field public static final TAG:Ljava/lang/String; = "GuidePanelActivity"

.field public static final TYPE_BATCH_PROCESS:I = 0x1

.field public static final TYPE_MULTI_FINGER:I = 0x2

.field public static final TYPE_NO_GUIDE:I = 0x0

.field public static final TYPE_WORK_EDU_PAGE:I = 0x3


# instance fields
.field private mBinding:Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;

.field private mContext:Landroid/content/Context;

.field private mGuidePagerNum:I

.field private mGuideType:I

.field private mPanelGuideBehavior:Lcom/coui/appcompat/panel/COUIGuideBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coui/appcompat/panel/COUIGuideBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/guide/GuidePanelActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/guide/GuidePanelActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/guide/GuidePanelActivity;->Companion:Lcom/android/launcher/guide/GuidePanelActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/OplusBaseAppCompatActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMBinding$p(Lcom/android/launcher/guide/GuidePanelActivity;)Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mBinding:Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;

    return-object p0
.end method

.method public static final synthetic access$getMContext$p(Lcom/android/launcher/guide/GuidePanelActivity;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMPanelGuideBehavior$p(Lcom/android/launcher/guide/GuidePanelActivity;)Lcom/coui/appcompat/panel/COUIGuideBehavior;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mPanelGuideBehavior:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    return-object p0
.end method

.method private final doAlphaAnim(Z)V
    .registers 8

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    move v2, v1

    goto :goto_8

    :cond_7
    move v2, v0

    :goto_8
    if-eqz p1, :cond_c

    move v3, v0

    goto :goto_d

    :cond_c
    move v3, v1

    :goto_d
    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v2, 0x1

    aput v3, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e19999a  # 0.15f

    invoke-direct {v3, v1, v1, v4, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/launcher/download/s;

    invoke-direct {v0, p0}, Lcom/android/launcher/download/s;-><init>(Lcom/android/launcher/guide/GuidePanelActivity;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v0, "doAlphaAnim$lambda$12"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher/guide/GuidePanelActivity$doAlphaAnim$lambda$12$$inlined$doOnEnd$1;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher/guide/GuidePanelActivity$doAlphaAnim$lambda$12$$inlined$doOnEnd$1;-><init>(ZLcom/android/launcher/guide/GuidePanelActivity;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static final doAlphaAnim$lambda$12$lambda$10(Lcom/android/launcher/guide/GuidePanelActivity;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mBinding:Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;

    if-nez p0, :cond_20

    const-string p0, "mBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_20
    iget-object p0, p0, Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;->guideOutsizeView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private final doTranslateAnim()V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mBinding:Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;

    if-nez v1, :cond_d

    const-string v1, "mBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_d
    iget-object v1, v1, Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;->guideLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e19999a  # 0.15f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher/guide/f;

    invoke-direct {v1, p0}, Lcom/android/launcher/guide/f;-><init>(Lcom/android/launcher/guide/GuidePanelActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v1, "doTranslateAnim$lambda$9"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher/guide/GuidePanelActivity$doTranslateAnim$lambda$9$$inlined$doOnStart$1;

    invoke-direct {v1, p0}, Lcom/android/launcher/guide/GuidePanelActivity$doTranslateAnim$lambda$9$$inlined$doOnStart$1;-><init>(Lcom/android/launcher/guide/GuidePanelActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static final doTranslateAnim$lambda$9$lambda$7(Lcom/android/launcher/guide/GuidePanelActivity;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mBinding:Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;

    if-nez p0, :cond_20

    const-string p0, "mBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_20
    iget-object p0, p0, Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;->guideLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher/guide/GuidePanelActivity;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/guide/GuidePanelActivity;->doAlphaAnim$lambda$12$lambda$10(Lcom/android/launcher/guide/GuidePanelActivity;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher/guide/GuidePanelActivity;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/guide/GuidePanelActivity;->doTranslateAnim$lambda$9$lambda$7(Lcom/android/launcher/guide/GuidePanelActivity;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic h(Lcom/android/launcher/guide/GuidePanelActivity;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/guide/GuidePanelActivity;->initPagerIndicator$lambda$5$lambda$4(Lcom/android/launcher/guide/GuidePanelActivity;I)V

    return-void
.end method

.method private final hideGuide()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mPanelGuideBehavior:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    if-nez v0, :cond_5

    goto :goto_9

    :cond_5
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->setState(I)V

    :goto_9
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher/guide/GuidePanelActivity;->doAlphaAnim(Z)V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher/guide/GuidePanelActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/guide/GuidePanelActivity;->initGuideBottom$lambda$6(Lcom/android/launcher/guide/GuidePanelActivity;Landroid/view/View;)V

    return-void
.end method

.method private final initGuideBehavior()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mBinding:Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;

    if-nez v0, :cond_a

    const-string v0, "mBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    iget-object v0, v0, Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;->guideLayout:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->from(Landroid/view/View;)Lcom/coui/appcompat/panel/COUIGuideBehavior;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->setHideable(Z)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->setSkipCollapsed(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->setDraggable(Z)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->setState(I)V

    iput-object v0, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mPanelGuideBehavior:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    return-void
.end method

.method private final initGuideBottom()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mBinding:Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;

    if-nez v0, :cond_a

    const-string v0, "mBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    iget-object v0, v0, Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;->guideButton:Lcom/coui/appcompat/button/COUIButton;

    new-instance v1, Lcom/android/launcher/guide/g;

    invoke-direct {v1, p0}, Lcom/android/launcher/guide/g;-><init>(Lcom/android/launcher/guide/GuidePanelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final initGuideBottom$lambda$6(Lcom/android/launcher/guide/GuidePanelActivity;Landroid/view/View;)V
    .registers 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePanelActivity;->hideGuide()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private final initGuideLayout()V
    .registers 7

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    const-string v1, "mBinding"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_47

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->j(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mBinding:Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;

    if-nez v0, :cond_27

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_27
    iget-object v0, v0, Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;->guideLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v4, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v4, :cond_34

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    goto :goto_35

    :cond_34
    move-object v0, v3

    :goto_35
    if-eqz v0, :cond_47

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070cbe

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    :cond_47
    iget v0, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mGuidePagerNum:I

    if-gt v0, v2, :cond_70

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mBinding:Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;

    if-nez v0, :cond_53

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_53
    iget-object v0, v0, Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;->guideContentContainer:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_60

    move-object v3, v0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    :cond_60
    if-eqz v3, :cond_70

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070cb6

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_70
    return-void
.end method

.method private final initPagerAdapter()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mBinding:Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;

    if-nez v0, :cond_a

    const-string v0, "mBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    iget-object v0, v0, Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;->guideContentContainer:Landroidx/viewpager2/widget/ViewPager2;

    iget v1, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mGuidePagerNum:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_29

    new-instance v1, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter;

    iget-object v2, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mGuideType:I

    invoke-direct {v1, v2, v3}, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, Lcom/android/launcher/guide/GuidePanelActivity$initPagerAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/android/launcher/guide/GuidePanelActivity$initPagerAdapter$1$1;-><init>(Lcom/android/launcher/guide/GuidePanelActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    goto :goto_38

    :cond_29
    new-instance v1, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter;

    iget-object v2, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p0, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mGuideType:I

    invoke-direct {v1, v2, p0}, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_38
    return-void
.end method

.method private final initPagerIndicator()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mBinding:Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;

    const/4 v1, 0x0

    const-string v2, "mBinding"

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    iget-object v0, v0, Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;->guideContentIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-eqz v0, :cond_3c

    iget v3, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mGuidePagerNum:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_37

    iget-object v3, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mBinding:Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;

    if-nez v3, :cond_1c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1d

    :cond_1c
    move-object v1, v3

    :goto_1d
    iget-object v1, v1, Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;->guideContentContainer:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setDotsCount(I)V

    new-instance v1, Lcom/android/launcher/folder/recommend/c;

    invoke-direct {v1, p0}, Lcom/android/launcher/folder/recommend/c;-><init>(Lcom/android/launcher/guide/GuidePanelActivity;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setOnDotClickListener(Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;)V

    goto :goto_3c

    :cond_37
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method private static final initPagerIndicator$lambda$5$lambda$4(Lcom/android/launcher/guide/GuidePanelActivity;I)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mBinding:Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;

    if-nez p0, :cond_10

    const-string p0, "mBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_10
    iget-object p0, p0, Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;->guideContentContainer:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    return-void
.end method

.method private final initView()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePanelActivity;->initGuideBehavior()V

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePanelActivity;->initGuideLayout()V

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePanelActivity;->initPagerAdapter()V

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePanelActivity;->initPagerIndicator()V

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePanelActivity;->initGuideBottom()V

    return-void
.end method

.method private final showGuide()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    invoke-static {p0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060377

    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_1c
    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePanelActivity;->doTranslateAnim()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher/guide/GuidePanelActivity;->doAlphaAnim(Z)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/launcher/OplusBaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mBinding:Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;

    if-nez p1, :cond_1a

    const-string p1, "mBinding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1a
    invoke-virtual {p1}, Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/OplusBaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    invoke-static {p0}, Lcom/android/common/util/ToolbarUtils;->setStatusBarTransparentAndBlackFontOS12(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "guide_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mGuideType:I

    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3d

    const/4 v3, 0x3

    if-ne p1, v3, :cond_39

    goto :goto_3d

    :cond_39
    if-ne p1, v0, :cond_3e

    move v1, v0

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v1, v2

    :cond_3e
    :goto_3e
    iput v1, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mGuidePagerNum:I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePanelActivity;->initView()V

    return-void
.end method

.method public onDestroy()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mBinding:Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;

    if-nez v0, :cond_a

    const-string v0, "mBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    iget-object v0, v0, Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;->guideLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mPanelGuideBehavior:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    if-nez v0, :cond_15

    goto :goto_19

    :cond_15
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->setState(I)V

    :goto_19
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onPreDraw()Z
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePanelActivity;->showGuide()V

    const/4 p0, 0x1

    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePanelActivity;->mBinding:Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;

    if-nez v0, :cond_10

    const-string v0, "mBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_10
    iget-object v0, v0, Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;->guideContentContainer:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
