.class public final synthetic Lcom/android/quickstep/util/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/util/OplusRectFSpringAnim;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/m;->a:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Lcom/android/quickstep/util/animation/DynamicAnimation;FF)V
    .registers 4

    iget-object p0, p0, Lcom/android/quickstep/util/m;->a:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->k(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/quickstep/util/animation/DynamicAnimation;FF)V

    return-void
.end method
