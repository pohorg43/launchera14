.class Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;)V
    .registers 2

    iput-object p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$1;->this$0:Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$1;->this$0:Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;

    invoke-static {v0}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->access$000(Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;)Landroidx/core/widget/ScrollerCompat;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$1;->this$0:Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;

    invoke-static {v0}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->access$000(Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;)Landroidx/core/widget/ScrollerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$1;->this$0:Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;

    invoke-static {v0}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->access$100(Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->access$200(Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$1;->this$0:Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;

    invoke-static {v0}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->access$300(Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object p0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$1;->this$0:Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;

    invoke-static {p0}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->access$400(Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_2c
    return-void
.end method
