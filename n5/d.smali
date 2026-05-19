.class public final Ln5/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lr5/s;


# instance fields
.field public final a:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 3

    const-string v0, "classLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5/d;->a:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public a(Lh6/c;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/c;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "packageFqName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public b(Lh6/c;Z)Ly5/u;
    .registers 3

    const-string p0, "fqName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lo5/c0;

    invoke-direct {p0, p1}, Lo5/c0;-><init>(Lh6/c;)V

    return-object p0
.end method

.method public c(Lr5/s$a;)Ly5/g;
    .registers 7

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lr5/s$a;->a:Lh6/b;

    invoke-virtual {p1}, Lh6/b;->h()Lh6/c;

    move-result-object v0

    const-string v1, "classId.packageFqName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lh6/b;->i()Lh6/c;

    move-result-object p1

    invoke-virtual {p1}, Lh6/c;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "classId.relativeClassName.asString()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x2e

    const/16 v2, 0x24

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {p1, v1, v2, v3, v4}, Lk7/m;->p(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lh6/c;->d()Z

    move-result v2

    if-eqz v2, :cond_2e

    goto :goto_44

    :cond_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lh6/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_44
    iget-object p0, p0, Ln5/d;->a:Ljava/lang/ClassLoader;

    invoke-static {p0, p1}, Lv1/m;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_52

    new-instance p1, Lo5/s;

    invoke-direct {p1, p0}, Lo5/s;-><init>(Ljava/lang/Class;)V

    goto :goto_53

    :cond_52
    const/4 p1, 0x0

    :goto_53
    return-object p1
.end method
