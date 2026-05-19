.class Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$PagerAdapterObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$PagerAdapterObserver;->a:Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$PagerAdapterObserver;->a:Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->b()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$PagerAdapterObserver;->a:Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->b()V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .registers 4
    .param p3  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$PagerAdapterObserver;->a:Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->b()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$PagerAdapterObserver;->a:Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->b()V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .registers 4

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$PagerAdapterObserver;->a:Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->b()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$PagerAdapterObserver;->a:Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->b()V

    return-void
.end method
