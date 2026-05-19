.class public Lcom/android/launcher/settings/TaskbarIntroductionPreference;
.super Landroidx/preference/Preference;
.source ""


# static fields
.field private static final OFF_SCREEN_BUFFER:I = 0x2


# instance fields
.field private mAdapter:Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;

.field private mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

.field private mGuideContent:Landroidx/viewpager2/widget/ViewPager2;

.field private mOnPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field private mPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/settings/TaskbarIntroductionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/settings/TaskbarIntroductionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher/settings/TaskbarIntroductionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f0d0168

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/settings/TaskbarIntroductionPreference;)Lcom/coui/appcompat/indicator/COUIPageIndicator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->mPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher/settings/TaskbarIntroductionPreference;)Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->mAdapter:Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher/settings/TaskbarIntroductionPreference;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->lambda$setGuidePagerCall$0(I)V

    return-void
.end method

.method private synthetic lambda$setGuidePagerCall$0(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->mGuideContent:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    return-void
.end method

.method private setGuidePagerCall()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->mGuideContent:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->mPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-nez v0, :cond_9

    goto :goto_1f

    :cond_9
    new-instance v0, Lcom/android/launcher/settings/TaskbarIntroductionPreference$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/settings/TaskbarIntroductionPreference$1;-><init>(Lcom/android/launcher/settings/TaskbarIntroductionPreference;)V

    iput-object v0, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->mOnPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    iget-object v1, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->mGuideContent:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object v0, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->mPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    new-instance v1, Lcom/android/exceptionmonitor/util/d;

    invoke-direct {v1, p0}, Lcom/android/exceptionmonitor/util/d;-><init>(Lcom/android/launcher/settings/TaskbarIntroductionPreference;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setOnDotClickListener(Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;)V

    :cond_1f
    :goto_1f
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->cancelAnimation()V

    :cond_7
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    new-instance v0, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->mAdapter:Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;

    const v0, 0x7f0a05fd

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->mGuideContent:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->mGuideContent:Landroidx/viewpager2/widget/ViewPager2;

    const v1, 0x7f0a00aa

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/EffectiveAnimationView;

    iput-object v0, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const v0, 0x7f0a05fe

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/indicator/COUIPageIndicator;

    iput-object p1, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->mPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    iget-object p1, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->mGuideContent:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object p1, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->mGuideContent:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->mAdapter:Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;

    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->mAdapter:Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;->getItemCount()I

    move-result p1

    if-gt p1, v0, :cond_52

    iget-object p1, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->mPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setDotsCount(I)V

    iget-object p1, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->mPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_5d

    :cond_52
    iget-object p1, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->mPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    iget-object v0, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->mAdapter:Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setDotsCount(I)V

    :goto_5d
    invoke-direct {p0}, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->setGuidePagerCall()V

    return-void
.end method
