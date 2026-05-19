.class Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabLayoutOnPageChangeCallback"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coui/appcompat/tablayout/COUITabLayout;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coui/appcompat/viewpager/COUIViewPager2;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/tablayout/COUITabLayout;Lcom/coui/appcompat/viewpager/COUIViewPager2;)V
    .registers 4

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->a:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->b:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->d:I

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->c:I

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->d:I

    iput v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->c:I

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->d:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 13

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/tablayout/COUITabLayout;

    if-eqz v1, :cond_95

    if-eqz v0, :cond_95

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->b()Z

    move-result v2

    if-nez v2, :cond_95

    iget v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_28

    iget v6, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->c:I

    if-ne v6, v5, :cond_26

    goto :goto_28

    :cond_26
    move v6, v4

    goto :goto_29

    :cond_28
    :goto_28
    move v6, v5

    :goto_29
    if-ne v2, v3, :cond_32

    iget v7, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->c:I

    if-eqz v7, :cond_30

    goto :goto_32

    :cond_30
    move v7, v4

    goto :goto_33

    :cond_32
    :goto_32
    move v7, v5

    :goto_33
    const/4 v8, 0x0

    if-nez v2, :cond_4f

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->c:I

    if-nez p0, :cond_4f

    cmpl-float p0, p2, v8

    if-eqz p0, :cond_4f

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p3, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->q(I)Lcom/coui/appcompat/tablayout/COUITab;

    move-result-object p0

    invoke-virtual {v1, p0, v5}, Lcom/coui/appcompat/tablayout/COUITabLayout;->u(Lcom/coui/appcompat/tablayout/COUITab;Z)V

    goto :goto_74

    :cond_4f
    sget-object p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->h:Ljava/lang/reflect/Method;

    :try_start_51
    sget-object p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->h:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_86

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v4

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p3, v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p3, v3

    const/4 v0, 0x3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, p3, v0

    invoke-virtual {p0, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_74} :catch_8d

    :goto_74
    cmpl-float p0, p2, v8

    if-nez p0, :cond_95

    invoke-virtual {v1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result p0

    if-eq p1, p0, :cond_95

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->q(I)Lcom/coui/appcompat/tablayout/COUITab;

    move-result-object p0

    invoke-virtual {v1, p0, v5}, Lcom/coui/appcompat/tablayout/COUITabLayout;->u(Lcom/coui/appcompat/tablayout/COUITab;Z)V

    goto :goto_95

    :cond_86
    :try_start_86
    const-string p0, "TabLayout.setScrollPosition(int, float, boolean, boolean)"

    invoke-static {p0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8d} :catch_8d

    :catch_8d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Couldn\'t invoke method TabLayout.setScrollPosition(int, float, boolean, boolean)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_95
    :goto_95
    return-void
.end method

.method public onPageSelected(I)V
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/tablayout/COUITabLayout;

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v1, p1, :cond_4e

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabCount()I

    move-result v1

    if-ge p1, v1, :cond_4e

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_26

    if-ne v1, v3, :cond_24

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->c:I

    if-nez p0, :cond_24

    goto :goto_26

    :cond_24
    move p0, v2

    goto :goto_27

    :cond_26
    :goto_26
    move p0, v4

    :goto_27
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->q(I)Lcom/coui/appcompat/tablayout/COUITab;

    move-result-object p1

    sget-object v1, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->h:Ljava/lang/reflect/Method;

    :try_start_2d
    sget-object v1, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->i:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3f

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    :cond_3f
    const-string p0, "TabLayout.selectTab(TabLayout.Tab, boolean)"

    invoke-static {p0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_46} :catch_46

    :catch_46
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Couldn\'t invoke method TabLayout.selectTab(TabLayout.Tab, boolean)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    :goto_4e
    return-void
.end method
