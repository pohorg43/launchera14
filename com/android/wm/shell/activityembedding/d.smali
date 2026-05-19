.class public final synthetic Lcom/android/wm/shell/activityembedding/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;

.field public final synthetic b:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/activityembedding/d;->a:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;

    iput-object p2, p0, Lcom/android/wm/shell/activityembedding/d;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/d;->a:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/d;->b:Landroid/os/IBinder;

    invoke-static {v0, p0}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->c(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;Landroid/os/IBinder;)V

    return-void
.end method
