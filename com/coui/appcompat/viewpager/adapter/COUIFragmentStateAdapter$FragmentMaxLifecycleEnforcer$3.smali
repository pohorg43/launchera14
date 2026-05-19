.class Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->a:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 3
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->a:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->b(Z)V

    const/4 p0, 0x0

    throw p0
.end method
