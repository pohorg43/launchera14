.class Lcom/android/launcher/settings/TaskbarIntroductionPreference$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/settings/TaskbarIntroductionPreference;->setGuidePagerCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/settings/TaskbarIntroductionPreference;


# direct methods
.method public constructor <init>(Lcom/android/launcher/settings/TaskbarIntroductionPreference;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference$1;->this$0:Lcom/android/launcher/settings/TaskbarIntroductionPreference;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    iget-object p0, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference$1;->this$0:Lcom/android/launcher/settings/TaskbarIntroductionPreference;

    invoke-static {p0}, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->access$000(Lcom/android/launcher/settings/TaskbarIntroductionPreference;)Lcom/coui/appcompat/indicator/COUIPageIndicator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->h(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    iget-object p0, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference$1;->this$0:Lcom/android/launcher/settings/TaskbarIntroductionPreference;

    invoke-static {p0}, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->access$000(Lcom/android/launcher/settings/TaskbarIntroductionPreference;)Lcom/coui/appcompat/indicator/COUIPageIndicator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object v0, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference$1;->this$0:Lcom/android/launcher/settings/TaskbarIntroductionPreference;

    invoke-static {v0}, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->access$000(Lcom/android/launcher/settings/TaskbarIntroductionPreference;)Lcom/coui/appcompat/indicator/COUIPageIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j(I)V

    iget-object v0, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference$1;->this$0:Lcom/android/launcher/settings/TaskbarIntroductionPreference;

    invoke-static {v0}, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->access$100(Lcom/android/launcher/settings/TaskbarIntroductionPreference;)Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;->getGuidImageView()[Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference$1;->this$0:Lcom/android/launcher/settings/TaskbarIntroductionPreference;

    invoke-static {v0}, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->access$100(Lcom/android/launcher/settings/TaskbarIntroductionPreference;)Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;->getGuidImageView()[Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    iget-object p0, p0, Lcom/android/launcher/settings/TaskbarIntroductionPreference$1;->this$0:Lcom/android/launcher/settings/TaskbarIntroductionPreference;

    invoke-static {p0}, Lcom/android/launcher/settings/TaskbarIntroductionPreference;->access$100(Lcom/android/launcher/settings/TaskbarIntroductionPreference;)Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;->getGuidImageView()[Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    :cond_38
    return-void
.end method
