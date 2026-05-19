.class public final synthetic Lcom/oplus/quickstep/gesture/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:J

.field public final synthetic e:Landroid/view/animation/Interpolator;

.field public final synthetic f:Lcom/android/quickstep/GestureState$GestureEndTarget;

.field public final synthetic g:Landroid/graphics/PointF;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/h;->a:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iput p2, p0, Lcom/oplus/quickstep/gesture/h;->b:F

    iput p3, p0, Lcom/oplus/quickstep/gesture/h;->c:F

    iput-wide p4, p0, Lcom/oplus/quickstep/gesture/h;->d:J

    iput-object p6, p0, Lcom/oplus/quickstep/gesture/h;->e:Landroid/view/animation/Interpolator;

    iput-object p7, p0, Lcom/oplus/quickstep/gesture/h;->f:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iput-object p8, p0, Lcom/oplus/quickstep/gesture/h;->g:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/h;->a:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget v1, p0, Lcom/oplus/quickstep/gesture/h;->b:F

    iget v2, p0, Lcom/oplus/quickstep/gesture/h;->c:F

    iget-wide v3, p0, Lcom/oplus/quickstep/gesture/h;->d:J

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/h;->e:Landroid/view/animation/Interpolator;

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/h;->f:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iget-object v7, p0, Lcom/oplus/quickstep/gesture/h;->g:Landroid/graphics/PointF;

    invoke-static/range {v0 .. v7}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->h1(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    return-void
.end method
