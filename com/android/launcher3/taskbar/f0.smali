.class public final synthetic Lcom/android/launcher3/taskbar/f0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/taskbar/OplusTaskbarView;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/OplusTaskbarView;IIII)V
    .registers 6

    iput p5, p0, Lcom/android/launcher3/taskbar/f0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/f0;->b:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    iput p2, p0, Lcom/android/launcher3/taskbar/f0;->c:I

    iput p3, p0, Lcom/android/launcher3/taskbar/f0;->d:I

    iput p4, p0, Lcom/android/launcher3/taskbar/f0;->e:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    iget v0, p0, Lcom/android/launcher3/taskbar/f0;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/f0;->b:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    iget v1, p0, Lcom/android/launcher3/taskbar/f0;->c:I

    iget v2, p0, Lcom/android/launcher3/taskbar/f0;->d:I

    iget p0, p0, Lcom/android/launcher3/taskbar/f0;->e:I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->b(Lcom/android/launcher3/taskbar/OplusTaskbarView;IIILandroid/animation/ValueAnimator;)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/android/launcher3/taskbar/f0;->b:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    iget v1, p0, Lcom/android/launcher3/taskbar/f0;->c:I

    iget v2, p0, Lcom/android/launcher3/taskbar/f0;->d:I

    iget p0, p0, Lcom/android/launcher3/taskbar/f0;->e:I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->e(Lcom/android/launcher3/taskbar/OplusTaskbarView;IIILandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
