.class public Lcom/oplus/quickstep/views/OplusClearAllPanelView;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# static fields
.field private static final ALPHA_FLAG:F = 0.5f

.field public static final ATHENA_PACKAGE:Ljava/lang/String; = "com.oplus.athena"

.field private static final DOCK_SPACE_PERCENT:F = 0.55f

.field private static final DOCK_SPACE_PERCENT_SMALL:F = 0.45f

.field private static final ENTER_ANIMATION_DURATION:J = 0x190L

.field private static final MEMORY_CHANGE_ANIMATION_DURATION:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "OplusClearAllPanelView"

.field public static final VISIBILITY_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/oplus/quickstep/views/OplusClearAllPanelView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimationStartNumber:F

.field private mAnimationStartProgress:F

.field private mBottomMargin:I

.field private mBottomSpace:I

.field private mCleanStorage:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

.field private mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

.field private mClearAllButtonStub:Landroid/view/ViewStub;

.field private mClearClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentAnimationProgress:F

.field private mCurrentMemoryNumber:F

.field private mDecimalFormat:Ljava/text/DecimalFormat;

.field private mEnterAnim:Landroid/animation/Animator;

.field private mExitAnimator:Landroid/animation/Animator;

.field private mFinalMemoryStr:Ljava/lang/String;

.field private mIsRecentsViewPortrait:Z

.field private final mIsRtl:Z

.field private mLastState:Lcom/android/launcher3/LauncherState;

.field private mLastTargetState:Lcom/android/launcher3/states/OPlusBaseState;

.field private mMemoryChangeAnimation:Landroid/animation/ValueAnimator;

.field private mMemoryInfoTv:Landroid/widget/TextView;

.field private mNewMemoryNumber:F

.field private mQuickExitAnimaingFlag:Z

.field private mRotateAnim:Landroid/animation/Animator;

.field public mRotationFlag:I

.field private mScreenHeight:I

.field private mShowingDialog:Landroid/app/Dialog;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$1;

    const-string v1, "visibilityAlpha"

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->VISIBILITY_ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mRotationFlag:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mIsRecentsViewPortrait:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCurrentMemoryNumber:F

    iput v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCurrentAnimationProgress:F

    iput v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mAnimationStartNumber:F

    iput v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mAnimationStartProgress:F

    iput v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mNewMemoryNumber:F

    iput-boolean p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mQuickExitAnimaingFlag:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mIsRtl:Z

    const/high16 p1, -0x31000000

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationZ(F)V

    new-instance p1, Ljava/text/DecimalFormat;

    const-string p2, "0.00"

    invoke-direct {p1, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mDecimalFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Landroid/view/View;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->lambda$inflateIfNeeded$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1002(Lcom/oplus/quickstep/views/OplusClearAllPanelView;F)F
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mAnimationStartProgress:F

    return p1
.end method

.method public static synthetic access$1102(Lcom/oplus/quickstep/views/OplusClearAllPanelView;F)F
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCurrentMemoryNumber:F

    return p1
.end method

.method public static synthetic access$1202(Lcom/oplus/quickstep/views/OplusClearAllPanelView;F)F
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCurrentAnimationProgress:F

    return p1
.end method

.method public static synthetic access$1302(Lcom/oplus/quickstep/views/OplusClearAllPanelView;F)F
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mNewMemoryNumber:F

    return p1
.end method

.method public static synthetic access$1402(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mQuickExitAnimaingFlag:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)Lcom/android/launcher/views/PressFeedbackButton;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCleanStorage:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mRotateAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mFinalMemoryStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryInfoTv:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$802(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryChangeAnimation:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic access$902(Lcom/oplus/quickstep/views/OplusClearAllPanelView;F)F
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mAnimationStartNumber:F

    return p1
.end method

.method public static synthetic b(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;ZLcom/oplus/quickstep/memory/MemoryInfoManager;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->lambda$updateMeminfo$1(Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;ZLcom/oplus/quickstep/memory/MemoryInfoManager;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Lcom/oplus/quickstep/memory/MemoryInfoManager;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->lambda$updateMeminfo$2(Lcom/oplus/quickstep/memory/MemoryInfoManager;Z)V

    return-void
.end method

.method private cancelEnterAnimator()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mEnterAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mEnterAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_f
    return-void
.end method

.method private cancelExitAnimator()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mExitAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_f
    return-void
.end method

.method private createEnterAnimation(Lcom/android/launcher3/states/StateAnimationConfig;I)Landroid/animation/Animator;
    .registers 5

    invoke-static {p1}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->isDockIconAndClearAllPanelLightAnim(Lcom/android/launcher3/states/StateAnimationConfig;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mIsRecentsViewPortrait:Z

    invoke-static {p1, p2, v0, p0}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->alphaTransYForClearAllPanelView(Lcom/android/launcher3/states/StateAnimationConfig;IZLandroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-boolean v1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mIsRecentsViewPortrait:Z

    invoke-static {p2, v1, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getTranslationPropForClearAllPanel(IZLcom/android/launcher3/states/StateAnimationConfig;)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    if-eqz p1, :cond_2c

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    invoke-static {p0, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_4:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_2c
    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_46

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 p0, 0x190

    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-object v0

    :array_46
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private createExitAnimation(Landroid/view/View;FF)Landroid/animation/Animator;
    .registers 8

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-boolean v1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mIsRecentsViewPortrait:Z

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->getEndLoaction(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v3, v1, p3, v2}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getTranslationPropForClearAllPanel(IZFF)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    const/4 v1, 0x1

    if-eqz p3, :cond_24

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object p3, v2, v3

    invoke-static {p1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p3

    sget-object v2, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_4:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_24
    sget-object p3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p2, v2, v3

    const/4 p2, 0x0

    aput p2, v2, v1

    invoke-static {p1, p3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 p1, 0xf0

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p1, Lcom/oplus/quickstep/views/OplusClearAllPanelView$6;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView$6;-><init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->lambda$setOnClearClickListener$5(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method private dismissShowingGrantDialog()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mShowingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mShowingDialog:Landroid/app/Dialog;

    :cond_a
    return-void
.end method

.method public static synthetic e(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Ljava/lang/String;ZLjava/lang/String;Landroid/animation/ValueAnimator;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->lambda$playMemoryChangeAnimation$6(Ljava/lang/String;ZLjava/lang/String;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->lambda$setOnClearClickListener$3()V

    return-void
.end method

.method public static synthetic g(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->lambda$setOnClearClickListener$4()V

    return-void
.end method

.method private getDescriptionString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f120463

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const p1, 0x7f120462

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getMemoryClearButtonDescriptionString: "

    const-string p2, "QuickStep"

    const-string v0, "OplusClearAllPanelView"

    invoke-static {p1, p0, p2, v0}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private getEndLoaction(Landroid/view/View;)I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->getScreenHeight(Z)I

    move-result p0

    const/4 v1, 0x1

    aget v0, v0, v1

    sub-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method private getScreenHeight(Z)I
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mScreenHeight:I

    if-eqz v0, :cond_6

    if-eqz p1, :cond_1c

    :cond_6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mScreenHeight:I

    :cond_1c
    iget p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mScreenHeight:I

    return p0
.end method

.method private inflateIfNeeded()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-nez v0, :cond_80

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/views/PressFeedbackButton;

    iput-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->shouldShowPhoneManagerCleanSwitch()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/RecentContainerView;

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/RecentContainerView;

    const v1, 0x7f0a0195

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    iput-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCleanStorage:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    :cond_37
    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    new-instance v1, Landroidx/core/view/b;

    invoke-direct {v1, p0}, Landroidx/core/view/b;-><init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    iget-object v1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c05

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_68
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_80

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    new-instance v1, Lcom/oplus/quickstep/views/OplusClearAllPanelView$2;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView$2;-><init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_80
    return-void
.end method

.method private isMemoryChangeAnimationRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryChangeAnimation:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isVisibleState(Lcom/android/launcher3/states/OPlusBaseState;)Z
    .registers 3
    .param p0  # Lcom/android/launcher3/states/OPlusBaseState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-eq p0, v1, :cond_c

    sget-object v1, Lcom/android/quickstep/fallback/RecentsState;->DEFAULT:Lcom/android/quickstep/fallback/RecentsState;

    if-ne p0, v1, :cond_d

    :cond_c
    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method private synthetic lambda$inflateIfNeeded$0(Landroid/view/View;)Z
    .registers 3

    const-string p1, "OplusClearAllPanelView"

    const-string v0, "----- longClick enter recent manager"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oplus/quickstep/locksetting/ui/LockSettingActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/quickstep/RecentsActivity;

    if-eqz v0, :cond_24

    sget-object v0, Lcom/android/quickstep/RecentsActivity;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/RecentsActivity;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->startHome()V

    :cond_24
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statClearButtonLongClick()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$playMemoryChangeAnimation$6(Ljava/lang/String;ZLjava/lang/String;Landroid/animation/ValueAnimator;)V
    .registers 11

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCurrentAnimationProgress:F

    iget v1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mAnimationStartProgress:F

    iget v3, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mAnimationStartNumber:F

    iget v4, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mNewMemoryNumber:F

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p4

    iput p4, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCurrentMemoryNumber:F

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mDecimalFormat:Ljava/text/DecimalFormat;

    float-to-double v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_2f

    const-string p2, "\u200e"

    invoke-static {p2, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2f
    invoke-static {p1, p3}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryInfoTv:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$setOnClearClickListener$3()V
    .registers 1

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/quickstep/memory/KillAppWrapper;->clearAllTasksDryRun(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$setOnClearClickListener$4()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mShowingDialog:Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$setOnClearClickListener$5(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-string v1, "com.oplus.athena"

    invoke-static {v0, v1}, Lcom/android/launcher3/util/OplusMBAStartActivityHelper;->checkAppAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v2, "OplusClearAllPanelView"

    if-nez v0, :cond_2e

    const-string p1, "----- onClick clear all app"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    const/4 p2, 0x1

    new-instance v0, Lcom/coui/appcompat/reddot/a;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/reddot/a;-><init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)V

    new-instance v2, Lcom/android/wm/shell/onehanded/d;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/onehanded/d;-><init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)V

    invoke-static {p1, v1, p2, v0, v2}, Lcom/android/launcher3/util/OplusMBAStartActivityHelper;->getGrantDialog(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mShowingDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_36

    :cond_2e
    const-string p0, "----- else onClick clear all app"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_36
    :goto_36
    return-void
.end method

.method private synthetic lambda$updateMeminfo$1(Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;ZLcom/oplus/quickstep/memory/MemoryInfoManager;)V
    .registers 10

    iget v0, p1, Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;->textDirectionFlag:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTextDirection(I)V

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryInfoTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "updateMeminfo: new memory is "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;->desc:Ljava/lang/String;

    const-string v2, "QuickStep"

    const-string v3, "OplusClearAllPanelView"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/badge/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    if-eqz p2, :cond_3f

    invoke-virtual {p3}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->canPlayAnimation()Z

    move-result p2

    if-eqz p2, :cond_3f

    invoke-virtual {p3}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getMemoryAvailableWithoutUnit()F

    move-result v1

    invoke-virtual {p3}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getMemoryUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getStrMemoryTotalSuffix()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;->desc:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->isNeedLtrMark()Z

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->playMemoryChangeAnimation(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_46

    :cond_3f
    iget-object p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryInfoTv:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;->desc:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_46
    invoke-virtual {p3}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getStrMemoryAvailable()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getStrEnLargeSize()Ljava/lang/String;

    move-result-object p2

    iget-wide v0, p3, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mExpandRam:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5b

    invoke-virtual {p3}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getStrMemoryTotal()Ljava/lang/String;

    move-result-object p2

    goto :goto_73

    :cond_5b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getStrMemoryTotal()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " + "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_73
    invoke-direct {p0, p2, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->getDescriptionString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$updateMeminfo$2(Lcom/oplus/quickstep/memory/MemoryInfoManager;Z)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getMemoryInfo(Z)Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;

    move-result-object v0

    new-instance v1, Lcom/android/common/util/k0;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/common/util/k0;-><init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;ZLcom/oplus/quickstep/memory/MemoryInfoManager;)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private playMemoryChangeAnimation(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    iget v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mNewMemoryNumber:F

    iput p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mNewMemoryNumber:F

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mFinalMemoryStr:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mFinalMemoryStr:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->isMemoryChangeAnimationRunning()Z

    move-result p4

    if-eqz p4, :cond_4e

    iget p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCurrentMemoryNumber:F

    iput p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mAnimationStartNumber:F

    iget p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCurrentAnimationProgress:F

    iput p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mAnimationStartProgress:F

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_4d

    const-string p2, "playMemoryChangeAnimation: mNewMemoryNumber = "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mNewMemoryNumber:F

    const-string p4, ", oldMemory = "

    const-string p5, ", mAnimationStartNumber = "

    invoke-static {p2, p3, p4, v0, p5}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    iget p3, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mAnimationStartNumber:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", mAnimationStartProgress = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mAnimationStartProgress:F

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", oldFinalMemoryStr = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string p2, "OplusClearAllPanelView"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    return-void

    :cond_4e
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_7a

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryChangeAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryChangeAnimation:Landroid/animation/ValueAnimator;

    new-instance p4, Lcom/android/wm/shell/common/split/b;

    invoke-direct {p4, p0, p2, p5, p3}, Lcom/android/wm/shell/common/split/b;-><init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryChangeAnimation:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/oplus/quickstep/views/OplusClearAllPanelView$5;

    invoke-direct {p2, p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView$5;-><init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryChangeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_7a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private startExitAnimator(Landroid/view/View;Landroid/util/FloatProperty;Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mQuickExitAnimaingFlag:Z

    if-eqz v0, :cond_13

    const-string p0, "QuickStep"

    const-string p1, "OplusClearAllPanelView"

    const-string p2, "startExitAnimator now is exit animating and return"

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->INSTANCE:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;

    invoke-virtual {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->dismiss()V

    return-void

    :cond_13
    invoke-direct {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->cancelExitAnimator()V

    if-eqz p3, :cond_27

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->createExitAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mExitAnimator:Landroid/animation/Animator;

    goto :goto_3f

    :cond_27
    const/4 p3, 0x2

    new-array p3, p3, [F

    fill-array-data p3, :array_46

    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mExitAnimator:Landroid/animation/Animator;

    sget-object p2, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->CURVE_OPACITY_IN:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mExitAnimator:Landroid/animation/Animator;

    const-wide/16 p2, 0x96

    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :goto_3f
    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void

    nop

    :array_46
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public animateNormal()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {p0}, Lcom/android/launcher/views/PressFeedbackButton;->animateNormal()V

    return-void
.end method

.method public animatePress()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {p0}, Lcom/android/launcher/views/PressFeedbackButton;->animatePress()V

    return-void
.end method

.method public cancelRotateAnimation(Lcom/android/launcher3/LauncherState;)V
    .registers 3

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_13

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mRotateAnim:Landroid/animation/Animator;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mRotateAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_13
    return-void
.end method

.method public clearAllBtnPerformClick()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {p0}, Landroid/widget/Button;->performClick()Z

    return-void
.end method

.method public clearEnterAnim()V
    .registers 4

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->isEnterAnimatorRunning()Z

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "clearEnterAnim: "

    const-string v2, "OplusClearAllPanelView"

    invoke-static {v1, v0, v2}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_11
    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mEnterAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    :cond_18
    return-void
.end method

.method public createRotateAnimation(Z)Landroid/animation/Animator;
    .registers 5

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_6

    :cond_4
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_6
    sget-object v0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->VISIBILITY_ALPHA:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mRotateAnim:Landroid/animation/Animator;

    new-instance v0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$4;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView$4;-><init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mRotateAnim:Landroid/animation/Animator;

    return-object p0
.end method

.method public getBottomMargin()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mBottomMargin:I

    return p0
.end method

.method public getClearAllBtnBoundsOnScreen(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method public getClearAllButtonRect(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-eqz v0, :cond_13

    invoke-virtual {v0, p1}, Landroid/widget/Button;->getHitRect(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {p0}, Landroid/widget/Button;->getTranslationX()F

    move-result p0

    neg-float p0, p0

    float-to-int p0, p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_13
    return-void
.end method

.method public getClearButtonHeight()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result p0

    :goto_a
    return p0
.end method

.method public getIsGesture()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public getIsMem()Z
    .registers 1

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/memory/MemoryInfoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->needMemoryDetail()Z

    move-result p0

    return p0
.end method

.method public isEnterAnimatorRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mEnterAnim:Landroid/animation/Animator;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public needUpdateBottomSpace(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .registers 7

    invoke-virtual {p3}, Landroid/graphics/Rect;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_14

    goto :goto_23

    :cond_14
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    if-lez p4, :cond_23

    iget p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mBottomSpace:I

    if-eqz p0, :cond_23

    if-eq p0, p1, :cond_23

    const/4 v1, 0x1

    :cond_23
    :goto_23
    return v1
.end method

.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->getScreenHeight(Z)I

    iget-object v1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-nez v1, :cond_c

    return-void

    :cond_c
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c05

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :cond_3a
    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v2, v3, :cond_40

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_40
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v2

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x0

    if-ne p1, v0, :cond_53

    goto :goto_54

    :cond_53
    move v0, v3

    :goto_54
    if-eqz v2, :cond_72

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.android.launcher"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_72

    if-nez v0, :cond_72

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0702c2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_85

    :cond_72
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p1

    if-nez p1, :cond_85

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0702c3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :cond_85
    :goto_85
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->dismissShowingGrantDialog()V

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public onFinishInflate()V
    .registers 4

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0a0197

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllButtonStub:Landroid/view/ViewStub;

    const v0, 0x7f0a0665

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryInfoTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sget-object v1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryInfoTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->getScreenHeight(Z)I

    return-void
.end method

.method public onInsetsChanged(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZLcom/oplus/quickstep/dock/DockView;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Z",
            "Lcom/oplus/quickstep/dock/DockView<",
            "*>;)V"
        }
    .end annotation

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p1, v0

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mBottomSpace:I

    if-eqz p4, :cond_1e

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p4

    if-eqz p4, :cond_19

    iget-object p4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const/4 p5, 0x1

    invoke-static {p4, p5}, Lcom/android/common/config/ScreenInfo;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result p4

    add-int/2addr v0, p4

    :cond_19
    div-int/lit8 p4, v0, 0x2

    iput p4, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mBottomMargin:I

    goto :goto_7f

    :cond_1e
    int-to-float p4, v0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInSmall()Z

    move-result v1

    if-eqz v1, :cond_29

    const v1, 0x3ee66666  # 0.45f

    goto :goto_2c

    :cond_29
    const v1, 0x3f0ccccd  # 0.55f

    :goto_2c
    mul-float/2addr p4, v1

    float-to-int p4, p4

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v2, p4, 0x2

    add-int/2addr v1, v2

    sub-int v2, p4, v2

    sub-int p4, v0, p4

    add-int/2addr p4, v2

    div-int/lit8 p4, p4, 0x2

    iput p4, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mBottomMargin:I

    iget-object p4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/memory/MemoryInfoManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p4

    sget-object v2, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne p4, v2, :cond_62

    iget p4, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mBottomMargin:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr p4, v2

    iput p4, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mBottomMargin:I

    goto :goto_76

    :cond_62
    iget p4, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mBottomMargin:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070879

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, p4

    iput v2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mBottomMargin:I

    :goto_76
    if-eqz p5, :cond_7f

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-virtual {p5, p2, v1, p4}, Lcom/oplus/quickstep/dock/DockView;->calculateLocation(Landroid/graphics/Rect;II)V

    :cond_7f
    :goto_7f
    const-string p4, "setInsets: bottomSpace = "

    const-string p5, " heightPx = "

    const-string v1, " mInsets.bottom = "

    invoke-static {p4, v0, p5, p1, v1}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mTempRect.bottom = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bottomMargin = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mBottomMargin:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height() = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ,tempRect"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string p2, "OplusClearAllPanelView"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageScroll(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;Lcom/android/quickstep/util/RecentsOrientedState;)V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p2}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1}, Lcom/android/launcher/OplusPagedViewImpl;->getMaxScroll()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;->getScrollFromEdge()F

    move-result v2

    iget-boolean v3, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mIsRtl:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getClearAllPanelViewTranslationX(IFZ)F

    move-result v0

    invoke-virtual {p2}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2}, Lcom/android/launcher/OplusPagedViewImpl;->getMaxScroll()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;->getScrollFromEdge()F

    move-result p1

    iget-boolean v3, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mIsRtl:Z

    invoke-interface {v1, v2, p1, v3}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getClearAllPanelViewTranslationY(IFZ)F

    move-result p1

    invoke-virtual {p2}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result p2

    if-nez p2, :cond_52

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->isEnterAnimatorRunning()Z

    move-result p2

    if-nez p2, :cond_5e

    iget-boolean p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mQuickExitAnimaingFlag:Z

    if-nez p2, :cond_5e

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    goto :goto_5e

    :cond_52
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->isEnterAnimatorRunning()Z

    move-result p2

    if-nez p2, :cond_5b

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    :cond_5b
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :cond_5e
    :goto_5e
    return-void
.end method

.method public playEnterAnimation(Lcom/android/launcher3/LauncherState;ZILcom/android/launcher3/states/StateAnimationConfig;)V
    .registers 16

    invoke-static {}, Lcom/android/launcher3/states/OPlusBaseState;->getTargetLauncherState()Lcom/android/launcher3/states/OPlusBaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_c

    move v4, v2

    goto :goto_d

    :cond_c
    move v4, v3

    :goto_d
    iget-object v5, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz p2, :cond_31

    if-nez v4, :cond_30

    iget-object v4, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mLastState:Lcom/android/launcher3/LauncherState;

    if-eqz v4, :cond_2e

    if-ne v4, v1, :cond_2e

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v4

    if-ne v4, v0, :cond_2e

    iget-object v4, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mLastTargetState:Lcom/android/launcher3/states/OPlusBaseState;

    if-ne v4, v1, :cond_2e

    goto :goto_30

    :cond_2e
    move v4, v3

    goto :goto_31

    :cond_30
    :goto_30
    move v4, v2

    :cond_31
    :goto_31
    iput p3, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mRotationFlag:I

    const/4 v6, 0x0

    if-eqz v4, :cond_6f

    if-ne v0, v1, :cond_6f

    if-ne p1, v1, :cond_6f

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLocationOnScreen()[I

    move-result-object v1

    aget v7, v1, v3

    if-ltz v7, :cond_5d

    aget v7, v1, v3

    iget-object v8, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v8

    if-gt v7, v8, :cond_5d

    aget v7, v1, v2

    if-ltz v7, :cond_5d

    aget v1, v1, v2

    iget-object v7, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v7

    if-le v1, v7, :cond_5b

    goto :goto_5d

    :cond_5b
    move v1, v3

    goto :goto_5e

    :cond_5d
    :goto_5d
    move v1, v2

    :goto_5e
    if-nez v1, :cond_6e

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6e

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v6

    if-nez v1, :cond_6f

    :cond_6e
    move v4, v3

    :cond_6f
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    const-string v7, "OplusClearAllPanelView"

    const-string v8, "QuickStep"

    if-eqz v1, :cond_c2

    const-string v1, "playEnterAnimation(), check="

    const-string v9, ", rotation="

    const-string v10, ", mRotationFlag="

    invoke-static {v1, p2, v9, p3, v10}, Lcom/android/launcher3/y0;->a(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mRotationFlag:I

    const-string v9, ", needReturn="

    const-string v10, ", toState="

    invoke-static {p2, v1, v9, v4, v10}, Lcom/android/launcher/k0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLastState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mLastState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", curState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tragetState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLastTargetState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mLastTargetState:Lcom/android/launcher3/states/OPlusBaseState;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, v7, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c2
    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mLastState:Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mLastTargetState:Lcom/android/launcher3/states/OPlusBaseState;

    if-eqz v4, :cond_ed

    instance-of p2, v0, Lcom/android/launcher3/LauncherState;

    if-eqz p2, :cond_ec

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-boolean p2, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez p2, :cond_ec

    iget-object p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mEnterAnim:Landroid/animation/Animator;

    if-eqz p2, :cond_e1

    invoke-virtual {p2}, Landroid/animation/Animator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_e1

    iget-object p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mEnterAnim:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    :cond_e1
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->cancelRotateAnimation(Lcom/android/launcher3/LauncherState;)V

    const-string p1, "playEnterAnimation"

    invoke-virtual {p0, v2, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->playExitAnimator(ZLjava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setViewClickable(F)V

    :cond_ec
    return-void

    :cond_ed
    sget-object p2, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {p2}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->needShowPhoneManagerEntranceAtLast()Z

    move-result p2

    if-eqz p2, :cond_103

    const-string p2, "statsEventPhoneManagerEntranceDisplay"

    invoke-static {v8, v7, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/statistics/LauncherStatistics;->statsEventPhoneManagerEntranceDisplay()V

    :cond_103
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->cancelRotateAnimation(Lcom/android/launcher3/LauncherState;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->cancelExitAnimator()V

    invoke-direct {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->inflateIfNeeded()V

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setViewClickable(F)V

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->cancelEnterAnimator()V

    invoke-direct {p0, p4, p3}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->createEnterAnimation(Lcom/android/launcher3/states/StateAnimationConfig;I)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mEnterAnim:Landroid/animation/Animator;

    new-instance p2, Lcom/oplus/quickstep/views/OplusClearAllPanelView$3;

    invoke-direct {p2, p0, p3}, Lcom/oplus/quickstep/views/OplusClearAllPanelView$3;-><init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;I)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mEnterAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public playExitAnimator(ZLjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->playExitAnimator(ZLjava/lang/String;Z)V

    return-void
.end method

.method public playExitAnimator(ZLjava/lang/String;Z)V
    .registers 10

    invoke-static {}, Lcom/android/launcher3/states/OPlusBaseState;->getTargetLauncherState()Lcom/android/launcher3/states/OPlusBaseState;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->isVisibleState(Lcom/android/launcher3/states/OPlusBaseState;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->isEnterAnimatorRunning()Z

    move-result v2

    const-string v3, "playExitAnimator(), visible="

    const-string v4, ", animate="

    const-string v5, ", invokeFrom="

    invoke-static {v3, v1, v4, p1, v5}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", alpha="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " , targetState = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", isEnterAnimatorRunning="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "QuickStep"

    const-string v3, "OplusClearAllPanelView"

    invoke-static {v0, v3, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->inflateIfNeeded()V

    const/high16 p2, 0x3f800000  # 1.0f

    if-nez v1, :cond_51

    if-eqz v2, :cond_51

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mEnterAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setAlpha(F)V

    :cond_51
    if-nez v1, :cond_56

    invoke-direct {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->dismissShowingGrantDialog()V

    :cond_56
    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->INSTANCE:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;

    invoke-virtual {v0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->dismiss()V

    if-eqz v1, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 p2, 0x0

    :goto_5f
    if-eqz p1, :cond_70

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result p1

    cmpl-float p1, p2, p1

    if-nez p1, :cond_6a

    goto :goto_70

    :cond_6a
    sget-object p1, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->VISIBILITY_ALPHA:Landroid/util/FloatProperty;

    invoke-direct {p0, p0, p1, p3}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->startExitAnimator(Landroid/view/View;Landroid/util/FloatProperty;Z)V

    return-void

    :cond_70
    :goto_70
    invoke-direct {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->cancelExitAnimator()V

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setVisibilityAlpha(F)V

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setViewClickable(F)V

    return-void
.end method

.method public quickPlayExitAnimator(Lcom/android/launcher3/LauncherState;)V
    .registers 5

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->isEnterAnimatorRunning()Z

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "quickPlayExitAnimator: "

    const-string v2, "OplusClearAllPanelView"

    invoke-static {v1, v0, v2}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_11
    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mEnterAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_18
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->cancelRotateAnimation(Lcom/android/launcher3/LauncherState;)V

    const/4 p1, 0x1

    const-string v0, "quickExitAnima"

    invoke-virtual {p0, p1, v0, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->playExitAnimator(ZLjava/lang/String;Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setViewClickable(F)V

    return-void
.end method

.method public setAlpha(F)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCleanStorage:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    if-eqz p1, :cond_21

    sget-object p1, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->needShowPhoneManagerEntranceAtLast()Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCleanStorage:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    iget v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mRotationFlag:I

    iget-object v1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {p1, v0, v1}, Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;->updatePhoneManagerEntrancePositionWhenRotation(ILandroid/view/View;)V

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCleanStorage:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_21
    return-void
.end method

.method public setClearStorageView(Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCleanStorage:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    return-void
.end method

.method public setContentAlpha(F)V
    .registers 2

    return-void
.end method

.method public setGridProgress(F)V
    .registers 2

    return-void
.end method

.method public setGridScrollOffset(F)V
    .registers 2

    return-void
.end method

.method public setGridTranslationPrimary(F)V
    .registers 2

    return-void
.end method

.method public setGridTranslationSecondary(F)V
    .registers 2

    return-void
.end method

.method public setIsRecentsViewPortrait(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mIsRecentsViewPortrait:Z

    return-void
.end method

.method public setOffsetTranslationPrimary(F)V
    .registers 2

    return-void
.end method

.method public setOnClearClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearClickListener:Landroid/view/View$OnClickListener;

    return-void

    :cond_6
    new-instance v0, Lcom/android/launcher3/allapps/a;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/allapps/a;-><init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V
    .registers 2

    return-void
.end method

.method public setViewClickable(F)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-eqz v0, :cond_1a

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_d

    move v3, v1

    goto :goto_e

    :cond_d
    move v3, v2

    :goto_e
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-lez p1, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setLongClickable(Z)V

    :cond_1a
    return-void
.end method

.method public setVisibilityAlpha(F)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1c

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setAlpha(F)V

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCleanStorage:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->needShowPhoneManagerEntranceAtLast()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCleanStorage:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_1c
    return-void
.end method

.method public updateMeminfo(Z)V
    .registers 5

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/memory/MemoryInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->needMemoryDetail()Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/launcher3/z0;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/launcher3/z0;-><init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Lcom/oplus/quickstep/memory/MemoryInfoManager;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_31

    :cond_17
    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryInfoTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryInfoTv:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryInfoTv:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_31
    :goto_31
    return-void
.end method
