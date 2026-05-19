.class Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$1;->a:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3
    .param p1  # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$1;->a:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;

    iget-object v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;->a:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1, p0}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_9
    return-void
.end method
