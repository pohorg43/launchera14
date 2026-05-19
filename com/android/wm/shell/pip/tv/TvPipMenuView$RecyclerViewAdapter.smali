.class Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;
.super Lcom/android/internal/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/tv/TvPipMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter$ButtonViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/widget/RecyclerView$Adapter<",
        "Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter$ButtonViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wm/shell/pip/tv/TvPipAction;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/pip/tv/TvPipAction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;->mActionList:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;->mActionList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;->mActionList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .param p1  # Lcom/android/internal/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter$ButtonViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;->onBindViewHolder(Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter$ButtonViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter$ButtonViewHolder;I)V
    .registers 4
    .param p1  # Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter$ButtonViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;->mActionList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/pip/tv/TvPipAction;

    iget-object p1, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter$ButtonViewHolder;->mButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    invoke-static {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->access$200(Lcom/android/wm/shell/pip/tv/TvPipMenuView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/pip/tv/TvPipAction;->populateButton(Lcom/android/wm/shell/common/TvWindowMenuActionButton;Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 3
    .param p1  # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter$ButtonViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter$ButtonViewHolder;
    .registers 4
    .param p1  # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter$ButtonViewHolder;

    new-instance p2, Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    invoke-static {v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->access$100(Lcom/android/wm/shell/pip/tv/TvPipMenuView;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/wm/shell/common/TvWindowMenuActionButton;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter$ButtonViewHolder;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;Landroid/view/View;)V

    return-object p1
.end method
