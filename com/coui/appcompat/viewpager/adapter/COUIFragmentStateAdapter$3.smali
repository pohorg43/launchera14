.class Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$3;
.super Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
.source ""


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;

.field public final synthetic b:Landroid/widget/FrameLayout;

.field public final synthetic c:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;


# virtual methods
.method public onFragmentViewCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5
    .param p1  # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p4, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$3;->a:Landroidx/fragment/app/Fragment;

    if-ne p2, p4, :cond_e

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentManager;->unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$3;->c:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$3;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3, p0}, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;->addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_e
    return-void
.end method
