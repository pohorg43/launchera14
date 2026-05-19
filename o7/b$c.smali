.class public final Lo7/b$c;
.super Lm7/e;
.source ""

# interfaces
.implements Lm7/a1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo7/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Lo7/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/k<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:Ll4/f;


# direct methods
.method public constructor <init>(Lo7/b;Lo7/k;ILl4/f;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo7/k<",
            "TE;>;I",
            "Ll4/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lm7/e;-><init>()V

    iput-object p2, p0, Lo7/b$c;->a:Lo7/k;

    iput p3, p0, Lo7/b$c;->b:I

    iput-object p4, p0, Lo7/b$c;->c:Ll4/f;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 5

    iget-object v0, p0, Lo7/b$c;->a:Lo7/k;

    iget v1, p0, Lo7/b$c;->b:I

    iget-object p0, p0, Lo7/b$c;->c:Ll4/f;

    iget-object v2, v0, Lo7/k;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1}, Lo7/k;->q(I)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v0, v0, Lo7/k;->e:Lo7/b;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lo7/b;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v2, p0}, Lr7/x;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ll4/f;)V

    :cond_21
    return-void
.end method

.method public g(Ljava/lang/Throwable;)V
    .registers 2

    invoke-virtual {p0}, Lo7/b$c;->dispose()V

    return-void
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0}, Lo7/b$c;->dispose()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
