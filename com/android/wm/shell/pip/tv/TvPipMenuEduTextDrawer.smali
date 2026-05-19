.class Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$Listener;
    }
.end annotation


# static fields
.field private static final MARQUEE_DP_PER_SECOND:F = 30.0f

.field private static final MARQUEE_RESTART_DELAY:I = 0x4b0

.field private static final TAG:Ljava/lang/String; = "TvPipMenuEduTextDrawer"


# instance fields
.field private final mCloseDrawerRunnable:Ljava/lang/Runnable;

.field private final mEduTextView:Landroid/widget/TextView;

.field private final mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$Listener;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mMarqueeAnimSpeed:F

.field private final mStartScrollEduTextRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$Listener;)V
    .registers 6
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/wm/shell/pip/tv/f;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/tv/f;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mCloseDrawerRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/wm/shell/pip/tv/e;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/tv/e;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mStartScrollEduTextRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$Listener;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41f00000  # 30.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x447a0000  # 1000.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mMarqueeAnimSpeed:F

    new-instance p1, Landroid/widget/TextView;

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->setupDrawer()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->startScrollEduText()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mStartScrollEduTextRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mCloseDrawerRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->closeDrawer()V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->lambda$closeDrawer$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private closeDrawer()V
    .registers 8

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    const-string v0, "TvPipMenuEduTextDrawer"

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x7ec7cbfe

    const/4 v5, 0x0

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v3, v4, v2, v5, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/wm/shell/R$integer;->pip_edu_text_view_exit_animation_duration:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/wm/shell/R$integer;->pip_edu_text_window_exit_animation_duration:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->EXIT:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    aput v4, v0, v2

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->BROWSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/wm/shell/pip/tv/d;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/tv/d;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$2;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$Listener;

    invoke-interface {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$Listener;->onCloseEduTextAnimationStart()V

    return-void
.end method

.method private createEduTextString()Ljava/lang/CharSequence;
    .registers 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$string;->pip_edu_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannedString;

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannedString;->length()I

    move-result v2

    const-class v3, Landroid/text/Annotation;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3}, Landroid/text/SpannedString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/Annotation;

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/wm/shell/pip/tv/g;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/wm/shell/pip/tv/g;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;Landroid/text/SpannableString;Landroid/text/SpannedString;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-object v1
.end method

.method public static synthetic d(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;Landroid/text/SpannableString;Landroid/text/SpannedString;Landroid/text/Annotation;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->lambda$createEduTextString$1(Landroid/text/SpannableString;Landroid/text/SpannedString;Landroid/text/Annotation;)V

    return-void
.end method

.method private getEduTextShowDuration()I
    .registers 10

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->isEduTextMarqueed()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->getMarqueeAnimEduTextLineWidth()F

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mMarqueeAnimSpeed:F

    div-float/2addr v0, v1

    const/high16 v1, 0x44960000  # 1200.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getMarqueeRepeatLimit()I

    move-result p0

    mul-int/2addr p0, v0

    goto :goto_25

    :cond_19
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/wm/shell/R$integer;->pip_edu_text_non_scroll_show_duration:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    :goto_25
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_43

    const-string v0, "TvPipMenuEduTextDrawer"

    int-to-long v1, p0

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x4e635829  # 9.5355142E8f

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_43
    return p0
.end method

.method private getEduTextWidth()I
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private getMarqueeAnimEduTextLineWidth()F
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000  # 3.0f

    div-float/2addr v0, v1

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->getEduTextWidth()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, v0

    return p0
.end method

.method private isEduTextMarqueed()Z
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->getEduTextWidth()I

    move-result p0

    if-ge v0, p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method private synthetic lambda$closeDrawer$0(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$createEduTextString$1(Landroid/text/SpannableString;Landroid/text/SpannedString;Landroid/text/Annotation;)V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$drawable;->home_icon:I

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_33

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v0, Lcom/android/wm/shell/pip/tv/CenteredImageSpan;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/tv/CenteredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, p3}, Landroid/text/SpannedString;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {p2, p3}, Landroid/text/SpannedString;->getSpanEnd(Ljava/lang/Object;)I

    move-result p2

    const/16 p3, 0x21

    invoke-virtual {p1, v0, p0, p2, p3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_33
    return-void
.end method

.method private scheduleLifecycleEvents()V
    .registers 6

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$integer;->pip_edu_text_start_scroll_delay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->isEduTextMarqueed()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mStartScrollEduTextRunnable:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1a
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mCloseDrawerRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->getEduTextShowDuration()I

    move-result v3

    add-int/2addr v0, v3

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$1;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    return-void
.end method

.method private setupDrawer()V
    .registers 8

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->pip_menu_edu_text_view_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$integer;->pip_edu_text_scroll_times:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/16 v5, 0x51

    invoke-direct {v3, v4, v0, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->createEduTextString()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    sget v6, Lcom/android/wm/shell/R$style;->TvPipEduText:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    return-void
.end method

.method private startScrollEduText()V
    .registers 11

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    const-string v0, "TvPipMenuEduTextDrawer"

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMarqueeRepeatLimit()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, 0x2242129

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v8, v1

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_24
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public closeIfNeeded()V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mCloseDrawerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_1f

    const-string v0, "TvPipMenuEduTextDrawer"

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, -0x915d2e6

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1f
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mCloseDrawerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mCloseDrawerRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2b
    return-void
.end method

.method public getEduTextDrawerHeight()I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 p0, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    :goto_e
    return p0
.end method

.method public init()V
    .registers 7

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_15

    const-string v0, "TvPipMenuEduTextDrawer"

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, 0x3c86ad45

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->scheduleLifecycleEvents()V

    return-void
.end method

.method public onCloseEduTextAnimationEnd()V
    .registers 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$Listener;

    invoke-interface {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$Listener;->onCloseEduTextAnimationEnd()V

    return-void
.end method
