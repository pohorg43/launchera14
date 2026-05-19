.class public final synthetic Lcom/android/common/util/r0;
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

    iput p2, p0, Lcom/android/common/util/r0;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_15

    const/4 v0, 0x2

    if-eq p2, v0, :cond_f

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/r0;->b:Landroid/view/View;

    return-void

    :cond_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/r0;->b:Landroid/view/View;

    return-void

    :cond_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/r0;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget v0, p0, Lcom/android/common/util/r0;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_18

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/common/util/r0;->b:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->b(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_c  #0x1
    iget-object p0, p0, Lcom/android/common/util/r0;->b:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->e(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_12  #0x0
    iget-object p0, p0, Lcom/android/common/util/r0;->b:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/common/util/OplusLauncherAnimUtils$Creater;->a(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_18
    iget-object p0, p0, Lcom/android/common/util/r0;->b:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->a(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_12  #00000000
        :pswitch_c  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
