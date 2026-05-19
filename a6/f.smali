.class public final La6/f;
.super La6/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La6/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La6/a<",
        "Lj5/c;",
        "Lm6/g<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final c:Li5/e0;

.field public final d:Li5/g0;

.field public final e:Lu6/e;

.field public f:Lg6/e;


# direct methods
.method public constructor <init>(Li5/e0;Li5/g0;Lx6/m;La6/r;)V
    .registers 6

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinClassFinder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, p4}, La6/a;-><init>(Lx6/m;La6/r;)V

    iput-object p1, p0, La6/f;->c:Li5/e0;

    iput-object p2, p0, La6/f;->d:Li5/g0;

    new-instance p3, Lu6/e;

    invoke-direct {p3, p1, p2}, Lu6/e;-><init>(Li5/e0;Li5/g0;)V

    iput-object p3, p0, La6/f;->e:Lu6/e;

    sget-object p1, Lg6/e;->g:Lg6/e;

    iput-object p1, p0, La6/f;->f:Lg6/e;

    return-void
.end method

.method public static final x(La6/f;Lh6/f;Ljava/lang/Object;)Lm6/g;
    .registers 4

    sget-object v0, Lm6/h;->a:Lm6/h;

    iget-object p0, p0, La6/f;->c:Li5/e0;

    invoke-virtual {v0, p2, p0}, Lm6/h;->b(Ljava/lang/Object;Li5/e0;)Lm6/g;

    move-result-object p0

    if-nez p0, :cond_26

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported annotation argument: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "message"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lm6/k$a;

    invoke-direct {p1, p0}, Lm6/k$a;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :cond_26
    return-object p0
.end method


# virtual methods
.method public s(Lh6/b;Li5/v0;Ljava/util/List;)La6/t$a;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/b;",
            "Li5/v0;",
            "Ljava/util/List<",
            "Lj5/c;",
            ">;)",
            "La6/t$a;"
        }
    .end annotation

    const-string v0, "annotationClassId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La6/f;->c:Li5/e0;

    iget-object v1, p0, La6/f;->d:Li5/g0;

    invoke-static {v0, p1, v1}, Li5/w;->c(Li5/e0;Lh6/b;Li5/g0;)Li5/e;

    move-result-object v4

    new-instance v0, La6/f$b;

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p3

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, La6/f$b;-><init>(La6/f;Li5/e;Lh6/b;Ljava/util/List;Li5/v0;)V

    return-object v0
.end method
