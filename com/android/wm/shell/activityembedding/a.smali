.class public final synthetic Lcom/android/wm/shell/activityembedding/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/activityembedding/a;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/android/wm/shell/activityembedding/a;->b:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/a;->a:Ljava/util/List;

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/a;->b:Landroid/animation/ValueAnimator;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->a(Ljava/util/List;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method
