.class public Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;
.super Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;
.source ""

# interfaces
.implements Lcom/oplus/widget/OplusViewPager$OnPageChangeListener;
.implements Lcom/android/launcher/guide/side/CarouselViewPager$OnViewChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage$CarouselPagerAdapter;
    }
.end annotation


# static fields
.field private static final CAROUSEL_DARK_IMG_FOLDER:[Ljava/lang/String;

.field private static final CAROUSEL_DARK_JSON:[Ljava/lang/String;

.field public static final CAROUSEL_IMG_FOLDER:[Ljava/lang/String;

.field public static final CAROUSEL_JSON:[Ljava/lang/String;

.field public static final DELAY_START:I = 0x1f4

.field public static final NAVIGATION_TYPE_DARK:Ljava/lang/String; = "navigation_type_dark.json"

.field public static final NAVIGATION_TYPE_LIGHT:Ljava/lang/String; = "navigation_type_light.json"

.field public static final NAVIGATION_TYPE_OPEN_MODE_DARK:Ljava/lang/String; = "navigation_type_open_mode_dark.json"

.field public static final NAVIGATION_TYPE_OPEN_MODE_LIGHT:Ljava/lang/String; = "navigation_type_open_mode_light.json"

.field public static final NAVIGATION_TYPE_TABLET_DARK:Ljava/lang/String; = "navigation_type_tablet_dark.json"

.field public static final NAVIGATION_TYPE_TABLET_LIGHT:Ljava/lang/String; = "navigation_type_tablet_light.json"

.field public static final PAGE_NUM:I = 0x4

.field public static final TAG:Ljava/lang/String; = "SideSlipGesturesGuidePage"


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mInflater:Landroid/view/LayoutInflater;

.field public mNeedAutoPlay:Z

.field public mPageAdapter:Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage$CarouselPagerAdapter;

.field public mViewPagerIndex:I

.field public mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string/jumbo v0, "side_gesture_back_up.json"

    const-string/jumbo v1, "side_gesture_back_to_desktop.json"

    const-string/jumbo v2, "side_gesture_view_recent_tasks.json"

    const-string/jumbo v3, "side_gesture_switch_to_the_recent_app.json"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->CAROUSEL_JSON:[Ljava/lang/String;

    const-string/jumbo v0, "side_gesture_back_up"

    const-string/jumbo v1, "side_gesture_back_to_desktop"

    const-string/jumbo v2, "side_gesture_view_recent_tasks"

    const-string/jumbo v3, "side_gesture_switch_to_the_recent_app"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->CAROUSEL_IMG_FOLDER:[Ljava/lang/String;

    const-string/jumbo v0, "side_gesture_back_up_dark.json"

    const-string/jumbo v1, "side_gesture_back_to_desktop_dark.json"

    const-string/jumbo v2, "side_gesture_view_recent_tasks_dark.json"

    const-string/jumbo v3, "side_gesture_switch_to_the_recent_app_dark.json"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->CAROUSEL_DARK_JSON:[Ljava/lang/String;

    const-string/jumbo v0, "side_gesture_back_up_dark"

    const-string/jumbo v1, "side_gesture_back_to_desktop_dark"

    const-string/jumbo v2, "side_gesture_view_recent_tasks_dark"

    const-string/jumbo v3, "side_gesture_switch_to_the_recent_app_dark"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->CAROUSEL_DARK_IMG_FOLDER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViews:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mPageAdapter:Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage$CarouselPagerAdapter;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViewPagerIndex:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mNeedAutoPlay:Z

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public initViews()V
    .registers 1

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->onResume()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->onStop()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViews:Ljava/util/List;

    if-eqz v0, :cond_3a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_3a

    const/4 v0, 0x0

    :goto_b
    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_37

    const v2, 0x7f0a000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/EffectiveAnimationView;

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-ne v0, p1, :cond_34

    iput p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViewPagerIndex:I

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    goto :goto_37

    :cond_34
    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationView;->cancelAnimation()V

    :cond_37
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_3a
    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->onResume()V

    return-void
.end method

.method public onStop()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->onStop()V

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->stopAnimation()V

    return-void
.end method

.method public onViewMoved()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public playAnimation()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViews:Ljava/util/List;

    if-eqz v0, :cond_43

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViews:Ljava/util/List;

    iget v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViewPagerIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_43

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/EffectiveAnimationView;

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/core/widget/a;

    invoke-direct {v2, p0}, Landroidx/core/widget/a;-><init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;)V

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->getDuration()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    iget v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViewPagerIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViewPagerIndex:I

    :cond_43
    return-void
.end method

.method public startAnimation()V
    .registers 5

    const-string/jumbo v0, "startAnimation mViewPagerIndex:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViewPagerIndex:I

    const-string v2, "GesturesGuide"

    const-string v3, "SideSlipGesturesGuidePage"

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mNeedAutoPlay:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/core/app/a;

    invoke-direct {v1, p0}, Landroidx/core/app/a;-><init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mNeedAutoPlay:Z

    :cond_29
    return-void
.end method

.method public stopAnimation()V
    .registers 4

    const-string v0, "GesturesGuide"

    const-string v1, "SideSlipGesturesGuidePage"

    const-string/jumbo v2, "stopAnimation"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViews:Ljava/util/List;

    if-eqz v0, :cond_3c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3c

    const/4 v0, 0x0

    :goto_1b
    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_39

    const v2, 0x7f0a000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationView;->cancelAnimation()V

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_3c
    return-void
.end method
