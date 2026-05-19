.class public final Ld5/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld5/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld5/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Ljava/lang/reflect/Member;",
        ">",
        "Ljava/lang/Object;",
        "Ld5/f<",
        "TM;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInlineClassAwareCaller.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InlineClassAwareCaller.kt\nkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,219:1\n26#2:220\n1620#3,3:221\n*S KotlinDebug\n*F\n+ 1 InlineClassAwareCaller.kt\nkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller\n*L\n53#1:220\n94#1:221,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ld5/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld5/f<",
            "TM;>;"
        }
    .end annotation
.end field

.field public final b:Z

.field public final c:Ld5/i$a;


# direct methods
.method public constructor <init>(Li5/b;Ld5/f;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/b;",
            "Ld5/f<",
            "+TM;>;Z)V"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "caller"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ld5/i;->a:Ld5/f;

    iput-boolean p3, p0, Ld5/i;->b:Z

    invoke-interface {p1}, Li5/a;->getReturnType()Ly6/l0;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Ld5/j;->f(Ly6/l0;)Ljava/lang/Class;

    move-result-object p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p3, :cond_65

    const-string v4, "<this>"

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_29
    const-string v0, "box-impl"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-static {p3, p1}, Ld5/j;->d(Ljava/lang/Class;Li5/b;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p3, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v4, "{\n        getDeclaredMet…riptor).returnType)\n    }"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/NoSuchMethodException; {:try_start_29 .. :try_end_40} :catch_41

    goto :goto_66

    :catch_41
    new-instance p0, Lc5/n0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No box method found in inline class: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " (calling "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_65
    move-object v0, v2

    :goto_66
    invoke-static {p1}, Lk6/k;->a(Li5/a;)Z

    move-result p3

    if-eqz p3, :cond_79

    new-instance p1, Ld5/i$a;

    sget-object p2, Ly4/d;->d:Ly4/d;

    sget-object p2, Ly4/d;->e:Ly4/d;

    new-array p3, v3, [Ljava/lang/reflect/Method;

    invoke-direct {p1, p2, p3, v0}, Ld5/i$a;-><init>(Ly4/d;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    goto/16 :goto_18a

    :cond_79
    instance-of p3, p2, Ld5/g$g$c;

    const-string v4, "descriptor.containingDeclaration"

    const/4 v5, -0x1

    if-eqz p3, :cond_81

    goto :goto_a5

    :cond_81
    instance-of p3, p1, Li5/k;

    if-eqz p3, :cond_8a

    instance-of p2, p2, Ld5/e;

    if-eqz p2, :cond_a4

    goto :goto_a5

    :cond_8a
    invoke-interface {p1}, Li5/a;->I()Li5/r0;

    move-result-object p3

    if-eqz p3, :cond_a4

    instance-of p2, p2, Ld5/e;

    if-nez p2, :cond_a4

    invoke-interface {p1}, Li5/m;->b()Li5/l;

    move-result-object p2

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lk6/k;->b(Li5/l;)Z

    move-result p2

    if-eqz p2, :cond_a2

    goto :goto_a4

    :cond_a2
    move v5, v1

    goto :goto_a5

    :cond_a4
    :goto_a4
    move v5, v3

    :goto_a5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Li5/a;->L()Li5/r0;

    move-result-object p3

    if-eqz p3, :cond_b5

    invoke-interface {p3}, Li5/d1;->getType()Ly6/l0;

    move-result-object p3

    goto :goto_b6

    :cond_b5
    move-object p3, v2

    :goto_b6
    if-eqz p3, :cond_bc

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ff

    :cond_bc
    instance-of p3, p1, Li5/k;

    if-eqz p3, :cond_e5

    move-object p3, p1

    check-cast p3, Li5/k;

    invoke-interface {p3}, Li5/k;->Z()Li5/e;

    move-result-object p3

    const-string v4, "descriptor.constructedClass"

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Li5/i;->isInner()Z

    move-result v4

    if-eqz v4, :cond_ff

    invoke-interface {p3}, Li5/e;->b()Li5/l;

    move-result-object p3

    const-string v4, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Li5/e;

    invoke-interface {p3}, Li5/e;->m()Ly6/s0;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ff

    :cond_e5
    invoke-interface {p1}, Li5/m;->b()Li5/l;

    move-result-object p3

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v4, p3, Li5/e;

    if-eqz v4, :cond_ff

    invoke-static {p3}, Lk6/k;->b(Li5/l;)Z

    move-result v4

    if-eqz v4, :cond_ff

    check-cast p3, Li5/e;

    invoke-interface {p3}, Li5/e;->m()Ly6/s0;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ff
    :goto_ff
    invoke-interface {p1}, Li5/a;->g()Ljava/util/List;

    move-result-object p3

    const-string v4, "descriptor.valueParameters"

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_10c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_120

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li5/e1;

    invoke-interface {v4}, Li5/d1;->getType()Ly6/l0;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10c

    :cond_120
    iget-boolean p3, p0, Ld5/i;->b:Z

    if-eqz p3, :cond_12f

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, 0x20

    sub-int/2addr p3, v1

    div-int/lit8 p3, p3, 0x20

    add-int/2addr p3, v1

    goto :goto_130

    :cond_12f
    move p3, v3

    :goto_130
    instance-of v4, p1, Li5/x;

    if-eqz v4, :cond_13f

    move-object v4, p1

    check-cast v4, Li5/x;

    invoke-interface {v4}, Li5/x;->isSuspend()Z

    move-result v4

    if-eqz v4, :cond_13f

    move v4, v1

    goto :goto_140

    :cond_13f
    move v4, v3

    :goto_140
    add-int/2addr p3, v4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    invoke-static {p0}, Ld5/h;->a(Ld5/f;)I

    move-result p3

    if-ne p3, v4, :cond_18d

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {p3, v6}, Ly4/h;->e(II)Ly4/d;

    move-result-object p3

    new-array v6, v4, [Ljava/lang/reflect/Method;

    move v7, v3

    :goto_15d
    if-ge v7, v4, :cond_185

    iget v8, p3, Ly4/b;->a:I

    iget v9, p3, Ly4/b;->b:I

    if-gt v7, v9, :cond_169

    if-gt v8, v7, :cond_169

    move v8, v1

    goto :goto_16a

    :cond_169
    move v8, v3

    :goto_16a
    if-eqz v8, :cond_17f

    sub-int v8, v7, v5

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ly6/l0;

    invoke-static {v8}, Ld5/j;->f(Ly6/l0;)Ljava/lang/Class;

    move-result-object v8

    if-eqz v8, :cond_17f

    invoke-static {v8, p1}, Ld5/j;->d(Ljava/lang/Class;Li5/b;)Ljava/lang/reflect/Method;

    move-result-object v8

    goto :goto_180

    :cond_17f
    move-object v8, v2

    :goto_180
    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_15d

    :cond_185
    new-instance p1, Ld5/i$a;

    invoke-direct {p1, p3, v6, v0}, Ld5/i$a;-><init>(Ly4/d;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    :goto_18a
    iput-object p1, p0, Ld5/i;->c:Ld5/i$a;

    return-void

    :cond_18d
    new-instance p2, Lc5/n0;

    const-string p3, "Inconsistent number of parameters in the descriptor and Java reflection object: "

    invoke-static {p3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p0}, Ld5/h;->a(Ld5/f;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " != "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nCalling: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\nParameter types: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld5/i;->a()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")\nDefault: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Ld5/i;->b:Z

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ld5/i;->a:Ld5/f;

    invoke-interface {p0}, Ld5/f;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/lang/reflect/Member;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    iget-object p0, p0, Ld5/i;->a:Ld5/f;

    invoke-interface {p0}, Ld5/f;->b()Ljava/lang/reflect/Member;

    move-result-object p0

    return-object p0
.end method

.method public call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ld5/i;->c:Ld5/i$a;

    iget-object v1, v0, Ld5/i$a;->a:Ly4/d;

    iget-object v2, v0, Ld5/i$a;->b:[Ljava/lang/reflect/Method;

    iget-object v0, v0, Ld5/i$a;->c:Ljava/lang/reflect/Method;

    array-length v3, p1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "copyOf(this, size)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, v1, Ly4/b;->a:I

    iget v1, v1, Ly4/b;->b:I

    const/4 v5, 0x0

    if-gt v4, v1, :cond_41

    :goto_1e
    aget-object v6, v2, v4

    aget-object v7, p1, v4

    if-eqz v6, :cond_3a

    if-eqz v7, :cond_2d

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_3a

    :cond_2d
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "method.returnType"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lc5/w0;->e(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    :cond_3a
    :goto_3a
    aput-object v7, v3, v4

    if-eq v4, v1, :cond_41

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_41
    iget-object p0, p0, Ld5/i;->a:Ld5/f;

    invoke-interface {p0, v3}, Ld5/f;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz v0, :cond_57

    const/4 p1, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_56

    goto :goto_57

    :cond_56
    move-object p0, p1

    :cond_57
    :goto_57
    return-object p0
.end method

.method public getReturnType()Ljava/lang/reflect/Type;
    .registers 1

    iget-object p0, p0, Ld5/i;->a:Ld5/f;

    invoke-interface {p0}, Ld5/f;->getReturnType()Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method
