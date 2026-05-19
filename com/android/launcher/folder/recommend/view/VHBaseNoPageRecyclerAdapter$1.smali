.class Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;->onBindViewHolder(Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$ItemViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;

.field public final synthetic val$data:Ljava/lang/Object;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;ILjava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$1;->this$0:Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;

    iput p2, p0, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$1;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$1;->this$0:Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;

    iget-object v0, v0, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;->mItemClickListener:Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$OnItemClickListener;

    iget v1, p0, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$1;->val$position:I

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$1;->val$data:Ljava/lang/Object;

    invoke-interface {v0, p1, v1, p0}, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method
