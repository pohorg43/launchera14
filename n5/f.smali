.class public final Ln5/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La6/r;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nReflectKotlinClassFinder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReflectKotlinClassFinder.kt\norg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClassFinder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,62:1\n1#2:63\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/ClassLoader;

.field public final b:Lv6/d;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 3

    const-string v0, "classLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5/f;->a:Ljava/lang/ClassLoader;

    new-instance p1, Lv6/d;

    invoke-direct {p1}, Lv6/d;-><init>()V

    iput-object p1, p0, Ln5/f;->b:Lv6/d;

    return-void
.end method


# virtual methods
.method public a(Ly5/g;Lg6/e;)La6/r$a;
    .registers 4

    const-string v0, "javaClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jvmMetadataVersion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ly5/g;->e()Lh6/c;

    move-result-object p1

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lh6/c;->b()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_17

    goto :goto_1c

    :cond_17
    invoke-virtual {p0, p1}, Ln5/f;->d(Ljava/lang/String;)La6/r$a;

    move-result-object p0

    return-object p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public b(Lh6/c;)Ljava/io/InputStream;
    .registers 3

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lf5/j;->j:Lh6/f;

    invoke-virtual {p1, v0}, Lh6/c;->i(Lh6/f;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 p0, 0x0

    return-object p0

    :cond_f
    iget-object p0, p0, Ln5/f;->b:Lv6/d;

    sget-object v0, Lv6/a;->q:Lv6/a;

    invoke-virtual {v0, p1}, Lv6/a;->a(Lh6/c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv6/d;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public c(Lh6/b;Lg6/e;)La6/r$a;
    .registers 7

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jvmMetadataVersion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lh6/b;->i()Lh6/c;

    move-result-object p2

    invoke-virtual {p2}, Lh6/c;->b()Ljava/lang/String;

    move-result-object p2

    const-string v0, "relativeClassName.asString()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x2e

    const/16 v1, 0x24

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {p2, v0, v1, v2, v3}, Lk7/m;->p(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lh6/b;->h()Lh6/c;

    move-result-object v1

    invoke-virtual {v1}, Lh6/c;->d()Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_42

    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lh6/b;->h()Lh6/c;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_42
    invoke-virtual {p0, p2}, Ln5/f;->d(Ljava/lang/String;)La6/r$a;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/String;)La6/r$a;
    .registers 4

    iget-object p0, p0, Ln5/f;->a:Ljava/lang/ClassLoader;

    invoke-static {p0, p1}, Lv1/m;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_16

    invoke-static {p0}, Ln5/e;->a(Ljava/lang/Class;)Ln5/e;

    move-result-object p0

    if-eqz p0, :cond_16

    new-instance v0, La6/r$a$b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, La6/r$a$b;-><init>(La6/t;[BI)V

    move-object p1, v0

    :cond_16
    return-object p1
.end method
