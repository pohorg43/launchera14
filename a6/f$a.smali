.class public abstract La6/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La6/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La6/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:La6/f;


# direct methods
.method public constructor <init>(La6/f;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, La6/f$a;->a:La6/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lh6/f;Lm6/f;)V
    .registers 4

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lm6/r;

    invoke-direct {v0, p2}, Lm6/r;-><init>(Lm6/f;)V

    invoke-virtual {p0, p1, v0}, La6/f$a;->g(Lh6/f;Lm6/g;)V

    return-void
.end method

.method public c(Lh6/f;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, La6/f$a;->a:La6/f;

    invoke-static {v0, p1, p2}, La6/f;->x(La6/f;Lh6/f;Ljava/lang/Object;)Lm6/g;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, La6/f$a;->g(Lh6/f;Lm6/g;)V

    return-void
.end method

.method public d(Lh6/f;)La6/t$b;
    .registers 4

    new-instance v0, La6/f$a$b;

    iget-object v1, p0, La6/f$a;->a:La6/f;

    invoke-direct {v0, v1, p1, p0}, La6/f$a$b;-><init>(La6/f;Lh6/f;La6/f$a;)V

    return-object v0
.end method

.method public e(Lh6/f;Lh6/b;Lh6/f;)V
    .registers 5

    const-string v0, "enumClassId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumEntryName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lm6/j;

    invoke-direct {v0, p2, p3}, Lm6/j;-><init>(Lh6/b;Lh6/f;)V

    invoke-virtual {p0, p1, v0}, La6/f$a;->g(Lh6/f;Lm6/g;)V

    return-void
.end method

.method public f(Lh6/f;Lh6/b;)La6/t$a;
    .registers 7

    const-string v0, "classId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, La6/f$a;->a:La6/f;

    sget-object v2, Li5/v0;->a:Li5/v0;

    const-string v3, "NO_SOURCE"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p2, v2, v0}, La6/f;->s(Lh6/b;Li5/v0;Ljava/util/List;)La6/t$a;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, La6/f$a$a;

    invoke-direct {v1, p2, p0, p1, v0}, La6/f$a$a;-><init>(La6/t$a;La6/f$a;Lh6/f;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public abstract g(Lh6/f;Lm6/g;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            "Lm6/g<",
            "*>;)V"
        }
    .end annotation
.end method
