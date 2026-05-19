.class public final synthetic Lcom/oplus/quickstep/gesture/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:J

.field public final synthetic f:Landroid/view/animation/Interpolator;

.field public final synthetic g:Lcom/android/quickstep/GestureState$GestureEndTarget;

.field public final synthetic h:Landroid/graphics/PointF;

.field public final synthetic i:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V
    .registers 11

    const/4 v0, 0x3

    iput v0, p0, Lcom/oplus/quickstep/gesture/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/f;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/oplus/quickstep/gesture/f;->c:F

    iput p3, p0, Lcom/oplus/quickstep/gesture/f;->d:F

    iput-wide p4, p0, Lcom/oplus/quickstep/gesture/f;->e:J

    iput-object p6, p0, Lcom/oplus/quickstep/gesture/f;->f:Landroid/view/animation/Interpolator;

    iput-object p7, p0, Lcom/oplus/quickstep/gesture/f;->g:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iput-object p8, p0, Lcom/oplus/quickstep/gesture/f;->h:Landroid/graphics/PointF;

    iput-boolean p9, p0, Lcom/oplus/quickstep/gesture/f;->i:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;ZI)V
    .registers 12

    iput p10, p0, Lcom/oplus/quickstep/gesture/f;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/f;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/oplus/quickstep/gesture/f;->c:F

    iput p3, p0, Lcom/oplus/quickstep/gesture/f;->d:F

    iput-wide p4, p0, Lcom/oplus/quickstep/gesture/f;->e:J

    iput-object p6, p0, Lcom/oplus/quickstep/gesture/f;->f:Landroid/view/animation/Interpolator;

    iput-object p7, p0, Lcom/oplus/quickstep/gesture/f;->g:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iput-object p8, p0, Lcom/oplus/quickstep/gesture/f;->h:Landroid/graphics/PointF;

    iput-boolean p9, p0, Lcom/oplus/quickstep/gesture/f;->i:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    iget v0, p0, Lcom/oplus/quickstep/gesture/f;->a:I

    packed-switch v0, :pswitch_data_62

    goto :goto_4b

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/f;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget v2, p0, Lcom/oplus/quickstep/gesture/f;->c:F

    iget v3, p0, Lcom/oplus/quickstep/gesture/f;->d:F

    iget-wide v4, p0, Lcom/oplus/quickstep/gesture/f;->e:J

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/f;->f:Landroid/view/animation/Interpolator;

    iget-object v7, p0, Lcom/oplus/quickstep/gesture/f;->g:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iget-object v8, p0, Lcom/oplus/quickstep/gesture/f;->h:Landroid/graphics/PointF;

    iget-boolean v9, p0, Lcom/oplus/quickstep/gesture/f;->i:Z

    invoke-static/range {v1 .. v9}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->e1(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V

    return-void

    :pswitch_1d  #0x1
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/f;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget v2, p0, Lcom/oplus/quickstep/gesture/f;->c:F

    iget v3, p0, Lcom/oplus/quickstep/gesture/f;->d:F

    iget-wide v4, p0, Lcom/oplus/quickstep/gesture/f;->e:J

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/f;->f:Landroid/view/animation/Interpolator;

    iget-object v7, p0, Lcom/oplus/quickstep/gesture/f;->g:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iget-object v8, p0, Lcom/oplus/quickstep/gesture/f;->h:Landroid/graphics/PointF;

    iget-boolean v9, p0, Lcom/oplus/quickstep/gesture/f;->i:Z

    invoke-static/range {v1 .. v9}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->W0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V

    return-void

    :pswitch_34  #0x0
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/f;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget v2, p0, Lcom/oplus/quickstep/gesture/f;->c:F

    iget v3, p0, Lcom/oplus/quickstep/gesture/f;->d:F

    iget-wide v4, p0, Lcom/oplus/quickstep/gesture/f;->e:J

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/f;->f:Landroid/view/animation/Interpolator;

    iget-object v7, p0, Lcom/oplus/quickstep/gesture/f;->g:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iget-object v8, p0, Lcom/oplus/quickstep/gesture/f;->h:Landroid/graphics/PointF;

    iget-boolean v9, p0, Lcom/oplus/quickstep/gesture/f;->i:Z

    invoke-static/range {v1 .. v9}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->M0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V

    return-void

    :goto_4b
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/f;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/quickstep/AbsSwipeUpHandler;

    iget v2, p0, Lcom/oplus/quickstep/gesture/f;->c:F

    iget v3, p0, Lcom/oplus/quickstep/gesture/f;->d:F

    iget-wide v4, p0, Lcom/oplus/quickstep/gesture/f;->e:J

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/f;->f:Landroid/view/animation/Interpolator;

    iget-object v7, p0, Lcom/oplus/quickstep/gesture/f;->g:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iget-object v8, p0, Lcom/oplus/quickstep/gesture/f;->h:Landroid/graphics/PointF;

    iget-boolean v9, p0, Lcom/oplus/quickstep/gesture/f;->i:Z

    invoke-static/range {v1 .. v9}, Lcom/android/quickstep/AbsSwipeUpHandler;->o(Lcom/android/quickstep/AbsSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;Z)V

    return-void

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_34  #00000000
        :pswitch_1d  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
