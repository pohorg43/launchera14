.class public final synthetic Lcom/android/wm/shell/activityembedding/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$AnimationProvider;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/activityembedding/c;->a:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    return-void
.end method


# virtual methods
.method public final get(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/c;->a:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->loadOpenAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method
