.class public final Lr7/m$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr7/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Runnable;

.field public final synthetic b:Lr7/m;


# direct methods
.method public constructor <init>(Lr7/m;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lr7/m$a;->b:Lr7/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr7/m$a;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lr7/m$a;->a:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    goto :goto_d

    :catchall_7
    move-exception v1

    sget-object v2, Ll4/h;->a:Ll4/h;

    invoke-static {v2, v1}, Lm7/h0;->a(Ll4/f;Ljava/lang/Throwable;)V

    :goto_d
    iget-object v1, p0, Lr7/m$a;->b:Lr7/m;

    invoke-virtual {v1}, Lr7/m;->q()Ljava/lang/Runnable;

    move-result-object v1

    if-nez v1, :cond_16

    return-void

    :cond_16
    iput-object v1, p0, Lr7/m$a;->a:Ljava/lang/Runnable;

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lr7/m$a;->b:Lr7/m;

    iget-object v2, v1, Lr7/m;->a:Lm7/f0;

    invoke-virtual {v2, v1}, Lm7/f0;->isDispatchNeeded(Ll4/f;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lr7/m$a;->b:Lr7/m;

    iget-object v1, v0, Lr7/m;->a:Lm7/f0;

    invoke-virtual {v1, v0, p0}, Lm7/f0;->dispatch(Ll4/f;Ljava/lang/Runnable;)V

    return-void
.end method
