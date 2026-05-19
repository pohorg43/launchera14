.class public final Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$PagerAdapterObserver;,
        Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;,
        Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;,
        Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$OnConfigureTabCallback;
    }
.end annotation


# static fields
.field public static h:Ljava/lang/reflect/Method;

.field public static i:Ljava/lang/reflect/Method;


# instance fields
.field public final a:Lcom/coui/appcompat/tablayout/COUITabLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/coui/appcompat/viewpager/COUIViewPager2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Z

.field public final d:Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$OnConfigureTabCallback;

.field public e:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public f:Z

.field public g:Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    :try_start_0
    const-class v0, Lcom/coui/appcompat/tablayout/COUITabLayout;

    const-string v1, "w"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/4 v7, 0x3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->h:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-class v0, Lcom/coui/appcompat/tablayout/COUITabLayout;

    const-string v1, "u"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v6, Lcom/coui/appcompat/tablayout/COUITab;

    aput-object v6, v2, v4

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->i:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_37
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_37} :catch_38

    return-void

    :catch_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t reflect into method TabLayout.setScrollPosition(int, float, boolean, boolean)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/coui/appcompat/tablayout/COUITabLayout;Lcom/coui/appcompat/viewpager/COUIViewPager2;Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$OnConfigureTabCallback;)V
    .registers 5
    .param p1  # Lcom/coui/appcompat/tablayout/COUITabLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/coui/appcompat/viewpager/COUIViewPager2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$OnConfigureTabCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->a:Lcom/coui/appcompat/tablayout/COUITabLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setUpdateindicatorposition(Z)V

    iput-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->b:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iput-boolean v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->c:Z

    iput-object p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->d:Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$OnConfigureTabCallback;

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method "

    const-string v2, " not found"

    invoke-static {v1, p0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-boolean v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->f:Z

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->b:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->e:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_59

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->f:Z

    new-instance v1, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->a:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->b:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-direct {v1, v2, v3}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;-><init>(Lcom/coui/appcompat/tablayout/COUITabLayout;Lcom/coui/appcompat/viewpager/COUIViewPager2;)V

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->b:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-object v2, v2, Lcom/coui/appcompat/viewpager/COUIViewPager2;->c:Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;

    iget-object v2, v2, Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->b:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-direct {v1, v2}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;-><init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;)V

    iput-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->g:Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->a:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object v3, v2, Lcom/coui/appcompat/tablayout/COUITabLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    iget-object v2, v2, Lcom/coui/appcompat/tablayout/COUITabLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    iget-boolean v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->c:Z

    if-eqz v1, :cond_49

    new-instance v1, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$PagerAdapterObserver;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$PagerAdapterObserver;-><init>(Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;)V

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->e:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_49
    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->b()V

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->a:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->b:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getCurrentItem()I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->w(IFZZ)V

    return-void

    :cond_59
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "TabLayoutMediator attached before ViewPager2 has an adapter"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_61
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "TabLayoutMediator is already attached"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->a:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->t()V

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->e:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    if-ge v2, v0, :cond_24

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->a:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->r()Lcom/coui/appcompat/tablayout/COUITab;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->d:Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$OnConfigureTabCallback;

    invoke-interface {v4, v3, v2}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$OnConfigureTabCallback;->b(Lcom/coui/appcompat/tablayout/COUITab;I)V

    iget-object v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->a:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v4, v3, v1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->l(Lcom/coui/appcompat/tablayout/COUITab;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_24
    if-lez v0, :cond_3f

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->b:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->a:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->q(I)Lcom/coui/appcompat/tablayout/COUITab;

    move-result-object v1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->a:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result p0

    if-eq v0, p0, :cond_3f

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Lcom/coui/appcompat/tablayout/COUITab;->b()V

    :cond_3f
    return-void
.end method
