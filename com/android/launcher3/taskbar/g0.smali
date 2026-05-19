.class public final synthetic Lcom/android/launcher3/taskbar/g0;
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

.field public final synthetic f:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/OplusTaskbarView;IIILandroid/util/SparseArray;I)V
    .registers 7

    iput p6, p0, Lcom/android/launcher3/taskbar/g0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/g0;->b:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    iput p2, p0, Lcom/android/launcher3/taskbar/g0;->c:I

    iput p3, p0, Lcom/android/launcher3/taskbar/g0;->d:I

    iput p4, p0, Lcom/android/launcher3/taskbar/g0;->e:I

    iput-object p5, p0, Lcom/android/launcher3/taskbar/g0;->f:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 14

    iget v0, p0, Lcom/android/launcher3/taskbar/g0;->a:I

    packed-switch v0, :pswitch_data_24

    goto :goto_15

    :pswitch_6  #0x0
    iget-object v1, p0, Lcom/android/launcher3/taskbar/g0;->b:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    iget v2, p0, Lcom/android/launcher3/taskbar/g0;->c:I

    iget v3, p0, Lcom/android/launcher3/taskbar/g0;->d:I

    iget v4, p0, Lcom/android/launcher3/taskbar/g0;->e:I

    iget-object v5, p0, Lcom/android/launcher3/taskbar/g0;->f:Landroid/util/SparseArray;

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->c(Lcom/android/launcher3/taskbar/OplusTaskbarView;IIILandroid/util/SparseArray;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_15
    iget-object v6, p0, Lcom/android/launcher3/taskbar/g0;->b:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    iget v7, p0, Lcom/android/launcher3/taskbar/g0;->c:I

    iget v8, p0, Lcom/android/launcher3/taskbar/g0;->d:I

    iget v9, p0, Lcom/android/launcher3/taskbar/g0;->e:I

    iget-object v10, p0, Lcom/android/launcher3/taskbar/g0;->f:Landroid/util/SparseArray;

    move-object v11, p1

    invoke-static/range {v6 .. v11}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->d(Lcom/android/launcher3/taskbar/OplusTaskbarView;IIILandroid/util/SparseArray;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
