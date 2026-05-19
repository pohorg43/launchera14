.class public Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source ""


# instance fields
.field public final a:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v1, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V
    :try_end_15
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_15} :catch_17

    goto :goto_6

    :cond_16
    return-void

    :catch_17
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;->throwCallbackListModifiedWhileInUse(Ljava/util/ConcurrentModificationException;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onPageScrolled(IFI)V
    .registers 6
    .param p3  # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V
    :try_end_15
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_15} :catch_17

    goto :goto_6

    :cond_16
    return-void

    :catch_17
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;->throwCallbackListModifiedWhileInUse(Ljava/util/ConcurrentModificationException;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onPageSelected(I)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v1, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V
    :try_end_15
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_15} :catch_17

    goto :goto_6

    :cond_16
    return-void

    :catch_17
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;->throwCallbackListModifiedWhileInUse(Ljava/util/ConcurrentModificationException;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final throwCallbackListModifiedWhileInUse(Ljava/util/ConcurrentModificationException;)V
    .registers 3

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Adding and removing callbacks during dispatch to callbacks is not supported"

    invoke-direct {p0, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
