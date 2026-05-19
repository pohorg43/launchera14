.class interface abstract Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$AnimationProvider;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnimationProvider"
.end annotation


# virtual methods
.method public abstract get(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .param p1  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/window/TransitionInfo$Change;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
