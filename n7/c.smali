.class public final synthetic Ln7/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm7/a1;


# instance fields
.field public final synthetic a:Ln7/d;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ln7/d;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln7/c;->a:Ln7/d;

    iput-object p2, p0, Ln7/c;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .registers 2

    iget-object v0, p0, Ln7/c;->a:Ln7/d;

    iget-object p0, p0, Ln7/c;->b:Ljava/lang/Runnable;

    iget-object v0, v0, Ln7/d;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
