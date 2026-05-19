.class Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer$2;
.super Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$DataSetChangeObserver;
.source ""


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer$2;->a:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$DataSetChangeObserver;-><init>(Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$1;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer$2;->a:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->b(Z)V

    const/4 p0, 0x0

    throw p0
.end method
