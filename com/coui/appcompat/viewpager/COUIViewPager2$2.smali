.class Lcom/coui/appcompat/viewpager/COUIViewPager2$2;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/viewpager/COUIViewPager2;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/viewpager/COUIViewPager2;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$2;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$2;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->g()V

    :cond_7
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$2;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->d:I

    if-eq v0, p1, :cond_d

    iput p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->d:I

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->t:Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;->o()V

    :cond_d
    return-void
.end method
