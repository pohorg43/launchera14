.class public final Lv6/c;
.super Lu6/p;
.source ""

# interfaces
.implements Lf5/b;


# direct methods
.method public constructor <init>(Lh6/c;Lx6/m;Li5/e0;Lc6/m;Ld6/a;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 15

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lu6/p;-><init>(Lh6/c;Lx6/m;Li5/e0;Lc6/m;Le6/a;Lw6/i;)V

    return-void
.end method

.method public static final E0(Lh6/c;Lx6/m;Li5/e0;Ljava/io/InputStream;Z)Lv6/c;
    .registers 14

    const-string v0, "fqName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputStream"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<this>"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_19
    sget-object v0, Ld6/a;->f:Ld6/a;

    invoke-static {p3}, Ld6/a;->b(Ljava/io/InputStream;)Ld6/a;

    move-result-object v6

    sget-object v0, Ld6/a;->g:Ld6/a;

    const-string v1, "ourVersion"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v6, Le6/a;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_37

    iget v1, v0, Le6/a;->b:I

    if-nez v1, :cond_42

    iget v1, v6, Le6/a;->c:I

    iget v4, v0, Le6/a;->c:I

    if-ne v1, v4, :cond_42

    goto :goto_43

    :cond_37
    iget v4, v0, Le6/a;->b:I

    if-ne v1, v4, :cond_42

    iget v1, v6, Le6/a;->c:I

    iget v4, v0, Le6/a;->c:I

    if-gt v1, v4, :cond_42

    goto :goto_43

    :cond_42
    move v2, v3

    :goto_43
    const/4 v1, 0x0

    if-eqz v2, :cond_5d

    new-instance v2, Li6/f;

    invoke-direct {v2}, Li6/f;-><init>()V

    invoke-static {v2}, Ld6/b;->a(Li6/f;)V

    sget-object v3, Lc6/m;->k:Li6/r;

    check-cast v3, Li6/b;

    invoke-virtual {v3, p3, v2}, Li6/b;->d(Ljava/io/InputStream;Li6/f;)Li6/p;

    move-result-object v2

    invoke-virtual {v3, v2}, Li6/b;->b(Li6/p;)Li6/p;

    check-cast v2, Lc6/m;
    :try_end_5b
    .catchall {:try_start_19 .. :try_end_5b} :catchall_93

    move-object v5, v2

    goto :goto_5e

    :cond_5d
    move-object v5, v1

    :goto_5e
    invoke-static {p3, v1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v5, :cond_6f

    new-instance p3, Lv6/c;

    const/4 v8, 0x0

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lv6/c;-><init>(Lh6/c;Lx6/m;Li5/e0;Lc6/m;Ld6/a;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p3

    :cond_6f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Kotlin built-in definition format version is not supported: expected "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", actual "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". Please update Kotlin"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_93
    move-exception p0

    :try_start_94
    throw p0
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_95

    :catchall_95
    move-exception p1

    invoke-static {p3, p0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "builtins package fragment for "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ll5/c0;->e:Lh6/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lo6/c;->k(Li5/l;)Li5/e0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
