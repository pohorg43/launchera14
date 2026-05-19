.class public final synthetic Lcom/android/launcher3/anim/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/anim/SpringAnimationBuilder;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/anim/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/anim/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 3

    iget v0, p0, Lcom/android/launcher3/anim/a;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/anim/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->getInterpolatedValue(F)F

    move-result p0

    return p0

    :goto_f
    iget-object p0, p0, Lcom/android/launcher3/anim/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->H0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)F

    move-result p0

    return p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
