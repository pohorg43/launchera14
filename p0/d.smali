.class public final synthetic Lp0/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lp0/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp0/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lp0/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp0/d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 5

    iget v0, p0, Lp0/d;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lp0/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->b(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void

    :goto_e
    iget-object p0, p0, Lp0/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    sget-object p1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->X:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
