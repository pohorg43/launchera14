.class public final synthetic Lcom/android/launcher3/folder/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;I)V
    .registers 4

    iput p2, p0, Lcom/android/launcher3/folder/q;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/q;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/folder/q;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/folder/q;->b:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->d(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_c
    iget-object p0, p0, Lcom/android/launcher3/folder/q;->b:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->d(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
