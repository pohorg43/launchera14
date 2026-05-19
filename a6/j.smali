.class public final La6/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La6/j$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDeserializedDescriptorResolver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeserializedDescriptorResolver.kt\norg/jetbrains/kotlin/load/kotlin/DeserializedDescriptorResolver\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,154:1\n126#1,14:155\n126#1,14:169\n1#2:183\n*S KotlinDebug\n*F\n+ 1 DeserializedDescriptorResolver.kt\norg/jetbrains/kotlin/load/kotlin/DeserializedDescriptorResolver\n*L\n56#1:155,14\n68#1:169,14\n*E\n"
    }
.end annotation


# static fields
.field public static final b:La6/j$a;

.field public static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lb6/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lb6/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lg6/e;

.field public static final f:Lg6/e;

.field public static final g:Lg6/e;


# instance fields
.field public a:Lu6/k;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, La6/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La6/j$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, La6/j;->b:La6/j$a;

    sget-object v0, Lb6/a$a;->d:Lb6/a$a;

    invoke-static {v0}, Ly0/b;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, La6/j;->c:Ljava/util/Set;

    const/4 v0, 0x2

    new-array v0, v0, [Lb6/a$a;

    sget-object v1, Lb6/a$a;->e:Lb6/a$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lb6/a$a;->h:Lb6/a$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ly0/b;->h([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, La6/j;->d:Ljava/util/Set;

    new-instance v0, Lg6/e;

    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_4a

    invoke-direct {v0, v2}, Lg6/e;-><init>([I)V

    sput-object v0, La6/j;->e:Lg6/e;

    new-instance v0, Lg6/e;

    new-array v2, v1, [I

    fill-array-data v2, :array_54

    invoke-direct {v0, v2}, Lg6/e;-><init>([I)V

    sput-object v0, La6/j;->f:Lg6/e;

    new-instance v0, Lg6/e;

    new-array v1, v1, [I

    fill-array-data v1, :array_5e

    invoke-direct {v0, v1}, Lg6/e;-><init>([I)V

    sput-object v0, La6/j;->g:Lg6/e;

    return-void

    nop

    :array_4a
    .array-data 4
        0x1
        0x1
        0x2
    .end array-data

    :array_54
    .array-data 4
        0x1
        0x1
        0xb
    .end array-data

    :array_5e
    .array-data 4
        0x1
        0x1
        0xd
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li5/h0;La6/t;)Lr6/i;
    .registers 15

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, La6/j;->d:Ljava/util/Set;

    invoke-virtual {p0, p2, v0}, La6/j;->i(La6/t;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return-object v1

    :cond_14
    invoke-interface {p2}, La6/t;->e()Lb6/a;

    move-result-object v2

    iget-object v2, v2, Lb6/a;->e:[Ljava/lang/String;

    if-nez v2, :cond_1d

    return-object v1

    :cond_1d
    :try_start_1d
    invoke-static {v0, v2}, Lg6/h;->h([Ljava/lang/String;[Ljava/lang/String;)Lh4/j;

    move-result-object v0
    :try_end_21
    .catch Li6/j; {:try_start_1d .. :try_end_21} :catch_24
    .catchall {:try_start_1d .. :try_end_21} :catchall_22

    goto :goto_57

    :catchall_22
    move-exception v0

    goto :goto_40

    :catch_24
    move-exception v0

    :try_start_25
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not read data from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, La6/t;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_40
    .catchall {:try_start_25 .. :try_end_40} :catchall_22

    :goto_40
    invoke-virtual {p0}, La6/j;->f()Z

    move-result v2

    if-nez v2, :cond_a6

    invoke-interface {p2}, La6/t;->e()Lb6/a;

    move-result-object v2

    iget-object v2, v2, Lb6/a;->b:Lg6/e;

    invoke-virtual {p0}, La6/j;->e()Lg6/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg6/e;->b(Lg6/e;)Z

    move-result v2

    if-nez v2, :cond_a6

    move-object v0, v1

    :goto_57
    if-nez v0, :cond_5a

    return-object v1

    :cond_5a
    iget-object v1, v0, Lh4/j;->a:Ljava/lang/Object;

    check-cast v1, Lg6/f;

    iget-object v0, v0, Lh4/j;->b:Ljava/lang/Object;

    check-cast v0, Lc6/l;

    new-instance v9, La6/n;

    invoke-virtual {p0, p2}, La6/j;->d(La6/t;)Lu6/s;

    move-result-object v6

    invoke-virtual {p0, p2}, La6/j;->g(La6/t;)Z

    move-result v7

    invoke-virtual {p0, p2}, La6/j;->b(La6/t;)Lw6/h;

    move-result-object v8

    move-object v2, v9

    move-object v3, p2

    move-object v4, v0

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, La6/n;-><init>(La6/t;Lc6/l;Le6/c;Lu6/s;ZLw6/h;)V

    new-instance v11, Lw6/l;

    invoke-interface {p2}, La6/t;->e()Lb6/a;

    move-result-object p2

    iget-object v6, p2, Lb6/a;->b:Lg6/e;

    invoke-virtual {p0}, La6/j;->c()Lu6/k;

    move-result-object v8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "scope for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v10, La6/j$b;->a:La6/j$b;

    move-object v2, v11

    move-object v3, p1

    move-object v7, v9

    move-object v9, p0

    invoke-direct/range {v2 .. v10}, Lw6/l;-><init>(Li5/h0;Lc6/l;Le6/c;Le6/a;Lw6/i;Lu6/k;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-object v11

    :cond_a6
    throw v0
.end method

.method public final b(La6/t;)Lw6/h;
    .registers 7

    sget-object v0, Lw6/h;->a:Lw6/h;

    invoke-virtual {p0}, La6/j;->c()Lu6/k;

    move-result-object p0

    iget-object p0, p0, Lu6/k;->c:Lu6/l;

    invoke-interface {p0}, Lu6/l;->e()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_4d

    :cond_f
    invoke-interface {p1}, La6/t;->e()Lb6/a;

    move-result-object p0

    iget v1, p0, Lb6/a;->g:I

    const/16 v2, 0x40

    invoke-virtual {p0, v1, v2}, Lb6/a;->b(II)Z

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x20

    const/4 v4, 0x0

    if-eqz v1, :cond_2b

    iget v1, p0, Lb6/a;->g:I

    invoke-virtual {p0, v1, v3}, Lb6/a;->b(II)Z

    move-result p0

    if-nez p0, :cond_2b

    move p0, v2

    goto :goto_2c

    :cond_2b
    move p0, v4

    :goto_2c
    if-eqz p0, :cond_31

    sget-object v0, Lw6/h;->b:Lw6/h;

    goto :goto_4d

    :cond_31
    invoke-interface {p1}, La6/t;->e()Lb6/a;

    move-result-object p0

    iget p1, p0, Lb6/a;->g:I

    const/16 v1, 0x10

    invoke-virtual {p0, p1, v1}, Lb6/a;->b(II)Z

    move-result p1

    if-eqz p1, :cond_48

    iget p1, p0, Lb6/a;->g:I

    invoke-virtual {p0, p1, v3}, Lb6/a;->b(II)Z

    move-result p0

    if-nez p0, :cond_48

    goto :goto_49

    :cond_48
    move v2, v4

    :goto_49
    if-eqz v2, :cond_4d

    sget-object v0, Lw6/h;->c:Lw6/h;

    :cond_4d
    :goto_4d
    return-object v0
.end method

.method public final c()Lu6/k;
    .registers 1

    iget-object p0, p0, La6/j;->a:Lu6/k;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "components"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d(La6/t;)Lu6/s;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La6/t;",
            ")",
            "Lu6/s<",
            "Lg6/e;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, La6/j;->f()Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-interface {p1}, La6/t;->e()Lb6/a;

    move-result-object v0

    iget-object v0, v0, Lb6/a;->b:Lg6/e;

    invoke-virtual {p0}, La6/j;->e()Lg6/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg6/e;->b(Lg6/e;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_4d

    :cond_17
    new-instance v0, Lu6/s;

    invoke-interface {p1}, La6/t;->e()Lb6/a;

    move-result-object v1

    iget-object v2, v1, Lb6/a;->b:Lg6/e;

    sget-object v3, Lg6/e;->g:Lg6/e;

    invoke-virtual {p0}, La6/j;->e()Lg6/e;

    move-result-object v4

    invoke-virtual {p0}, La6/j;->e()Lg6/e;

    move-result-object p0

    invoke-interface {p1}, La6/t;->e()Lb6/a;

    move-result-object v1

    iget-object v1, v1, Lb6/a;->b:Lg6/e;

    iget-boolean v1, v1, Lg6/e;->f:Z

    if-eqz v1, :cond_35

    move-object v1, v3

    goto :goto_37

    :cond_35
    sget-object v1, Lg6/e;->h:Lg6/e;

    :goto_37
    invoke-virtual {v1, p0}, Lg6/e;->c(Lg6/e;)Z

    move-result v5

    if-eqz v5, :cond_3f

    move-object v5, v1

    goto :goto_40

    :cond_3f
    move-object v5, p0

    :goto_40
    invoke-interface {p1}, La6/t;->d()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, La6/t;->c()Lh6/b;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lu6/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lh6/b;)V

    return-object v0

    :cond_4d
    :goto_4d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final e()Lg6/e;
    .registers 1

    invoke-virtual {p0}, La6/j;->c()Lu6/k;

    move-result-object p0

    iget-object p0, p0, Lu6/k;->c:Lu6/l;

    invoke-static {p0}, Lm4/d;->h(Lu6/l;)Lg6/e;

    move-result-object p0

    return-object p0
.end method

.method public final f()Z
    .registers 1

    invoke-virtual {p0}, La6/j;->c()Lu6/k;

    move-result-object p0

    iget-object p0, p0, Lu6/k;->c:Lu6/l;

    invoke-interface {p0}, Lu6/l;->f()Z

    move-result p0

    return p0
.end method

.method public final g(La6/t;)Z
    .registers 7

    invoke-virtual {p0}, La6/j;->c()Lu6/k;

    move-result-object v0

    iget-object v0, v0, Lu6/k;->c:Lu6/l;

    invoke-interface {v0}, Lu6/l;->g()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_29

    invoke-interface {p1}, La6/t;->e()Lb6/a;

    move-result-object v0

    iget v4, v0, Lb6/a;->g:I

    invoke-virtual {v0, v4, v2}, Lb6/a;->b(II)Z

    move-result v0

    if-nez v0, :cond_56

    invoke-interface {p1}, La6/t;->e()Lb6/a;

    move-result-object v0

    iget-object v0, v0, Lb6/a;->b:Lg6/e;

    sget-object v4, La6/j;->e:Lg6/e;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    :cond_29
    invoke-virtual {p0}, La6/j;->c()Lu6/k;

    move-result-object p0

    iget-object p0, p0, Lu6/k;->c:Lu6/l;

    invoke-interface {p0}, Lu6/l;->b()Z

    move-result p0

    if-nez p0, :cond_51

    invoke-interface {p1}, La6/t;->e()Lb6/a;

    move-result-object p0

    iget v0, p0, Lb6/a;->g:I

    invoke-virtual {p0, v0, v2}, Lb6/a;->b(II)Z

    move-result p0

    if-eqz p0, :cond_51

    invoke-interface {p1}, La6/t;->e()Lb6/a;

    move-result-object p0

    iget-object p0, p0, Lb6/a;->b:Lg6/e;

    sget-object p1, La6/j;->f:Lg6/e;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_51

    move p0, v1

    goto :goto_52

    :cond_51
    move p0, v3

    :goto_52
    if-eqz p0, :cond_55

    goto :goto_56

    :cond_55
    move v1, v3

    :cond_56
    :goto_56
    return v1
.end method

.method public final h(La6/t;)Lu6/g;
    .registers 7

    const-string v0, "kotlinClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, La6/j;->c:Ljava/util/Set;

    invoke-virtual {p0, p1, v0}, La6/j;->i(La6/t;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return-object v1

    :cond_f
    invoke-interface {p1}, La6/t;->e()Lb6/a;

    move-result-object v2

    iget-object v2, v2, Lb6/a;->e:[Ljava/lang/String;

    if-nez v2, :cond_18

    return-object v1

    :cond_18
    :try_start_18
    invoke-static {v0, v2}, Lg6/h;->f([Ljava/lang/String;[Ljava/lang/String;)Lh4/j;

    move-result-object v0
    :try_end_1c
    .catch Li6/j; {:try_start_18 .. :try_end_1c} :catch_1f
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1d

    goto :goto_52

    :catchall_1d
    move-exception v0

    goto :goto_3b

    :catch_1f
    move-exception v0

    :try_start_20
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not read data from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, La6/t;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3b
    .catchall {:try_start_20 .. :try_end_3b} :catchall_1d

    :goto_3b
    invoke-virtual {p0}, La6/j;->f()Z

    move-result v2

    if-nez v2, :cond_7a

    invoke-interface {p1}, La6/t;->e()Lb6/a;

    move-result-object v2

    iget-object v2, v2, Lb6/a;->b:Lg6/e;

    invoke-virtual {p0}, La6/j;->e()Lg6/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg6/e;->b(Lg6/e;)Z

    move-result v2

    if-nez v2, :cond_7a

    move-object v0, v1

    :goto_52
    if-nez v0, :cond_55

    return-object v1

    :cond_55
    iget-object v1, v0, Lh4/j;->a:Ljava/lang/Object;

    check-cast v1, Lg6/f;

    iget-object v0, v0, Lh4/j;->b:Ljava/lang/Object;

    check-cast v0, Lc6/b;

    new-instance v2, La6/v;

    invoke-virtual {p0, p1}, La6/j;->d(La6/t;)Lu6/s;

    move-result-object v3

    invoke-virtual {p0, p1}, La6/j;->g(La6/t;)Z

    move-result v4

    invoke-virtual {p0, p1}, La6/j;->b(La6/t;)Lw6/h;

    move-result-object p0

    invoke-direct {v2, p1, v3, v4, p0}, La6/v;-><init>(La6/t;Lu6/s;ZLw6/h;)V

    new-instance p0, Lu6/g;

    invoke-interface {p1}, La6/t;->e()Lb6/a;

    move-result-object p1

    iget-object p1, p1, Lb6/a;->b:Lg6/e;

    invoke-direct {p0, v1, v0, p1, v2}, Lu6/g;-><init>(Le6/c;Lc6/b;Le6/a;Li5/v0;)V

    return-object p0

    :cond_7a
    throw v0
.end method

.method public final i(La6/t;Ljava/util/Set;)[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La6/t;",
            "Ljava/util/Set<",
            "+",
            "Lb6/a$a;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, La6/t;->e()Lb6/a;

    move-result-object p0

    iget-object p1, p0, Lb6/a;->c:[Ljava/lang/String;

    if-nez p1, :cond_a

    iget-object p1, p0, Lb6/a;->d:[Ljava/lang/String;

    :cond_a
    const/4 v0, 0x0

    if-eqz p1, :cond_16

    iget-object p0, p0, Lb6/a;->a:Lb6/a$a;

    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_17

    :cond_16
    move-object p1, v0

    :goto_17
    return-object p1
.end method
