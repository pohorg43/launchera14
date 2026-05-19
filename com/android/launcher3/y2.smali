.class public final synthetic Lcom/android/launcher3/y2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:F

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;FF)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/y2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/y2;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/y2;->c:F

    iput p3, p0, Lcom/android/launcher3/y2;->d:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;FF)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/y2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/y2;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/y2;->c:F

    iput p3, p0, Lcom/android/launcher3/y2;->d:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/y2;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/y2;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/y2;->c:F

    iget p0, p0, Lcom/android/launcher3/y2;->d:F

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/QuickstepTransitionManager;->g(Landroid/view/View;FF)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/android/launcher3/y2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;

    iget v1, p0, Lcom/android/launcher3/y2;->c:F

    iget p0, p0, Lcom/android/launcher3/y2;->d:F

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->b(Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;FF)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
