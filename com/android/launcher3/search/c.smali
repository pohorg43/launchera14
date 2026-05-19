.class public final synthetic Lcom/android/launcher3/search/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/search/SearchEntryStateAnimation;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/search/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/search/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/RectFSpringAnim;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/search/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/search/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/search/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/search/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 6

    iget v0, p0, Lcom/android/launcher3/search/c;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/launcher3/search/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/util/RectFSpringAnim;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/util/RectFSpringAnim;->c(Lcom/android/quickstep/util/RectFSpringAnim;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void

    :pswitch_e  #0x0
    iget-object p0, p0, Lcom/android/launcher3/search/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->a(Lcom/android/launcher3/search/SearchEntryStateAnimation;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void

    :goto_16
    iget-object p0, p0, Lcom/android/launcher3/search/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;->c(Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
