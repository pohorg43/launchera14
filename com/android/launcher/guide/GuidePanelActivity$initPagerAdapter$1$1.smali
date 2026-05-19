.class public final Lcom/android/launcher/guide/GuidePanelActivity$initPagerAdapter$1$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/guide/GuidePanelActivity;->initPagerAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/guide/GuidePanelActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher/guide/GuidePanelActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/GuidePanelActivity$initPagerAdapter$1$1;->this$0:Lcom/android/launcher/guide/GuidePanelActivity;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePanelActivity$initPagerAdapter$1$1;->this$0:Lcom/android/launcher/guide/GuidePanelActivity;

    invoke-static {p0}, Lcom/android/launcher/guide/GuidePanelActivity;->access$getMBinding$p(Lcom/android/launcher/guide/GuidePanelActivity;)Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;

    move-result-object p0

    if-nez p0, :cond_11

    const-string p0, "mBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_11
    iget-object p0, p0, Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;->guideContentIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->h(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePanelActivity$initPagerAdapter$1$1;->this$0:Lcom/android/launcher/guide/GuidePanelActivity;

    invoke-static {p0}, Lcom/android/launcher/guide/GuidePanelActivity;->access$getMBinding$p(Lcom/android/launcher/guide/GuidePanelActivity;)Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;

    move-result-object p0

    if-nez p0, :cond_11

    const-string p0, "mBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_11
    iget-object p0, p0, Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;->guideContentIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePanelActivity$initPagerAdapter$1$1;->this$0:Lcom/android/launcher/guide/GuidePanelActivity;

    invoke-static {p0}, Lcom/android/launcher/guide/GuidePanelActivity;->access$getMBinding$p(Lcom/android/launcher/guide/GuidePanelActivity;)Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;

    move-result-object p0

    if-nez p0, :cond_11

    const-string p0, "mBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_11
    iget-object p0, p0, Lcom/android/launcher3/databinding/GuidePanelLayoutBinding;->guideContentIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j(I)V

    return-void
.end method
