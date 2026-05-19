.class public final Lm7/o0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Z

.field public static final b:Lm7/r0;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "kotlinx.coroutines.main.delay"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ly1/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lm7/o0;->a:Z

    if-nez v0, :cond_e

    sget-object v0, Lm7/n0;->h:Lm7/n0;

    goto :goto_1e

    :cond_e
    sget-object v0, Lm7/y0;->a:Lm7/y0;

    sget-object v0, Lr7/v;->a:Lm7/b2;

    invoke-virtual {v0}, Lm7/b2;->q()Lm7/b2;

    instance-of v1, v0, Lm7/r0;

    if-nez v1, :cond_1c

    sget-object v0, Lm7/n0;->h:Lm7/n0;

    goto :goto_1e

    :cond_1c
    check-cast v0, Lm7/r0;

    :goto_1e
    sput-object v0, Lm7/o0;->b:Lm7/r0;

    return-void
.end method
