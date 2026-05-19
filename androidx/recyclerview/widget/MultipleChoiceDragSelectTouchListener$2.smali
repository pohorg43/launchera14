.class Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->startSpeedAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;

.field public final synthetic val$endValue:I

.field public final synthetic val$startValue:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;II)V
    .registers 4

    iput-object p1, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$2;->this$0:Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;

    iput p2, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$2;->val$startValue:I

    iput p3, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$2;->val$endValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$2;->this$0:Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;

    invoke-static {v0}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->access$100(Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;)I

    move-result v0

    if-eq p1, v0, :cond_42

    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$2;->this$0:Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;

    invoke-static {v0, p1}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->access$102(Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;I)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mScrollDistance:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$2;->this$0:Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;

    invoke-static {v0}, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;->access$100(Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",startValue:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$2;->val$startValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",endValue:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/recyclerview/widget/MultipleChoiceDragSelectTouchListener$2;->val$endValue:I

    const-string v0, "MultipleChoiceDragSelectTouchListener"

    invoke-static {p1, p0, v0}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_42
    return-void
.end method
