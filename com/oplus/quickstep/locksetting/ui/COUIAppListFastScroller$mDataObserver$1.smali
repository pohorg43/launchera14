.class public final Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$mDataObserver$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$mDataObserver$1;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$mDataObserver$1;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-static {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$getMRecyclerView$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_11

    const-string v0, "mRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    invoke-static {p0, v0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$setMRealDy$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;I)V

    return-void
.end method
