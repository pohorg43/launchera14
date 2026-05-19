.class Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->exitZoom(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;

.field public final synthetic val$posX:I


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;I)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler$1;->this$0:Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;

    iput p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler$1;->val$posX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler$1;->this$0:Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;

    iget p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler$1;->val$posX:I

    invoke-virtual {v0, p0, p1}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->calculateAndUpdateSurface(II)V

    return-void
.end method
