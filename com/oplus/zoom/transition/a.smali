.class public final synthetic Lcom/oplus/zoom/transition/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/zoom/transition/ZoomTransitionController$FinishCallback;


# instance fields
.field public final synthetic a:Lcom/oplus/zoom/transition/ZoomTransitionController;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/zoom/transition/ZoomTransitionController;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/transition/a;->a:Lcom/oplus/zoom/transition/ZoomTransitionController;

    iput p2, p0, Lcom/oplus/zoom/transition/a;->b:I

    iput p3, p0, Lcom/oplus/zoom/transition/a;->c:I

    return-void
.end method


# virtual methods
.method public final onAnimationFinish()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/transition/a;->a:Lcom/oplus/zoom/transition/ZoomTransitionController;

    iget v1, p0, Lcom/oplus/zoom/transition/a;->b:I

    iget p0, p0, Lcom/oplus/zoom/transition/a;->c:I

    invoke-static {v0, v1, p0}, Lcom/oplus/zoom/transition/ZoomTransitionController;->a(Lcom/oplus/zoom/transition/ZoomTransitionController;II)V

    return-void
.end method
