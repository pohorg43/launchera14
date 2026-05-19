.class public final La6/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lw6/i;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJvmPackagePartSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmPackagePartSource.kt\norg/jetbrains/kotlin/load/kotlin/JvmPackagePartSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,67:1\n1#2:68\n*E\n"
    }
.end annotation


# instance fields
.field public final b:Lp6/c;

.field public final c:Lp6/c;

.field public final d:La6/t;


# direct methods
.method public constructor <init>(La6/t;Lc6/l;Le6/c;Lu6/s;ZLw6/h;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La6/t;",
            "Lc6/l;",
            "Le6/c;",
            "Lu6/s<",
            "Lg6/e;",
            ">;Z",
            "Lw6/h;",
            ")V"
        }
    .end annotation

    const-string p4, "kotlinClass"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "packageProto"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "nameResolver"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abiStability"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, La6/t;->c()Lh6/b;

    move-result-object v1

    invoke-static {v1}, Lp6/c;->b(Lh6/b;)Lp6/c;

    move-result-object v1

    const-string v2, "byClassId(kotlinClass.classId)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, La6/t;->e()Lb6/a;

    move-result-object v2

    invoke-virtual {v2}, Lb6/a;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_33

    const/4 v3, 0x1

    goto :goto_34

    :cond_33
    const/4 v3, 0x0

    :goto_34
    if-eqz v3, :cond_3b

    invoke-static {v2}, Lp6/c;->d(Ljava/lang/String;)Lp6/c;

    move-result-object v2

    goto :goto_3c

    :cond_3b
    const/4 v2, 0x0

    :goto_3c
    const-string v3, "className"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, La6/n;->b:Lp6/c;

    iput-object v2, p0, La6/n;->c:Lp6/c;

    iput-object p1, p0, La6/n;->d:La6/t;

    sget-object p0, Lf6/a;->m:Li6/h$f;

    const-string p1, "packageModuleName"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p0}, Le6/e;->a(Li6/h$d;Li6/h$f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_6b

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    check-cast p3, Lg6/g;

    invoke-virtual {p3, p0}, Lg6/g;->getString(I)Ljava/lang/String;

    :cond_6b
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "Class \'"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, La6/n;->d()Lh6/b;

    move-result-object p0

    invoke-virtual {p0}, Lh6/b;->b()Lh6/c;

    move-result-object p0

    invoke-virtual {p0}, Lh6/c;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b()Li5/w0;
    .registers 2

    sget-object p0, Li5/w0;->a:Li5/w0;

    const-string v0, "NO_SOURCE_FILE"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final d()Lh6/b;
    .registers 6

    new-instance v0, Lh6/b;

    iget-object v1, p0, La6/n;->b:Lp6/c;

    iget-object v2, v1, Lp6/c;->a:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1a

    sget-object v1, Lh6/c;->c:Lh6/c;

    if-eqz v1, :cond_14

    goto :goto_2f

    :cond_14
    const/4 p0, 0x7

    invoke-static {p0}, Lp6/c;->a(I)V

    const/4 p0, 0x0

    throw p0

    :cond_1a
    new-instance v3, Lh6/c;

    iget-object v1, v1, Lp6/c;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    :goto_2f
    invoke-virtual {p0}, La6/n;->e()Lh6/f;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lh6/b;-><init>(Lh6/c;Lh6/f;)V

    return-object v0
.end method

.method public final e()Lh6/f;
    .registers 4

    iget-object p0, p0, La6/n;->b:Lp6/c;

    invoke-virtual {p0}, Lp6/c;->e()Ljava/lang/String;

    move-result-object p0

    const-string v0, "className.internalName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x2f

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lk7/q;->T(Ljava/lang/String;CLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p0

    const-string v0, "identifier(className.int….substringAfterLast(\'/\'))"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, La6/n;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, La6/n;->b:Lp6/c;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
