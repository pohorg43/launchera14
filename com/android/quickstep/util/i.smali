.class public final synthetic Lcom/android/quickstep/util/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/util/OplusRectFSpringAnim;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/i;->a:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V
    .registers 5

    iget-object p0, p0, Lcom/android/quickstep/util/i;->a:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->g(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V

    return-void
.end method
