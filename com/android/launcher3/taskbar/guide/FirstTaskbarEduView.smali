.class public Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;
.super Lcom/android/launcher3/views/AbstractSlideInView;
.source ""

# interfaces
.implements Lcom/android/launcher3/Insettable;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/views/AbstractSlideInView<",
        "Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;",
        ">;",
        "Lcom/android/launcher3/Insettable;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final CLOSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DEFAULT_CLOSE_DURATION:I = 0x14d

.field private static final DEFAULT_OPEN_DURATION:I = 0x1b0

.field private static final OPEN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final TEXT_FADE_IN_DURATION:I = 0x10e

.field private static final TEXT_FADE_OUT_DURATION:I = 0x8c


# instance fields
.field private mClipRect:Landroid/graphics/RectF;

.field private mGuideContent:Landroidx/viewpager2/widget/ViewPager2;

.field private mGuidePagerAdapter:Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;

.field private mIndicateButton:Lcom/coui/appcompat/button/COUIButton;

.field private final mInsets:Landroid/graphics/Rect;

.field private mOnPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field private mPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

.field private mPath:Landroid/graphics/Path;

.field private mRadius:I


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3dcccccd  # 0.1f

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->OPEN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a  # 0.3f

    invoke-direct {v0, v2, v1, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->CLOSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/AbstractSlideInView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mInsets:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0705ba

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mRadius:I

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->lambda$setGuidePagerCall$0(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;)Landroid/animation/ObjectAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;)Lcom/coui/appcompat/indicator/COUIPageIndicator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->buttonTextAnimation(I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;)Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mGuidePagerAdapter:Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;)Lcom/coui/appcompat/button/COUIButton;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mIndicateButton:Lcom/coui/appcompat/button/COUIButton;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;)Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private animateOpen()V
    .registers 8

    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-nez v0, :cond_75

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_75

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070fd1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    const/4 v3, 0x2

    new-array v4, v3, [Landroid/animation/PropertyValuesHolder;

    sget-object v5, Landroid/widget/LinearLayout;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v3, [F

    const/4 v6, 0x0

    aput v1, v3, v6

    const/4 v1, 0x0

    aput v1, v3, v0

    invoke-static {v5, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v4, v6

    sget-object v3, Lcom/android/launcher3/views/AbstractSlideInView;->TRANSLATION_SHIFT:Landroid/util/Property;

    new-array v5, v0, [F

    aput v1, v5, v6

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->OPEN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$6;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$6;-><init>(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x1b0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_75
    :goto_75
    return-void
.end method

.method private buttonTextAnimation(I)V
    .registers 9

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1203e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mIndicateButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_72

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0x10e

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$3;

    invoke-direct {v5, p0, v2}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$3;-><init>(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v3, v3, [I

    fill-array-data v3, :array_7a

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v5, 0x8c

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mGuidePagerAdapter:Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;

    if-eqz v5, :cond_65

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;->getItemCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_65

    invoke-direct {p0, v4, v3, v1, v2}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->textFadeInAndOut(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Ljava/lang/CharSequence;I)V

    goto :goto_70

    :cond_65
    iget-object p1, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mIndicateButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-ne p1, v1, :cond_70

    invoke-direct {p0, v4, v3, v0, v2}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->textFadeInAndOut(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Ljava/lang/CharSequence;I)V

    :cond_70
    :goto_70
    return-void

    nop

    :array_72
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_7a
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private synthetic lambda$setGuidePagerCall$0(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mGuideContent:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    return-void
.end method

.method private setGuidePagerCall()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mGuideContent:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_9

    goto :goto_1f

    :cond_9
    new-instance v0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$2;-><init>(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mOnPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mGuideContent:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    new-instance v1, Lf/h;

    invoke-direct {v1, p0}, Lf/h;-><init>(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setOnDotClickListener(Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method private textFadeInAndOut(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Ljava/lang/CharSequence;I)V
    .registers 6

    new-instance v0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$4;

    invoke-direct {v0, p0, p3, p1}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$4;-><init>(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;Ljava/lang/CharSequence;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$5;

    invoke-direct {p1, p0, p4}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$5;-><init>(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;I)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public attachToContainer()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :cond_e
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public getAccessibilityTarget()Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f120604

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    :cond_12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f120601

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1d
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getIdleInterpolator()Landroid/view/animation/Interpolator;
    .registers 1

    sget-object p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->CLOSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public getScrimColor(Landroid/content/Context;)I
    .registers 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f06081f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public handleClose(Z)V
    .registers 11

    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x1

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->setTranslationShift(FZ)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->onCloseComplete()V

    return-void

    :cond_16
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070fd1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    const/4 v4, 0x2

    new-array v5, v4, [Landroid/animation/PropertyValuesHolder;

    sget-object v6, Landroid/widget/LinearLayout;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v7, v4, v8

    add-float/2addr p1, v2

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr p1, v2

    aput p1, v4, v1

    invoke-static {v6, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v5, v8

    sget-object p1, Lcom/android/launcher3/views/AbstractSlideInView;->TRANSLATION_SHIFT:Landroid/util/Property;

    new-array v2, v1, [F

    aput v0, v2, v8

    invoke-static {p1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView$1;-><init>(Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isIdleState()Z

    move-result p1

    if-eqz p1, :cond_81

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x14d

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->getIdleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_88

    :cond_81
    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_88
    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public isOfType(I)Z
    .registers 2

    const/high16 p0, 0x10000

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "launcher_taskbar_education_showing"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mGuideContent:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mGuidePagerAdapter:Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_16

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mGuideContent:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    goto :goto_19

    :cond_16
    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :goto_19
    return-void
.end method

.method public onCloseComplete()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->onCloseComplete()V

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/anim/EffectiveCompositionFactory;->clearCache(Landroid/content/Context;)V

    return-void
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onDetachedFromWindow()V
    .registers 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isGestureNav()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarStashed()Z

    move-result v2

    if-eqz v2, :cond_36

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isTaskbarHideOnlyByManualStashed()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarView()Lcom/android/launcher3/taskbar/TaskbarView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;->showStashedHandleViewGuideIfNecessary(Landroid/view/View;)V

    :cond_36
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "launcher_taskbar_education_showing"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onFinishInflate()V
    .registers 6

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    new-instance v0, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mGuidePagerAdapter:Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;

    const v0, 0x7f0a05fd

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mGuideContent:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    const v0, 0x7f0a05fb

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    const v0, 0x7f0a0349

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mIndicateButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_36

    goto :goto_3a

    :cond_36
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_3a
    iget-object v2, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mIndicateButton:Lcom/coui/appcompat/button/COUIButton;

    const v3, 0x7f04021c

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/button/COUIButton;->setDrawableColor(I)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mIndicateButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a05fe

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mGuidePagerAdapter:Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;->getItemCount()I

    move-result v0

    if-gt v0, v1, :cond_6b

    iget-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setDotsCount(I)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_76

    :cond_6b
    iget-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mGuidePagerAdapter:Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setDotsCount(I)V

    :goto_76
    iget-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mGuideContent:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mGuidePagerAdapter:Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->setGuidePagerCall()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 7

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    iget-object p2, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mInsets:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p3

    iget p2, p2, Landroid/graphics/Rect;->right:I

    const/4 v0, 0x2

    invoke-static {p4, p2, v0, p3}, Landroidx/appcompat/widget/a;->a(IIII)I

    move-result p2

    iget-object p3, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p4

    sub-int p4, p5, p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p1, p2

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p5

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p3, p2, p4, p1, p0}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result p0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public setTranslationShift(F)V
    .registers 3

    iput p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    if-eqz p0, :cond_c

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_c
    return-void
.end method

.method public setTranslationShift(FZ)V
    .registers 4

    iput p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    iget-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getShiftRange()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    if-eqz p1, :cond_18

    const/high16 p2, 0x3f800000  # 1.0f

    iget p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    sub-float/2addr p2, p0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_18
    return-void
.end method

.method public show()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->attachToContainer()V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;->animateOpen()V

    return-void
.end method
