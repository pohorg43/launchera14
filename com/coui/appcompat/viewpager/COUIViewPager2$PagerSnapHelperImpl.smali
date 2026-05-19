.class Lcom/coui/appcompat/viewpager/COUIViewPager2$PagerSnapHelperImpl;
.super Landroidx/recyclerview/widget/PagerSnapHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/viewpager/COUIViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PagerSnapHelperImpl"
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/viewpager/COUIViewPager2;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PagerSnapHelperImpl;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PagerSnapHelperImpl;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    goto :goto_e

    :cond_a
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p0

    :goto_e
    return-object p0
.end method
