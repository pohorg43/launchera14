.class public final synthetic Lp0/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lp0/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp0/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lp0/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp0/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 5

    iget v0, p0, Lp0/b;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lp0/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->a(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void

    :goto_e
    iget-object p0, p0, Lp0/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;->b(Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
