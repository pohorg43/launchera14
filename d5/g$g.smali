.class public abstract Ld5/g$g;
.super Ld5/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld5/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld5/g$g$f;,
        Ld5/g$g$d;,
        Ld5/g$g$e;,
        Ld5/g$g$c;,
        Ld5/g$g$a;,
        Ld5/g$g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld5/g<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Method;Z[Ljava/lang/reflect/Type;I)V
    .registers 6

    and-int/lit8 p3, p4, 0x2

    if-eqz p3, :cond_e

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p2

    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    :cond_e
    and-int/lit8 p3, p4, 0x4

    const/4 p4, 0x0

    if-eqz p3, :cond_1d

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p3

    const-string v0, "method.genericParameterTypes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1e

    :cond_1d
    move-object p3, p4

    :goto_1e
    invoke-direct {p0, p1, p2, p3, p4}, Ld5/g$g;-><init>(Ljava/lang/reflect/Method;Z[Ljava/lang/reflect/Type;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Z[Ljava/lang/reflect/Type;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 11

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object p4

    const-string v0, "method.genericReturnType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_10

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    goto :goto_11

    :cond_10
    const/4 p2, 0x0

    :goto_11
    move-object v3, p2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ld5/g;-><init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Ld5/g$g;->e:Z

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ld5/g;->a:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Method;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-boolean p0, p0, Ld5/g$g;->e:Z

    if-eqz p0, :cond_18

    sget-object p1, Lh4/z;->a:Lh4/z;

    :cond_18
    return-object p1
.end method
