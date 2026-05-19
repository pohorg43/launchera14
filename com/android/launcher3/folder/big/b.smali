.class public final synthetic Lcom/android/launcher3/folder/big/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:F

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;Lkotlin/jvm/internal/Ref$FloatRef;FLkotlin/jvm/internal/Ref$FloatRef;F)V
    .registers 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/folder/big/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/folder/big/b;->c:Ljava/lang/Object;

    iput p3, p0, Lcom/android/launcher3/folder/big/b;->d:F

    iput-object p4, p0, Lcom/android/launcher3/folder/big/b;->e:Ljava/lang/Object;

    iput p5, p0, Lcom/android/launcher3/folder/big/b;->f:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;FFLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 7

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/folder/big/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/b;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/folder/big/b;->d:F

    iput p3, p0, Lcom/android/launcher3/folder/big/b;->f:F

    iput-object p4, p0, Lcom/android/launcher3/folder/big/b;->c:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/launcher3/folder/big/b;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 9

    iget v0, p0, Lcom/android/launcher3/folder/big/b;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_1e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/folder/big/b;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    iget-object v0, p0, Lcom/android/launcher3/folder/big/b;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/internal/Ref$FloatRef;

    iget v3, p0, Lcom/android/launcher3/folder/big/b;->d:F

    iget-object v0, p0, Lcom/android/launcher3/folder/big/b;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/internal/Ref$FloatRef;

    iget v5, p0, Lcom/android/launcher3/folder/big/b;->f:F

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->c(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;Lkotlin/jvm/internal/Ref$FloatRef;FLkotlin/jvm/internal/Ref$FloatRef;FLandroid/animation/ValueAnimator;)V

    return-void

    :goto_1e
    iget-object v0, p0, Lcom/android/launcher3/folder/big/b;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;

    iget v2, p0, Lcom/android/launcher3/folder/big/b;->d:F

    iget v3, p0, Lcom/android/launcher3/folder/big/b;->f:F

    iget-object v0, p0, Lcom/android/launcher3/folder/big/b;->c:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/launcher3/folder/big/b;->e:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Landroid/view/SurfaceControl;

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->a(Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;FFLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
