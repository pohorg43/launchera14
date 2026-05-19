.class public abstract Ln3/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ls3/a;


# instance fields
.field public a:Lm3/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lm3/a;
    .registers 2

    iget-object p0, p0, Ln3/a;->a:Lm3/a;

    if-nez p0, :cond_9

    const-string v0, "mVertexArray"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    return-object p0
.end method

.method public dispose()V
    .registers 2

    iget-object p0, p0, Ln3/a;->a:Lm3/a;

    if-nez p0, :cond_9

    const-string v0, "mVertexArray"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Lm3/a;->dispose()V

    return-void
.end method
