.class public Lc5/p0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc5/p0$a;,
        Lc5/p0$b;,
        Lc5/p0$c;
    }
.end annotation


# direct methods
.method public static synthetic a(I)V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "initializer"

    aput-object v2, v0, v1

    const-string v1, "kotlin/reflect/jvm/internal/ReflectProperties"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    if-eq p0, v2, :cond_17

    if-eq p0, v1, :cond_17

    const-string p0, "lazy"

    aput-object p0, v0, v1

    goto :goto_1b

    :cond_17
    const-string p0, "lazySoft"

    aput-object p0, v0, v1

    :goto_1b
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lkotlin/jvm/functions/Function0;)Lc5/p0$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;)",
            "Lc5/p0$b<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lc5/p0$b;

    invoke-direct {v0, p0}, Lc5/p0$b;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public static c(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Lc5/p0$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;)",
            "Lc5/p0$a<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_8

    new-instance v0, Lc5/p0$a;

    invoke-direct {v0, p0, p1}, Lc5/p0$a;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-object v0

    :cond_8
    const/4 p0, 0x1

    invoke-static {p0}, Lc5/p0;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static d(Lkotlin/jvm/functions/Function0;)Lc5/p0$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;)",
            "Lc5/p0$a<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-static {v0, p0}, Lc5/p0;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Lc5/p0$a;

    move-result-object p0

    return-object p0

    :cond_8
    const/4 p0, 0x2

    invoke-static {p0}, Lc5/p0;->a(I)V

    throw v0
.end method
