.class Lcom/coui/appcompat/viewpager/COUIViewPager2$3;
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

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$3;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .registers 2

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$3;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->clearFocus()V

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$3;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$3;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->j:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->requestFocus(I)Z

    :cond_15
    return-void
.end method
