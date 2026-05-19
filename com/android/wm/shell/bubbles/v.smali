.class public final synthetic Lcom/android/wm/shell/bubbles/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;ILandroid/window/ScreenCapture$SynchronousScreenCaptureListener;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/bubbles/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/v;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/wm/shell/bubbles/v;->c:I

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/v;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/StackEducationView;ILandroid/graphics/PointF;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/bubbles/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/v;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/wm/shell/bubbles/v;->c:I

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/v;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/bubbles/v;->a:I

    packed-switch v0, :pswitch_data_22

    goto :goto_14

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/v;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget v1, p0, Lcom/android/wm/shell/bubbles/v;->c:I

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/v;->d:Ljava/lang/Object;

    check-cast p0, Landroid/window/ScreenCapture$SynchronousScreenCaptureListener;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->u(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;ILandroid/window/ScreenCapture$SynchronousScreenCaptureListener;)V

    return-void

    :goto_14
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/v;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/StackEducationView;

    iget v1, p0, Lcom/android/wm/shell/bubbles/v;->c:I

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/v;->d:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PointF;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/bubbles/StackEducationView;->b(Lcom/android/wm/shell/bubbles/StackEducationView;ILandroid/graphics/PointF;)V

    return-void

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
