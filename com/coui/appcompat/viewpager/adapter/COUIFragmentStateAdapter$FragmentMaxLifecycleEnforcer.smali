.class Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FragmentMaxLifecycleEnforcer"
.end annotation


# instance fields
.field public a:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public b:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field public c:Landroidx/lifecycle/LifecycleEventObserver;

.field public d:Lcom/coui/appcompat/viewpager/COUIViewPager2;

.field public final synthetic e:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->e:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;)Lcom/coui/appcompat/viewpager/COUIViewPager2;
    .registers 4
    .param p1  # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;

    if-eqz p1, :cond_b

    check-cast p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;

    return-object p0

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected COUIViewPager instance. Got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Z)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->e:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method
