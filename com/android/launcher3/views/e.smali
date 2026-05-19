.class public final synthetic Lcom/android/launcher3/views/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:F

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/views/OplusFloatingIconView;FLjava/util/function/Supplier;Z)V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/views/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/e;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/views/e;->c:F

    iput-object p3, p0, Lcom/android/launcher3/views/e;->d:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/android/launcher3/views/e;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;FZLandroid/graphics/PointF;)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/views/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/e;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/views/e;->c:F

    iput-boolean p3, p0, Lcom/android/launcher3/views/e;->e:Z

    iput-object p4, p0, Lcom/android/launcher3/views/e;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/views/e;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_16

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/views/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/views/OplusFloatingIconView;

    iget v1, p0, Lcom/android/launcher3/views/e;->c:F

    iget-object v2, p0, Lcom/android/launcher3/views/e;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/function/Supplier;

    iget-boolean p0, p0, Lcom/android/launcher3/views/e;->e:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher3/views/OplusFloatingIconView;->j(Lcom/android/launcher3/views/OplusFloatingIconView;FLjava/util/function/Supplier;Z)V

    return-void

    :goto_16
    iget-object v0, p0, Lcom/android/launcher3/views/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/AbsSwipeUpHandler;

    iget v1, p0, Lcom/android/launcher3/views/e;->c:F

    iget-boolean v2, p0, Lcom/android/launcher3/views/e;->e:Z

    iget-object p0, p0, Lcom/android/launcher3/views/e;->d:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PointF;

    invoke-static {v0, v1, v2, p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->S(Lcom/android/quickstep/AbsSwipeUpHandler;FZLandroid/graphics/PointF;)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
